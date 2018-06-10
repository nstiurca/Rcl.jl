# using Libdl

# TODO: handle missing values gracefully
const ROS_VERSION = VersionNumber(ENV["ROS_VERSION"])
const ROS_DISTRO = ENV["ROS_DISTRO"]

@assert ROS_VERSION >= v"2.0" "Only ROS 2.0 is supported by this package."
@assert ROS_DISTRO == "ardent" "Only ardent release is supported by this package."

struct ROS2Error <: Exception
    code :: Cint
    msg :: AbstractString
end

function init() :: LibRcl.rcl_ret_t
    allocator = LibRcl.rcl_get_default_allocator()
    LibRcl.rcl_init(Int32(0), C_NULL, allocator)
end

shutdown() :: LibRcl.rcl_ret_t = LibRcl.rcl_shutdown()

ok() :: Bool = LibRcl.rcl_ok()

instance_id() :: UInt64 = LibRcl.rcl_get_instance_id()