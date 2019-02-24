# module TestRclNodeBase

using Rcl
import Rcl.internal: rcutils_error_is_set, rcutils_reset_error
using Test

@testset "node base" begin
    # initialize
    @test !rcl.ok()
    rcl.init()
    @test rcl.ok()

    @test !rcutils_error_is_set()
    nb = rcl.NodeBase("test_node")
    @test rcl.isvalid(nb)

    @test name(nb) == "test_node"
    @test namespace(nb) == "/"

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

    @testset "name and namspace" begin
        foo_node = rcl.NodeBase("foo", "foo_ns")
        @test name(foo_node) == "foo"
        @test namespace(foo_node) == "/foo_ns"

        bar_node = rcl.NodeBase("bar", "/biz/baz")
        @test name(bar_node) == "bar"
        @test namespace(bar_node) == "/biz/baz"

        finalize(foo_node)
        finalize(bar_node)
    end

    # shutdown
    @test rcl.ok()
    rcl.shutdown()
    @test !rcl.ok()
end

# end # module TestRclBase
nothing
