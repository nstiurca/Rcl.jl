# module FinalizeSanity

const foo_t_init_count = Ref{Int}(0)
const foo_t_fini_count = Ref{Int}(0)
const foo_init_count = Ref{Int}(0)
const foo_fini_count = Ref{Int}(0)

mutable struct foo_t
    impl::Ptr{Cvoid}
    foo_t() = begin
        foo_t_init_count[]++
        new(Ptr{Cvoid}())
    end
end

mutable struct Foo
    foo :: Ref{foo_t}
    # Foo() = begin
        # foo = Ref(foo_t())
        # foo_init_count[]++
        # new(foo)
    # end
end

# Base.finalize(f::Ref{foo_t}) = begin
#     foo_t_fini_count[]++
#     nothing
# end

# Base.finalize(f::Foo) = begin
#     foo_fini_count[]++
#     nothing
# end

# end # module FinalizeSanity



# module TestFinalizeSanity

# # using .FinalizeSanity
using Test

@testset "Finalize sanity" begin
    @testset "finalize" begin
        f1 = foo_t()
    end

    @testset "garbage collect" begin

    end
end # @testset "Finalize sanity"

# end # module TestFinalizeSanity