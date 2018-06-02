module TestRos2Base

using ROS2
using Test

@testset "init and shutdown" begin
    # uninitialized
    @test ROS2.ok() == false
    @test ROS2.instance_id() == 0

    # initialize
    ROS2.init()
    @test ROS2.ok() == true
    @test ROS2.instance_id() != 0

    # shut down
    ROS2.shutdown()
    @test ROS2.ok() == false
    @test ROS2.instance_id() == 0
end

end # module TestRos2Base
