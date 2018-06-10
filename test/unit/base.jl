module TestRos2Base

using ROS2
using Test

@testset "init and shutdown" begin
    # uninitialized
    @test ROS2.ok() == false
    @test ROS2.instance_id() == 0

    # initialize
    ret = ROS2.init()
    @test ret == ROS2.LibRcl.RCL_RET_OK
    @test ROS2.ok() == true
    @test ROS2.instance_id() != 0

    # shut down
    ret = ROS2.shutdown()
    @test ret == ROS2.LibRcl.RCL_RET_OK
    @test ROS2.ok() == false
    @test ROS2.instance_id() == 0

    # init again
    ret = ROS2.init()
    @test ret == ROS2.LibRcl.RCL_RET_OK
    @test ROS2.ok() == true
    @test ROS2.instance_id() != 0

    # shut down again
    ret = ROS2.shutdown()
    @test ret == ROS2.LibRcl.RCL_RET_OK
    @test ROS2.ok() == false
    @test ROS2.instance_id() == 0
end

end # module TestRos2Base
