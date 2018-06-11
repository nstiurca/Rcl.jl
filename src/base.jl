
struct RclError <: Exception
    code :: Cint
    msg :: AbstractString
end

function checkcall(code :: LibRcl.rcl_ret_t)
    code == LibRcl.RCL_RET_OK && return nothing

    msg = LibRcl.rcutils_get_error_string()
    @assert msg != Cstring(C_NULL)
    err = RclError(code, unsafe_string(msg))

    LibRcl.rcutils_reset_error()

    throw(err)
end

function init()
    allocator = LibRcl.rcl_get_default_allocator()
    checkcall(LibRcl.rcl_init(Int32(0), C_NULL, allocator))
end

shutdown() = checkcall(LibRcl.rcl_shutdown())

ok() :: Bool = LibRcl.rcl_ok()

instance_id() :: UInt64 = LibRcl.rcl_get_instance_id()