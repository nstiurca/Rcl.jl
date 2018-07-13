############################################
## Find the libraries
############################################
using Libdl
const locations = ["/opt/ros/ardent/lib"]

const librmw = find_library(["librmw.so"], locations)
const librcl = find_library(["librcl.so"], locations)
const librcutils = find_library(["librcutils.so"], locations)

############################################
## Wrap the relevant parts of the library
############################################

const RMW_RET_OK = 0
const RCL_RET_OK = RMW_RET_OK
const SIZE_MAX = ~Csize_t(0)
const RCL_NODE_OPTIONS_DEFAULT_DOMAIN_ID = SIZE_MAX

const rmw_ret_t = Cint
const rcl_ret_t = rmw_ret_t


mutable struct rcutils_allocator_t
    allocate::Ptr{Cvoid}
    deallocate::Ptr{Cvoid}
    reallocate::Ptr{Cvoid}
    zero_allocate::Ptr{Cvoid}
    state::Ptr{Cvoid}
end
const rcl_allocator_t = rcutils_allocator_t

mutable struct rcl_node_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_node_options_t
    domain_id::Csize_t
    allocator::rcl_allocator_t
end


function rcutils_get_default_allocator()
    ccall((:rcutils_get_default_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_get_error_string()
    ccall((:rcutils_get_error_string, librcutils), Cstring, ())
end

function rcl_init(argc::Cint, argv, allocator::rcl_allocator_t)
    ccall((:rcl_init, librcl), rcl_ret_t, (Cint, Ptr{Cstring}, rcl_allocator_t), argc, argv, allocator)
end
function rcl_shutdown()
    ccall((:rcl_shutdown, librcl), rcl_ret_t, ())
end

function rcl_get_zero_initialized_node()
    ccall((:rcl_get_zero_initialized_node, librcl), rcl_node_t, ())
end
function rcl_node_init(node, name, namespace_, options)
    ccall((:rcl_node_init, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Cstring, Cstring, Ptr{rcl_node_options_t}), node, name, namespace_, options)
end

function rcl_node_fini(node)
    ccall((:rcl_node_fini, librcl), rcl_ret_t, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_default_options()
    ccall((:rcl_node_get_default_options, librcl), rcl_node_options_t, ())
end

const rcl_get_default_allocator = rcutils_get_default_allocator

function rcl_node_is_valid(node, error_msg_allocator)
    ccall((:rcl_node_is_valid, librcl), Bool, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}), node, error_msg_allocator)
end


############################################
## main code
############################################
using Test

## Init RCL library
allocator = rcl_get_default_allocator()
@show allocator
ret = rcl_init(Int32(0), C_NULL, allocator)
@test ret == RCL_RET_OK

## Init a node
rcl_node = rcl_get_zero_initialized_node();
# default_options = rcl_node_options_t(RCL_NODE_OPTIONS_DEFAULT_DOMAIN_ID, allocator)
default_options = rcl_node_get_default_options()
rcl_node_handle = pointer_from_objref(rcl_node)
default_options_handle = pointer_from_objref(default_options)
@show rcl_node_handle
@show default_options_handle
ret = rcl_node_init(rcl_node_handle, "minimal_pub", "", default_options_handle)

if ret != RCL_RET_OK
    msg = rcutils_get_error_string()
    @assert msg != Cstring(C_NULL)
    msg = unsafe_string(msg)
    @show ret, msg
end
@assert ret == RCL_RET_OK

# check validity
@assert rcl_node_is_valid(pointer_from_objref(rcl_node), C_NULL)

## Finalize the node
ret = rcl_node_fini(pointer_from_objref(rcl_node))
@assert ret == RCL_RET_OK

## Shutdown the RCL library
ret == rcl_shutdown()
@assert ret == RCL_RET_OK