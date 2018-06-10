# Julia 0.6 for now

# Based heavily on CUFFT.jl/gen/wrap_cufft.jl
# https://github.com/JuliaArchive/CUFFT.jl/blob/master/gen/wrap_cufft.jl

using Clang, Clang.cindex
# We'll replace some of the wrap functions, and we need to call the following:
import Clang.wrap_c: repr_jl, rep_type, rep_args, name_safe

const ROS_DISTRO = ENV["ROS_DISTRO"]
@assert ROS_DISTRO == "ardent"  # the only available version of ROS2 for now
const AMENT_PREFIX_PATH = ENV["AMENT_PREFIX_PATH"]
const ROS_INCLUDE_PATH = joinpath(AMENT_PREFIX_PATH, "include")


# for (lib, hdr) in (("rmw", "rmw.h"), ("rcutils", "allocator.h"), ("rcl", "rcl.h"))
for (lib, hdr) in (("rcl", "rcl.h"),)
    context = wrap_c.init(output_file="gen_lib$lib.jl",
                        common_file="gen_lib$(lib)_h.jl",
                        # header_library = header_fname -> begin
                        #     rp = relpath(header_fname, ROS_INCLUDE_PATH)
                        #     "lib$(split(rp, '/')[1])"
                        # end,
                        header_library = _ -> "lib$lib",

                        clang_includes=[
                            "/opt/ros/ardent/include",
                            "/usr/include",
                            "/usr/lib/llvm-3.9/lib/clang/3.9.1/include"],
                        header_wrapped = (header_file, cursor_name) -> (
                            contains(header_file, ROS_DISTRO))
                        )

    context.options = wrap_c.InternalOptions(true, false)  # wrap structs, too
    context.headers = [joinpath(ROS_INCLUDE_PATH, lib, hdr)]
    run(context)
end


# Customize the wrap function for functions. This was copied
# from Clang/src/wrap_c.jl, with the following customizations:
#   - error-check each function that returns a rcl_ret_t
#   - omit types from function prototypes
function wrap_c.wrap(buf::IO, funcdecl::FunctionDecl, libname::String)
    isascii(libname) || error("Unsupported libname: \"$libname\" has non-ASCII characters")
    function print_args(buf::IO, cursors, types)
        i = 1
#        for (c,t) in zip(cursors,types)
#            print(buf, name_safe(c), "::", t)
#            (i < length(cursors)) && print(buf, ", ")
#            i += 1
#        end
        for c in cursors
            print(buf, name_safe(c))
            (i < length(cursors)) && print(buf, ", ")
            i += 1
        end
    end

    cu_spelling = spelling(funcdecl)
    
    funcname = spelling(funcdecl)
    arg_types = cindex.function_args(funcdecl)
    args = [x for x in search(funcdecl, ParmDecl)]
    arg_list = tuple( [repr_jl(x) for x in arg_types]... )
    ret_type = repr_jl(return_type(funcdecl))

    print(buf, "function ")
    print(buf, spelling(funcdecl))
    print(buf, "(")
    print_args(buf, args, [repr_jl(x) for x in arg_types])
    println(buf, ")")
    print(buf, "  ")
    ret_type == "$(lib)_ret_t" && print(buf, "checkerror(")
    print(buf, "ccall( (:", funcname, ", ", libname, "), ")
    print(buf, rep_type(ret_type))
    print(buf, ", ")
    print(buf, rep_args(arg_list), ", ")
    for (i,arg) in enumerate(args)
        print(buf, name_safe(arg))
        (i < length(args)) && print(buf, ", ")
    end
    ret_type == "$(lib)_ret_t" && print(buf, ")")
    println(buf, ")")
    println(buf, "end")
end

# wrap_c.wrap_c_headers(context, context.headers)