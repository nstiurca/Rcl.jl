# TODO: handle missing values gracefully

const ROS_VERSION = VersionNumber(ENV["ROS_VERSION"])
const ROS_DISTRO = ENV["ROS_DISTRO"]

@assert ROS_VERSION >= v"2.0" "Only ROS 2.0 is supported by this package."
@assert ROS_DISTRO == "ardent"  # the only available version of ROS2 for now

const AMENT_PREFIX_PATH = ENV["AMENT_PREFIX_PATH"]
const ROS_INCLUDE_PATH = joinpath(AMENT_PREFIX_PATH, "include")
const ROS_LIB_PATH = joinpath(AMENT_PREFIX_PATH, "lib")
