using Clang

include("../src/find_ros2.jl")

isheader(header) = occursin(r".+\.(h|hpp)$", header)

function wrap_roslib(lib::AbstractString)
    lib_include = joinpath(ROS_INCLUDE_PATH, lib)
    lib_headers = String[]
    for (root, dirs, files) in walkdir(lib_include)
        for file in files
            if isheader(file)
                push!(lib_headers, joinpath(lib_include, root, file))
            end
        end
    end

    wc = init(; headers = lib_headers,
                output_file = joinpath(@__DIR__, "lib$(lib)_api.jl"),
                common_file = joinpath(@__DIR__, "lib$(lib)_common.jl"),
                clang_includes = vcat(lib_include, CLANG_INCLUDE),
                clang_args = ["-I", ROS_INCLUDE_PATH],
                header_wrapped = (root, current)->root == current,
                header_library = x->"lib$lib",
                clang_diagnostics = true,
                )

    run(wc)
end

wrap_roslib.(WRAPPED_ROS2_LIBS)
