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
foreach(names(@__MODULE__, all=true)) do s
   if occursin(r"^(rcl|rcutils|rosidl)_", string(s))
       @eval export $s
   end
end

struct RclError <: Exception
    code :: Cint
    msg :: AbstractString
end

struct RcutilsErrorState <: Exception
    message :: String
    file :: String
    line_number :: Int
end

# Base.show(io::IO, err::RclError) = print(io, "RclError($(err.code), \"$(err.msg)\")")

@inline function fixed_size_string(s::T, field_idx, expected_field_name) where T
    U = fieldtype(T, field_idx)
    @assert fieldname(T, field_idx) == expected_field_name fieldname(T, field_idx)
    @assert U <: NTuple U
    @assert eltype(U) == Cchar eltype(U)
    ptr = Ptr{Cchar}(pointer_from_objref(s) + fieldoffset(T, field_idx))
    len = ccall(:strnlen, Csize_t, (Cstring, Csize_t), ptr, U.size)
    unsafe_string(ptr, len)
end

Base.string(err_str::rcutils_error_string_t) = fixed_size_string(err_str, 1, :str)
Base.show(io::IO, err_str::rcutils_error_string_t) = print(io, "$(typeof(err_str))(\"$(string(err_str))\")")

message(err_state::rcutils_error_state_t) = fixed_size_string(err_str, 1, :message)
file(err_state::rcutils_error_state_t) = fixed_size_string(err_str, 2, :file)
line_number(err_state::rcutils_error_state_t) = Int(err_state.line_number)

Base.convert(::Type{RcutilsErrorState}, err_state::rcutils_error_state_t) = RcutilsErrorState(
    message(err_state), file(err_state), line_number(err_state)
)

Base.show(io::IO, err_state::rcutils_error_state_t) = show(io, convert(RcutilsErrorState, err_state))

function checkcall(code :: rcl_ret_t; suppress_throw=false)
    code == RCL_RET_OK && return nothing

    msg = rcutils_get_error_string()
    str = string(msg)
    err = RclError(code, str)

    rcutils_reset_error()

    suppress_throw || throw(err)
    err
end

export RclError, checkcall

end # module
