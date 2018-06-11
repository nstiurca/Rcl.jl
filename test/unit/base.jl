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

    # init again
    ROS2.init()
    @test ROS2.ok() == true
    @test ROS2.instance_id() != 0

    # shut down again
    ROS2.shutdown()
    @test ROS2.ok() == false
    @test ROS2.instance_id() == 0

    @testset "double init/shutdown exceptions" begin
        # uninitialized
        @test !ROS2.ok()

        # Initialize
        ROS2.init()
        @test ROS2.ok()

        # Try to initialize again
        @test_throws ROS2.RclError ROS2.init()

        # Still initialized
        @test ROS2.ok()

        # shutdown
        ROS2.shutdown()
        @test !ROS2.ok()

        # Try to shut down again
        @test_throws ROS2.RclError ROS2.shutdown()
        @test !ROS2.ok()
    end
end

end # module TestRos2Base
