# module TestRclNodeBase

using Rcl
import Rcl.internal: rcutils_error_is_set, rcutils_reset_error
using Test

@testset "Node" begin
    # initialize
    @test !rcl.ok()
    rcl.init()
    @test rcl.ok()

    nb = rcl.NodeBase("test_node")
    @test rcl.isvalid(nb)

    # finalizing it shouldn't cause errors
    finalize(nb)
    @test !rcutils_error_is_set()

    # But checking if the node is still valid apparently does set the error
    # TODO: file a bug about this with the rcl folks?
    @test !rcl.isvalid(nb)
    @test rcutils_error_is_set()
    # The error was expected so reset it
    rcutils_reset_error()
    @test !rcutils_error_is_set()

    # shutdown
    @test rcl.ok()
    rcl.shutdown()
    @test !rcl.ok()
end

# end # module TestRclBase
nothing
