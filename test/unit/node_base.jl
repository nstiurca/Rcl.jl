module TestRclNodeBase

using Rcl
import Rcl.internal: rcutils_error_is_set, rcutils_reset_error
using Test

@testset "Node init and fini" begin
    # initialize
    @assert !rcl.ok()
    rcl.init()
    @assert rcl.ok()

    nb = rcl.NodeBase("test_node")
    @test rcl.isvalid(nb)

    # @show which(rcl.finalize, (rcl.NodeBase,))
    rcl.finalize(nb)
    # finalizing it shouldn't cause errors
    @test !rcutils_error_is_set()
    # But checking if the node is still valid apparently does set the error
    # TODO: file a bug about this with the rcl folks?
    @test !rcl.isvalid(nb)
    @test rcutils_error_is_set()
    # The error was expected so reset it
    rcutils_reset_error()

    # shutdown
    @assert rcl.ok()
    rcl.shutdown()
    @assert !rcl.ok()
end

end # module TestRclBase
