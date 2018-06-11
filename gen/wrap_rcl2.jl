# Julia 0.6 for now

# Based heavily on CUFFT.jl/gen/wrap_cufft.jl
# https://github.com/JuliaArchive/CUFFT.jl/blob/master/gen/wrap_cufft.jl

using Clang, Clang.cindex
# We'll replace some of the wrap functions, and we need to call the following:
import Clang.wrap_c: repr_jl, rep_type, rep_args, name_safe

include("../src/find_ros2.jl")


clang_includes=[
    ROS_INCLUDE_PATH,
    "/usr/include",
    "/usr/lib/llvm-3.9/lib/clang/3.9.1/include",    # stdbool.h
]

function header_wrapped(header_file, cursor_name)
    @show header_file, cursor_name
    return startswith(header_file, ROS_INCLUDE_PATH) &&
        (startswith(cursor_name, "rcl_") || startswith(cursor_name, "rmw_") || startswith(cursor_name, "rcutils_"))
end

# TODO: figure out the Void -> Cvoid conversion to eliminate deprecation warnings

context = wrap_c.init(
    output_file="gen_librcl.jl",
    common_file="gen_librcl_h.jl",
    clang_includes=clang_includes,
    header_wrapped = (header_file, cursor_name) -> startswith(cursor_name, ROS_INCLUDE_PATH),
    header_library = header_file -> "lib$(dirname(relpath(header_file, ROS_INCLUDE_PATH)))",
)

context.headers = [
    joinpath(ROS_INCLUDE_PATH, "rcutils", "allocator.h"),
    joinpath(ROS_INCLUDE_PATH, "rcutils", "error_handling.h"),
    joinpath(ROS_INCLUDE_PATH, "rcl", "rcl.h"),
    ]
run(context)