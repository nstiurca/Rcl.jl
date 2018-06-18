module TestRos2NodeBase

using ROS2
import ROS2.LibRcl
using Test

@testset "Node init and fini" begin
    # initialize
    @assert !ROS2.ok()
    ROS2.init()
    @assert ROS2.ok()

    nb = ROS2.NodeBase("test_node")
    @test ROS2.isvalid(nb)

    # @show which(ROS2.finalize, (ROS2.NodeBase,))
    ROS2.finalize(nb)
    # finalizing it shouldn't cause errors
    @test !ROS2.LibRcl.rcutils_error_is_set()
    # But checking if the node is still valid apparently does set the error
    # TODO: file a bug about this with the rcl folks?
    @test !ROS2.isvalid(nb)
    @test ROS2.LibRcl.rcutils_error_is_set()
    # The error was expected so reset it
    LibRcl.rcutils_reset_error()

    # shutdown
    @assert ROS2.ok()
    ROS2.shutdown()
    @assert !ROS2.ok()
end

end # module TestRos2Base
