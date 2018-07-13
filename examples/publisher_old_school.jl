using Rcl

rcl.init()

nb = rcl.NodeBase("minimal_publisher")

# ret = Rcl.internal.rcl_node_fini(nb.rcl_node_handle)
# @show ret
# rcl.finalize(nb)
# finalize(nb)
finalize(nb)
# GC.gc()
# nb.rcl_node_handle[] = C_NULL
# ret = Rcl.internal.rcl_node_fini(nb.rcl_node_handle)
# @show ret

nb = nothing


rcl.shutdown()
# nb = nothing
GC.gc()

sleep(1.0)
