module LibRcl

# import Libdl

include("../src/find_ros2.jl")

# # Load in `deps.jl`, complaining if it does not exist
# const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
# if !isfile(depsjl_path)
#     error("LibXXX was not build properly. Please run Pkg.build(\"LibXXX\").")
# end
# include(depsjl_path)
# # Module initialization function
# function __init__()
#     check_deps()
# end

using CEnum

include("ctypes.jl")
# export Ctm, Ctime_t, Cclock_t
const SIZE_MAX = ~Csize_t(0)

for lib in WRAPPED_ROS2_LIBS
    @info "Loading types and API for library $lib"
    include(joinpath(@__DIR__, "lib$(lib)_common.jl"))
    include(joinpath(@__DIR__, "lib$(lib)_api.jl"))
end

# export everything
#foreach(names(@__MODULE__, all=true)) do s
#    if startswith(string(s), "SOME_PREFIX")
#        @eval export $s
#    end
#end

# dynamically load the ROS2 libraries
# const librmw = find_library(["librmw.$dlext"])
# const librcl = find_library(["librcl.$dlext"])
# const librcutils = find_library(["librcutils.$dlext"])

# const librmw = dlopen(librmw_path)
# const librcutils = dlopen(librcutils_path)
# const librcl = dlopen(librcl_path)

# include the auto-gen-ed wrappers for the C functions/structs/constants
# include("gen_librcl_h.jl")
# include("gen_librcl.jl")

struct RclError <: Exception
    code :: Cint
    msg :: AbstractString
end

function checkcall(code :: rcl_ret_t; suppress_throw=false)
    code == RCL_RET_OK && return nothing

    msg = rcutils_get_error_string()
    @assert msg != Cstring(C_NULL)
    err = RclError(code, unsafe_string(msg))

    rcutils_reset_error()

    suppress_throw || throw(err)
    err
end

end # module
