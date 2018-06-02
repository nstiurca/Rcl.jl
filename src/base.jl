using Libdl

# TODO: handle missing values gracefully
const ROS_VERSION = VersionNumber(ENV["ROS_VERSION"])
const ROS_DISTRO = ENV["ROS_DISTRO"]

@assert ROS_VERSION == v"2.0" "Only ROS 2.0 is supported by this package."
@assert ROS_DISTRO == "ardent" "Only ardent release is supported by this package."


macro load_lib_symbols(lib::AbstractString, syms...)
    # @show syms

    lib_names = ["lib$lib.$(Libdl.dlext)", "lib$lib.so"]
    LIB_NAME = Symbol("$(uppercase(lib))_LIB_NAME")
    LIB = Symbol("$(uppercase(lib))_LIB")

    expr = quote
        # TODO: also search /opt/ros/$ROS_DISTRO, etc.
        const $LIB_NAME = find_library($lib_names)
        if isempty($LIB_NAME)
            # touch this file so that after the user properly built the library,
            # the precompiled ROS2.ji will be re-compiled to get $LIB_NAME working properly
            touch(@__FILE__)
            error("Cannot find or load library $lib.")
        else
            include_dependency($LIB_NAME)
        end

        const $LIB = dlopen($LIB_NAME)
    end

    @show "INITIAL EXPRESSION"
    @show expr
    # return expr
    @show "================"

    syms = map(syms) do sym
        :(const $(sym.value) = dlsym($LIB, $sym))
    end

    # for sym in syms
    #     @show sym, typeof(sym), sym.value
    #     sym2 = sym.value
    #     sym_expr = :(const $sym2 = dlsym($LIB, $sym))
    #     Meta.@dump sym_expr
    #     push!(expr.args, sym_expr)
    # end

    @show "FINAL EXPRESSION"
    @show expr
    @show syms
    @show "====================="

    return expr
end

@load_lib_symbols("rcl",
    :rcl_init,
    :rcl_shutdown,
    :rcl_get_instance_id,
    :rcl_ok,
)


@show RCL_LIB
@show rcl_ok

# @load_lib_symbols "rcutils" begin
#     rcutils_get_zero_initialized_allocator
#     rcutils_get_default_allocator
#     rcutils_allocator_is_valid
# end



# Apparently Julia doesn't define a Cbool, but _Bool has existed since C99,
# and most every C compiler accepts bool as a primitive type as well.
const Cbool = Cuchar

# Based on rclutils_ret.h
# TODO: Use Clang.wrap_c to auto-generate this stuff
const rcutils_ret_t = Cint
@enum RCUTILS_RET::rcutils_ret_t begin
    RCUTILS_RET_OK = 0
    RCUTILS_RET_WARN = 1
    RCUTILS_RET_ERROR = 2

    RCUTILS_RET_BAD_ALLOC = 10
    RCUTILS_RET_INVALID_ARGUMENT = 11
    RCUTILS_RET_NOT_ENOUGH_SPACE = 12

    RCUTILS_RET_STRING_MAP_ALREADY_INIT = 30
    RCUTILS_RET_STRING_MAP_INVALID = 31
    RCUTILS_RET_STRING_KEY_NOT_FOUND = 32

    RCUTILS_RET_LOGGING_SEVERITY_MAP_INVALID = 40
end

# Based on rcutils/allocator.h
# TODO: Use Clang.wrap_c to auto-generate this stuff
struct rcutils_allocator_t
    allocate :: Ptr{Cvoid}
    deallocate :: Ptr{Cvoid}
    reallocate :: Ptr{Cvoid}
    zero_allocate :: Ptr{Cvoid}
    state :: Ptr{Cvoid}
end
@assert rcutils_allocator_t.isbitstype

# Based on rmw/types.h
# TODO: Use Clang.wrap_c to auto-generate this stuff
const rmw_ret_t = Cint
@enum RMW_RET::rmw_ret_t begin
    RMW_RET_OK = 0
    RMW_RET_ERROR = 1
    RMW_RET_TIMEOUT = 2

    RMW_RET_BAD_ALLOC = 10
    RMW_RET_INVALID_ARGUMENT = 11
end

# rcl/allocator.h aliases some things from rcutils
const rcutils_get_default_allocator = nothing
const rcl_allocator_t = rcutils_allocator_t
const rcl_get_default_allocator = rcutils_get_default_allocator
# rcl/types.h aliases some more things
const rcl_ret_t = rmw_ret_t
@enum RCL_RET::rcl_ret_t begin
    RCL_RET_OK = rcl_ret_t(RMW_RET_OK)
    RCL_RET_ERROR =  rcl_ret_t(RMW_RET_ERROR)
    RCL_RET_TIMEOUT = rcl_ret_t(RMW_RET_TIMEOUT)
    RCL_RET_BAD_ALLOC = rcl_ret_t(RMW_RET_BAD_ALLOC)
    RCL_RET_INVALID_ARGUMENT = rcl_ret_t(RMW_RET_INVALID_ARGUMENT)

    RCL_RET_ALREADY_INIT = 100
    RCL_RET_NOT_INIT = 101
    RCL_RET_MISMATCHED_RMW_ID = 102
    RCL_RET_TOPIC_NAME_INVALID = 103
    RCL_RET_SERVICE_NAME_INVALID = 104
    RCL_RET_UNKNOWN_SUBSTITUTION = 105

    # TODO: RCL_RET_NODE_*
    # TODO: RCL_RET_PUBLISHER_*
    # TODO: RCL_RET_SUBSCRIPTION_*
    # TODO: RCL_RET_CLIENT_*
    # TODO: RCL_RET_SERVICE_*
    # TODO: RCL_RET_TIMER_*
    # TODO: RCL_RET_WAIT_*
end

struct ROS2Error <: Exception
    code :: Cint
    msg :: AbstractString
end

function init()
    allocator = ccall(rcl_get_default_allocator, rcl_allocator_t, ())
    ret = ccall(rcl_init, rcl_ret_t, (Cint, Ptr{Cstring}, rcl_allocator_t), 0, C_NULL, allocator)
end

function shutdown() end

ok() :: Bool = ccall(rcl_ok, Cbool, ())

instance_id() :: UInt64 = ccall(rcl_get_instance_id, UInt64, ())