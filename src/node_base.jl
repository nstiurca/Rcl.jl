import ..internal
mutable struct NodeBase
    rcl_node::internal.rcl_node_t

    NodeBase(node_name, namespace) = begin
        rcl_node = internal.rcl_get_zero_initialized_node()

        default_options = internal.rcl_node_get_default_options()
        # allocator = internal.rcl_get_default_allocator()
        # @assert internal.rcutils_allocator_is_valid(pointer_from_objref(allocator))
        # @async @show allocator
        # options = internal.rcl_node_options_t(internal.RCL_NODE_OPTIONS_DEFAULT_DOMAIN_ID, allocator)
        # @assert internal.rcutils_allocator_is_valid(pointer_from_objref(options.allocator))

        # @show allocator
        # @show options
        # @show default_options
        rcl_node_handle = pointer_from_objref(rcl_node)
        default_options_handle = pointer_from_objref(default_options)
        internal.checkcall(internal.rcl_node_init(rcl_node_handle, node_name, namespace, default_options_handle))

        new(rcl_node)
    end
end

NodeBase(node_name) = NodeBase(node_name, "")
# Base.finalize(rcl_node::internal.rcl_node_t) = internal.checkcall(internal.rcl_node_fini(pointer_from_objref(rcl_node)); suppress_throw=true)
# Base.finalize(nb::NodeBase) = finalize(nb.rcl_node)

mutable struct CallbackGroup
end

function name(nb::NodeBase) end
function namespace(nb::NodeBase) end
function context(nb::NodeBase) end
# function rcl_node_handle(nb::NodeBase) end
function CallbackGroup(nb::NodeBase) end
function default_callback_group(nb::NodeBase) end
import Base: in, isvalid
function in(cg::CallbackGroup, nb::NodeBase) end
isvalid(nb::NodeBase) = internal.rcl_node_is_valid(pointer_from_objref(nb.rcl_node), C_NULL)
function callback_groups(nb::NodeBase) end
function callback_groups!(cbs, nb::NodeBase) end
function associated_with_executor_atomic(nb::NodeBase) :: Threads.Atomic{Bool} end
function get_notify_guard_condition(nb::NodeBase) end
function acquire_notify_guard_condition_lock(nb::NodeBase) end
