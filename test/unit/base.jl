# module TestRclBase

using Rcl
using Test

@testset "init and shutdown" begin
    # uninitialized
    @test rcl.ok() == false
    @test rcl.instance_id() == 0

    # initialize
    rcl.init()
    @test rcl.ok() == true
    @test rcl.instance_id() != 0

    # shut down
    rcl.shutdown()
    @test rcl.ok() == false
    @test rcl.instance_id() == 0

    # init again
    rcl.init()
    @test rcl.ok() == true
    @test rcl.instance_id() != 0

    # shut down again
    rcl.shutdown()
    @test rcl.ok() == false
    @test rcl.instance_id() == 0

    @testset "double init/shutdown exceptions" begin
        # uninitialized
        @test !rcl.ok()

        # Initialize
        rcl.init()
        @test rcl.ok()

        # Try to initialize again
        @test_throws RclError rcl.init()

        # Still initialized
        @test rcl.ok()

        # shutdown
        rcl.shutdown()
        @test !rcl.ok()

        # Try to shut down again
        @test_throws RclError rcl.shutdown()
        @test !rcl.ok()
    end
end

# end # module TestRclBase
nothing