mutable struct NodeBase
    rcl_node_handle::Ref{LibRcl.rcl_node_t}

    NodeBase(node_name, namespace) = begin
        rcl_node = Ref(LibRcl.rcl_get_zero_initialized_node())
        # finalizer(node -> checkcall(LibRcl.rcl_node_fini(node)), rcl_node)

        default_options = Ref(LibRcl.rcl_node_get_default_options())

        checkcall(LibRcl.rcl_node_init(rcl_node, node_name, namespace, default_options))

        new(rcl_node)
    end
end

NodeBase(node_name) = NodeBase(node_name, "")
# TODO: figure out how to have this called automagically
finalize(nb::NodeBase) = checkcall(LibRcl.rcl_node_fini(nb.rcl_node_handle))

mutable struct CallbackGroup
end

function name(nb::NodeBase) end
function namespace(nb::NodeBase) end
function context(nb::NodeBase) end
function rcl_node_handle(nb::NodeBase) end
function CallbackGroup(nb::NodeBase) end
function default_callback_group(nb::NodeBase) end
import Base: in, isvalid
function in(cg::CallbackGroup, nb::NodeBase) end
isvalid(nb::NodeBase) = LibRcl.rcl_node_is_valid(nb.rcl_node_handle, C_NULL)
function callback_groups(nb::NodeBase) end
function callback_groups!(cbs, nb::NodeBase) end
function associated_with_executor_atomic(nb::NodeBase) :: Threads.Atomic{Bool} end
function get_notify_guard_condition(nb::NodeBase) end
function acquire_notify_guard_condition_lock(nb::NodeBase) end

