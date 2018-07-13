using Rcl
using Test

# run test in the whole directory, latest modified files
# are run first, this makes waiting time shorter when writing
# or modifying unit-tests
function run_tests(dir)
    files = readdir(dir)

    filter!(files) do x
        occursin(r".*\.jl$", x)
    end

    sort!(files; by = fn -> stat(joinpath(dir, fn)).mtime, rev = true)

    map(files) do file
        include(joinpath(dir, file))
    end
end


@testset "Rcl Test" begin
    run_tests(joinpath(dirname(@__FILE__), "unit"))
end
