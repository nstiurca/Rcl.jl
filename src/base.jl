using Libdl

const rcl_ret_t = Cint
const Cbool = Cuchar

struct ROS2Error <: Exception
    code :: rcl_ret_t
    msg :: AbstractString
end

# TODO: handle missing values gracefully
const ROS_VERSION = VersionNumber(ENV["ROS_VERSION"])
const ROS_DISTRO = ENV["ROS_DISTRO"]

@assert ROS_VERSION == v"2.0" "Only ROS 2.0 is supported by this package."
@assert ROS_DISTRO == "ardent" "Only ardent release is supported by this package."

# TODO: also search /opt/ros/$ROS_DISTRO, etc.
const RCL_LIB_NAME = find_library(["librcl.$(Libdl.dlext)", "librcl.so"])

if isempty(RCL_LIB_NAME)
    # touch this file so that after the user properly built librcl,
    # the precompiled ROS2.ji will be re-compiled to get RCL_LIB working properly
    touch(@__FILE__)
    error("Cannot find or load librcl.")
else
    include_dependency(RCL_LIB_NAME)
end

const RCL_LIB = dlopen(RCL_LIB_NAME)
const rcl_init = dlsym(RCL_LIB, :rcl_init)
const rcl_shutdown = dlsym(RCL_LIB, :rcl_shutdown)
const rcl_get_instance_id = dlsym(RCL_LIB, :rcl_get_instance_id)
const rcl_ok = dlsym(RCL_LIB, :rcl_ok)

function init() end
function shutdown() end

ok() :: Bool = ccall(rcl_ok, Cbool, ())

instance_id() :: UInt64 = ccall(rcl_get_instance_id, UInt64, ())