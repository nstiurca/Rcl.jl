module Rcl

include(joinpath(@__DIR__, "..", "gen", "LibRcl.jl"))

# module internal
# include("internal.jl")
# end
#
using .LibRcl: RclError
export RclError
#
# module rcl
# include("base.jl")
# include("node_base.jl")
# end
#
# export rcl
# using .rcl: name, namespace
# export name, namespace

# abstract type Node end
# abstract type Logger end
# abstract type Publisher end
# abstract type Timer end
# abstract type Subscription end


# function create_node(name) end
# function create_publisher(node::Node, msg_type, topic_name) end
# function get_logger(node::Node) end
# function info(logger::Logger, message) end
# function publish(publisher::Publisher, msg) end
# function destroy_node(node::Node) end
# function create_timer(node::Node, callback) end
# function destroy_timer(timer::Timer) end
# function create_subscription(node::Node, msg_type, topic_name, callback) end
# function spin_once(node::Node) end


end # module
