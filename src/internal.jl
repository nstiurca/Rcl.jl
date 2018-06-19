using Libdl

# Define a few things that the Clang wrapper doesn't quite take care of for us
function rcutils_get_default_allocator end
function rcutils_reallocf end
const SIZE_MAX = ~Csize_t(0)
# const __WCHAR_MIN = Cwchar_t <: Unsigned ? Cwchar_t(0) : ~Cwchar_t(0)
# const __WCHAR_MAX = Cwchar_t <: Unsigned ? ~Cwchar_t(0) : Cwchar_t(~0) >>> 1
RCUTILS_S_TO_NS( seconds ) = ( seconds * ( 1000 * 1000 * 1000 ) ) # Convenience macro to convert milliseconds to nanoseconds.
RCUTILS_MS_TO_NS( milliseconds ) = ( milliseconds * ( 1000 * 1000 ) ) # Convenience macro to convert microseconds to nanoseconds.
RCUTILS_US_TO_NS( microseconds ) = ( microseconds * 1000 ) # Convenience macro to convert nanoseconds to seconds.
RCUTILS_NS_TO_S( nanoseconds ) = ( nanoseconds ÷ ( 1000 * 1000 * 1000 ) ) # Convenience macro to convert nanoseconds to milliseconds.
RCUTILS_NS_TO_MS( nanoseconds ) = ( nanoseconds ÷ ( 1000 * 1000 ) ) # Convenience macro to convert nanoseconds to microseconds.
RCUTILS_NS_TO_US( nanoseconds ) = ( nanoseconds ÷ 1000 ) # A single point in time, measured in nanoseconds since the Unix epoch.
const RCUTILS_WARN_UNUSED = nothing
# const __locale_t = Cstring  # HACK: the autogen creates stubs for string manipulation functions that we don't actually want/nede, and it needs this to defined


# dynamically load the ROS2 libraries
include("find_ros2.jl")
const locations = [ROS_LIB_PATH]

const librmw = find_library(["librmw.$dlext"], locations)
const librcl = find_library(["librcl.$dlext"], locations)
const librcutils = find_library(["librcutils.$dlext"], locations)

# const librmw = dlopen(librmw_path)
# const librcutils = dlopen(librcutils_path)
# const librcl = dlopen(librcl_path)

# include the auto-gen-ed wrappers for the C functions/structs/constants
include("gen_librcl_h.jl")
include("gen_librcl.jl")

struct RclError <: Exception
    code :: Cint
    msg :: AbstractString
end

function checkcall(code :: rcl_ret_t)
    code == RCL_RET_OK && return nothing

    msg = rcutils_get_error_string()
    @assert msg != Cstring(C_NULL)
    err = RclError(code, unsafe_string(msg))

    rcutils_reset_error()

    throw(err)
end
