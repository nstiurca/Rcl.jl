import ..internal
function init()
    allocator = internal.rcl_get_default_allocator()
    internal.checkcall(internal.rcl_init(Int32(0), C_NULL, allocator))
end

shutdown() = internal.checkcall(internal.rcl_shutdown())

ok() :: Bool = internal.rcl_ok()

instance_id() :: UInt64 = internal.rcl_get_instance_id()

function fini end