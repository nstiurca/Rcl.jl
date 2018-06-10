# Julia wrapper for header: /opt/ros/ardent/include/rcutils/allocator.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function rcutils_get_zero_initialized_allocator()
    ccall((:rcutils_get_zero_initialized_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_get_default_allocator()
    ccall((:rcutils_get_default_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_allocator_is_valid(allocator)
    ccall((:rcutils_allocator_is_valid, librcutils), Bool, (Ptr{rcutils_allocator_t},), allocator)
end

function rcutils_reallocf(pointer, size::Csize_t, allocator)
    ccall((:rcutils_reallocf, librcutils), Ptr{Void}, (Ptr{Void}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
end
# Julia wrapper for header: /opt/ros/ardent/include/rcl/rcl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function rcutils_get_zero_initialized_allocator()
    ccall((:rcutils_get_zero_initialized_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_get_default_allocator()
    ccall((:rcutils_get_default_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_allocator_is_valid(allocator)
    ccall((:rcutils_allocator_is_valid, librcutils), Bool, (Ptr{rcutils_allocator_t},), allocator)
end

function rcutils_reallocf(pointer, size::Csize_t, allocator)
    ccall((:rcutils_reallocf, librcutils), Ptr{Void}, (Ptr{Void}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
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

function rcl_node_is_valid(node, error_msg_allocator)
    ccall((:rcl_node_is_valid, librcl), Bool, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}), node, error_msg_allocator)
end

function rcl_node_get_name(node)
    ccall((:rcl_node_get_name, librcl), Cstring, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_namespace(node)
    ccall((:rcl_node_get_namespace, librcl), Cstring, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_options(node)
    ccall((:rcl_node_get_options, librcl), Ptr{rcl_node_options_t}, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_domain_id(node, domain_id)
    ccall((:rcl_node_get_domain_id, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{Csize_t}), node, domain_id)
end

function rcl_node_get_rmw_handle(node)
    ccall((:rcl_node_get_rmw_handle, librcl), Ptr{rmw_node_t}, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_rcl_instance_id(node)
    ccall((:rcl_node_get_rcl_instance_id, librcl), UInt64, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_graph_guard_condition(node)
    ccall((:rcl_node_get_graph_guard_condition, librcl), Ptr{Void}, (Ptr{rcl_node_t},), node)
end

function get_message_typesupport_handle(handle, identifier)
    ccall((:get_message_typesupport_handle, librosidl_generator_c), Ptr{rosidl_message_type_support_t}, (Ptr{rosidl_message_type_support_t}, Cstring), handle, identifier)
end

function get_message_typesupport_handle_function(handle, identifier)
    ccall((:get_message_typesupport_handle_function, librosidl_generator_c), Ptr{rosidl_message_type_support_t}, (Ptr{rosidl_message_type_support_t}, Cstring), handle, identifier)
end

function rcl_get_zero_initialized_publisher()
    ccall((:rcl_get_zero_initialized_publisher, librcl), rcl_publisher_t, ())
end

function rcl_publisher_init(publisher, node, type_support, topic_name, options)
    ccall((:rcl_publisher_init, librcl), rcl_ret_t, (Ptr{rcl_publisher_t}, Ptr{rcl_node_t}, Ptr{rosidl_message_type_support_t}, Cstring, Ptr{rcl_publisher_options_t}), publisher, node, type_support, topic_name, options)
end

function rcl_publisher_fini(publisher, node)
    ccall((:rcl_publisher_fini, librcl), rcl_ret_t, (Ptr{rcl_publisher_t}, Ptr{rcl_node_t}), publisher, node)
end

function rcl_publisher_get_default_options()
    ccall((:rcl_publisher_get_default_options, librcl), rcl_publisher_options_t, ())
end

function rcl_publish(publisher, ros_message)
    ccall((:rcl_publish, librcl), rcl_ret_t, (Ptr{rcl_publisher_t}, Ptr{Void}), publisher, ros_message)
end

function rcl_publisher_get_topic_name(publisher)
    ccall((:rcl_publisher_get_topic_name, librcl), Cstring, (Ptr{rcl_publisher_t},), publisher)
end

function rcl_publisher_get_options(publisher)
    ccall((:rcl_publisher_get_options, librcl), Ptr{rcl_publisher_options_t}, (Ptr{rcl_publisher_t},), publisher)
end

function rcl_publisher_get_rmw_handle(publisher)
    ccall((:rcl_publisher_get_rmw_handle, librcl), Ptr{rmw_publisher_t}, (Ptr{rcl_publisher_t},), publisher)
end

function rcl_publisher_is_valid(publisher, error_msg_allocator)
    ccall((:rcl_publisher_is_valid, librcl), Bool, (Ptr{rcl_publisher_t}, Ptr{rcl_allocator_t}), publisher, error_msg_allocator)
end

function rcl_get_zero_initialized_subscription()
    ccall((:rcl_get_zero_initialized_subscription, librcl), rcl_subscription_t, ())
end

function rcl_subscription_init(subscription, node, type_support, topic_name, options)
    ccall((:rcl_subscription_init, librcl), rcl_ret_t, (Ptr{rcl_subscription_t}, Ptr{rcl_node_t}, Ptr{rosidl_message_type_support_t}, Cstring, Ptr{rcl_subscription_options_t}), subscription, node, type_support, topic_name, options)
end

function rcl_subscription_fini(subscription, node)
    ccall((:rcl_subscription_fini, librcl), rcl_ret_t, (Ptr{rcl_subscription_t}, Ptr{rcl_node_t}), subscription, node)
end

function rcl_subscription_get_default_options()
    ccall((:rcl_subscription_get_default_options, librcl), rcl_subscription_options_t, ())
end

function rcl_take(subscription, ros_message, message_info)
    ccall((:rcl_take, librcl), rcl_ret_t, (Ptr{rcl_subscription_t}, Ptr{Void}, Ptr{rmw_message_info_t}), subscription, ros_message, message_info)
end

function rcl_subscription_get_topic_name(subscription)
    ccall((:rcl_subscription_get_topic_name, librcl), Cstring, (Ptr{rcl_subscription_t},), subscription)
end

function rcl_subscription_get_options(subscription)
    ccall((:rcl_subscription_get_options, librcl), Ptr{rcl_subscription_options_t}, (Ptr{rcl_subscription_t},), subscription)
end

function rcl_subscription_get_rmw_handle(subscription)
    ccall((:rcl_subscription_get_rmw_handle, librcl), Ptr{rmw_subscription_t}, (Ptr{rcl_subscription_t},), subscription)
end

function rcl_subscription_is_valid(subscription, error_msg_allocator)
    ccall((:rcl_subscription_is_valid, librcl), Bool, (Ptr{rcl_subscription_t}, Ptr{rcl_allocator_t}), subscription, error_msg_allocator)
end

function get_service_typesupport_handle(handle, identifier)
    ccall((:get_service_typesupport_handle, librosidl_generator_c), Ptr{rosidl_service_type_support_t}, (Ptr{rosidl_service_type_support_t}, Cstring), handle, identifier)
end

function get_service_typesupport_handle_function(handle, identifier)
    ccall((:get_service_typesupport_handle_function, librosidl_generator_c), Ptr{rosidl_service_type_support_t}, (Ptr{rosidl_service_type_support_t}, Cstring), handle, identifier)
end

function rcl_get_zero_initialized_client()
    ccall((:rcl_get_zero_initialized_client, librcl), rcl_client_t, ())
end

function rcl_client_init(client, node, type_support, service_name, options)
    ccall((:rcl_client_init, librcl), rcl_ret_t, (Ptr{rcl_client_t}, Ptr{rcl_node_t}, Ptr{rosidl_service_type_support_t}, Cstring, Ptr{rcl_client_options_t}), client, node, type_support, service_name, options)
end

function rcl_client_fini(client, node)
    ccall((:rcl_client_fini, librcl), rcl_ret_t, (Ptr{rcl_client_t}, Ptr{rcl_node_t}), client, node)
end

function rcl_client_get_default_options()
    ccall((:rcl_client_get_default_options, librcl), rcl_client_options_t, ())
end

function rcl_send_request(client, ros_request, sequence_number)
    ccall((:rcl_send_request, librcl), rcl_ret_t, (Ptr{rcl_client_t}, Ptr{Void}, Ptr{Int64}), client, ros_request, sequence_number)
end

function rcl_take_response(client, request_header, ros_response)
    ccall((:rcl_take_response, librcl), rcl_ret_t, (Ptr{rcl_client_t}, Ptr{rmw_request_id_t}, Ptr{Void}), client, request_header, ros_response)
end

function rcl_client_get_service_name(client)
    ccall((:rcl_client_get_service_name, librcl), Cstring, (Ptr{rcl_client_t},), client)
end

function rcl_client_get_options(client)
    ccall((:rcl_client_get_options, librcl), Ptr{rcl_client_options_t}, (Ptr{rcl_client_t},), client)
end

function rcl_client_get_rmw_handle(client)
    ccall((:rcl_client_get_rmw_handle, librcl), Ptr{rmw_client_t}, (Ptr{rcl_client_t},), client)
end

function rcl_client_is_valid(client, error_msg_allocator)
    ccall((:rcl_client_is_valid, librcl), Bool, (Ptr{rcl_client_t}, Ptr{rcl_allocator_t}), client, error_msg_allocator)
end

function rcl_get_zero_initialized_guard_condition()
    ccall((:rcl_get_zero_initialized_guard_condition, librcl), rcl_guard_condition_t, ())
end

function rcl_guard_condition_init(guard_condition, options::rcl_guard_condition_options_t)
    ccall((:rcl_guard_condition_init, librcl), rcl_ret_t, (Ptr{rcl_guard_condition_t}, rcl_guard_condition_options_t), guard_condition, options)
end

function rcl_guard_condition_init_from_rmw(guard_condition, rmw_guard_condition, options::rcl_guard_condition_options_t)
    ccall((:rcl_guard_condition_init_from_rmw, librcl), rcl_ret_t, (Ptr{rcl_guard_condition_t}, Ptr{rmw_guard_condition_t}, rcl_guard_condition_options_t), guard_condition, rmw_guard_condition, options)
end

function rcl_guard_condition_fini(guard_condition)
    ccall((:rcl_guard_condition_fini, librcl), rcl_ret_t, (Ptr{rcl_guard_condition_t},), guard_condition)
end

function rcl_guard_condition_get_default_options()
    ccall((:rcl_guard_condition_get_default_options, librcl), rcl_guard_condition_options_t, ())
end

function rcl_trigger_guard_condition(guard_condition)
    ccall((:rcl_trigger_guard_condition, librcl), rcl_ret_t, (Ptr{rcl_guard_condition_t},), guard_condition)
end

function rcl_guard_condition_get_options(guard_condition)
    ccall((:rcl_guard_condition_get_options, librcl), Ptr{rcl_guard_condition_options_t}, (Ptr{rcl_guard_condition_t},), guard_condition)
end

function rcl_guard_condition_get_rmw_handle(guard_condition)
    ccall((:rcl_guard_condition_get_rmw_handle, librcl), Ptr{rmw_guard_condition_t}, (Ptr{rcl_guard_condition_t},), guard_condition)
end

function rcl_get_zero_initialized_service()
    ccall((:rcl_get_zero_initialized_service, librcl), rcl_service_t, ())
end

function rcl_service_init(service, node, type_support, service_name, options)
    ccall((:rcl_service_init, librcl), rcl_ret_t, (Ptr{rcl_service_t}, Ptr{rcl_node_t}, Ptr{rosidl_service_type_support_t}, Cstring, Ptr{rcl_service_options_t}), service, node, type_support, service_name, options)
end

function rcl_service_fini(service, node)
    ccall((:rcl_service_fini, librcl), rcl_ret_t, (Ptr{rcl_service_t}, Ptr{rcl_node_t}), service, node)
end

function rcl_service_get_default_options()
    ccall((:rcl_service_get_default_options, librcl), rcl_service_options_t, ())
end

function rcl_take_request(service, request_header, ros_request)
    ccall((:rcl_take_request, librcl), rcl_ret_t, (Ptr{rcl_service_t}, Ptr{rmw_request_id_t}, Ptr{Void}), service, request_header, ros_request)
end

function rcl_send_response(service, response_header, ros_response)
    ccall((:rcl_send_response, librcl), rcl_ret_t, (Ptr{rcl_service_t}, Ptr{rmw_request_id_t}, Ptr{Void}), service, response_header, ros_response)
end

function rcl_service_get_service_name(service)
    ccall((:rcl_service_get_service_name, librcl), Cstring, (Ptr{rcl_service_t},), service)
end

function rcl_service_get_options(service)
    ccall((:rcl_service_get_options, librcl), Ptr{rcl_service_options_t}, (Ptr{rcl_service_t},), service)
end

function rcl_service_get_rmw_handle(service)
    ccall((:rcl_service_get_rmw_handle, librcl), Ptr{rmw_service_t}, (Ptr{rcl_service_t},), service)
end

function rcl_service_is_valid(service, error_msg_allocator)
    ccall((:rcl_service_is_valid, librcl), Bool, (Ptr{rcl_service_t}, Ptr{rcl_allocator_t}), service, error_msg_allocator)
end

function rcutils_get_zero_initialized_string_array()
    ccall((:rcutils_get_zero_initialized_string_array, librcutils/types), rcutils_string_array_t, ())
end

function rcutils_string_array_init(string_array, size::Csize_t, allocator)
    ccall((:rcutils_string_array_init, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_array_t}, Csize_t, Ptr{rcutils_allocator_t}), string_array, size, allocator)
end

function rcutils_string_array_fini(string_array)
    ccall((:rcutils_string_array_fini, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_array_t},), string_array)
end

function rcutils_get_zero_initialized_string_map()
    ccall((:rcutils_get_zero_initialized_string_map, librcutils/types), rcutils_string_map_t, ())
end

function rcutils_string_map_init(string_map, initial_capacity::Csize_t, allocator::rcutils_allocator_t)
    ccall((:rcutils_string_map_init, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Csize_t, rcutils_allocator_t), string_map, initial_capacity, allocator)
end

function rcutils_string_map_fini(string_map)
    ccall((:rcutils_string_map_fini, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t},), string_map)
end

function rcutils_string_map_get_capacity(string_map, capacity)
    ccall((:rcutils_string_map_get_capacity, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Ptr{Csize_t}), string_map, capacity)
end

function rcutils_string_map_get_size(string_map, size)
    ccall((:rcutils_string_map_get_size, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Ptr{Csize_t}), string_map, size)
end

function rcutils_string_map_reserve(string_map, capacity::Csize_t)
    ccall((:rcutils_string_map_reserve, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Csize_t), string_map, capacity)
end

function rcutils_string_map_clear(string_map)
    ccall((:rcutils_string_map_clear, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t},), string_map)
end

function rcutils_string_map_set(string_map, key, value)
    ccall((:rcutils_string_map_set, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Cstring, Cstring), string_map, key, value)
end

function rcutils_string_map_set_no_resize(string_map, key, value)
    ccall((:rcutils_string_map_set_no_resize, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Cstring, Cstring), string_map, key, value)
end

function rcutils_string_map_unset(string_map, key)
    ccall((:rcutils_string_map_unset, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_key_exists(string_map, key)
    ccall((:rcutils_string_map_key_exists, librcutils/types), Bool, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_key_existsn(string_map, key, key_length::Csize_t)
    ccall((:rcutils_string_map_key_existsn, librcutils/types), Bool, (Ptr{rcutils_string_map_t}, Cstring, Csize_t), string_map, key, key_length)
end

function rcutils_string_map_get(string_map, key)
    ccall((:rcutils_string_map_get, librcutils/types), Cstring, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_getn(string_map, key, key_length::Csize_t)
    ccall((:rcutils_string_map_getn, librcutils/types), Cstring, (Ptr{rcutils_string_map_t}, Cstring, Csize_t), string_map, key, key_length)
end

function rcutils_string_map_get_next_key(string_map, key)
    ccall((:rcutils_string_map_get_next_key, librcutils/types), Cstring, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_copy(src_string_map, dst_string_map)
    ccall((:rcutils_string_map_copy, librcutils/types), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Ptr{rcutils_string_map_t}), src_string_map, dst_string_map)
end

function rcutils_system_time_now(now)
    ccall((:rcutils_system_time_now, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t},), now)
end

function rcutils_steady_time_now(now)
    ccall((:rcutils_steady_time_now, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t},), now)
end

function rcl_clock_valid(clock)
    ccall((:rcl_clock_valid, librcl), Bool, (Ptr{rcl_clock_t},), clock)
end

function rcl_clock_init(clock_type::Void, clock, allocator)
    ccall((:rcl_clock_init, librcl), rcl_ret_t, (Void, Ptr{rcl_clock_t}, Ptr{rcl_allocator_t}), clock_type, clock, allocator)
end

function rcl_clock_fini(clock)
    ccall((:rcl_clock_fini, librcl), rcl_ret_t, (Ptr{rcl_clock_t},), clock)
end

function rcl_ros_clock_init(clock, allocator)
    ccall((:rcl_ros_clock_init, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, Ptr{rcl_allocator_t}), clock, allocator)
end

function rcl_ros_clock_fini(clock)
    ccall((:rcl_ros_clock_fini, librcl), rcl_ret_t, (Ptr{rcl_clock_t},), clock)
end

function rcl_steady_clock_init(clock, allocator)
    ccall((:rcl_steady_clock_init, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, Ptr{rcl_allocator_t}), clock, allocator)
end

function rcl_steady_clock_fini(clock)
    ccall((:rcl_steady_clock_fini, librcl), rcl_ret_t, (Ptr{rcl_clock_t},), clock)
end

function rcl_system_clock_init(clock, allocator)
    ccall((:rcl_system_clock_init, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, Ptr{rcl_allocator_t}), clock, allocator)
end

function rcl_system_clock_fini(clock)
    ccall((:rcl_system_clock_fini, librcl), rcl_ret_t, (Ptr{rcl_clock_t},), clock)
end

function rcl_difference_times(start, finish, delta)
    ccall((:rcl_difference_times, librcl), rcl_ret_t, (Ptr{rcl_time_point_t}, Ptr{rcl_time_point_t}, Ptr{rcl_duration_t}), start, finish, delta)
end

function rcl_clock_get_now(clock, time_point)
    ccall((:rcl_clock_get_now, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, Ptr{rcl_time_point_t}), clock, time_point)
end

function rcl_enable_ros_time_override(clock)
    ccall((:rcl_enable_ros_time_override, librcl), rcl_ret_t, (Ptr{rcl_clock_t},), clock)
end

function rcl_disable_ros_time_override(clock)
    ccall((:rcl_disable_ros_time_override, librcl), rcl_ret_t, (Ptr{rcl_clock_t},), clock)
end

function rcl_is_enabled_ros_time_override(clock, is_enabled)
    ccall((:rcl_is_enabled_ros_time_override, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, Ptr{Bool}), clock, is_enabled)
end

function rcl_set_ros_time_override(clock, time_value::rcl_time_point_value_t)
    ccall((:rcl_set_ros_time_override, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, rcl_time_point_value_t), clock, time_value)
end

function rmw_get_implementation_identifier()
    ccall((:rmw_get_implementation_identifier, librmw), Cstring, ())
end

function rmw_init()
    ccall((:rmw_init, librmw), rmw_ret_t, ())
end

function rmw_create_node(name, namespace_, domain_id::Csize_t, security_options)
    ccall((:rmw_create_node, librmw), Ptr{rmw_node_t}, (Cstring, Cstring, Csize_t, Ptr{rmw_node_security_options_t}), name, namespace_, domain_id, security_options)
end

function rmw_destroy_node(node)
    ccall((:rmw_destroy_node, librmw), rmw_ret_t, (Ptr{rmw_node_t},), node)
end

function rmw_node_get_graph_guard_condition(node)
    ccall((:rmw_node_get_graph_guard_condition, librmw), Ptr{rmw_guard_condition_t}, (Ptr{rmw_node_t},), node)
end

function rmw_create_publisher(node, type_support, topic_name, qos_policies)
    ccall((:rmw_create_publisher, librmw), Ptr{rmw_publisher_t}, (Ptr{rmw_node_t}, Ptr{rosidl_message_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}), node, type_support, topic_name, qos_policies)
end

function rmw_destroy_publisher(node, publisher)
    ccall((:rmw_destroy_publisher, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_publisher_t}), node, publisher)
end

function rmw_publish(publisher, ros_message)
    ccall((:rmw_publish, librmw), rmw_ret_t, (Ptr{rmw_publisher_t}, Ptr{Void}), publisher, ros_message)
end

function rmw_create_subscription(node, type_support, topic_name, qos_policies, ignore_local_publications::Bool)
    ccall((:rmw_create_subscription, librmw), Ptr{rmw_subscription_t}, (Ptr{rmw_node_t}, Ptr{rosidl_message_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}, Bool), node, type_support, topic_name, qos_policies, ignore_local_publications)
end

function rmw_destroy_subscription(node, subscription)
    ccall((:rmw_destroy_subscription, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_subscription_t}), node, subscription)
end

function rmw_take(subscription, ros_message, taken)
    ccall((:rmw_take, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{Void}, Ptr{Bool}), subscription, ros_message, taken)
end

function rmw_take_with_info(subscription, ros_message, taken, message_info)
    ccall((:rmw_take_with_info, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{Void}, Ptr{Bool}, Ptr{rmw_message_info_t}), subscription, ros_message, taken, message_info)
end

function rmw_create_client(node, type_support, service_name, qos_policies)
    ccall((:rmw_create_client, librmw), Ptr{rmw_client_t}, (Ptr{rmw_node_t}, Ptr{rosidl_service_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}), node, type_support, service_name, qos_policies)
end

function rmw_destroy_client(node, client)
    ccall((:rmw_destroy_client, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_client_t}), node, client)
end

function rmw_send_request(client, ros_request, sequence_id)
    ccall((:rmw_send_request, librmw), rmw_ret_t, (Ptr{rmw_client_t}, Ptr{Void}, Ptr{Int64}), client, ros_request, sequence_id)
end

function rmw_take_response(client, request_header, ros_response, taken)
    ccall((:rmw_take_response, librmw), rmw_ret_t, (Ptr{rmw_client_t}, Ptr{rmw_request_id_t}, Ptr{Void}, Ptr{Bool}), client, request_header, ros_response, taken)
end

function rmw_create_service(node, type_support, service_name, qos_policies)
    ccall((:rmw_create_service, librmw), Ptr{rmw_service_t}, (Ptr{rmw_node_t}, Ptr{rosidl_service_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}), node, type_support, service_name, qos_policies)
end

function rmw_destroy_service(node, service)
    ccall((:rmw_destroy_service, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_service_t}), node, service)
end

function rmw_take_request(service, request_header, ros_request, taken)
    ccall((:rmw_take_request, librmw), rmw_ret_t, (Ptr{rmw_service_t}, Ptr{rmw_request_id_t}, Ptr{Void}, Ptr{Bool}), service, request_header, ros_request, taken)
end

function rmw_send_response(service, request_header, ros_response)
    ccall((:rmw_send_response, librmw), rmw_ret_t, (Ptr{rmw_service_t}, Ptr{rmw_request_id_t}, Ptr{Void}), service, request_header, ros_response)
end

function rmw_create_guard_condition()
    ccall((:rmw_create_guard_condition, librmw), Ptr{rmw_guard_condition_t}, ())
end

function rmw_destroy_guard_condition(guard_condition)
    ccall((:rmw_destroy_guard_condition, librmw), rmw_ret_t, (Ptr{rmw_guard_condition_t},), guard_condition)
end

function rmw_trigger_guard_condition(guard_condition)
    ccall((:rmw_trigger_guard_condition, librmw), rmw_ret_t, (Ptr{rmw_guard_condition_t},), guard_condition)
end

function rmw_create_wait_set(max_conditions::Csize_t)
    ccall((:rmw_create_wait_set, librmw), Ptr{rmw_wait_set_t}, (Csize_t,), max_conditions)
end

function rmw_destroy_wait_set(wait_set)
    ccall((:rmw_destroy_wait_set, librmw), rmw_ret_t, (Ptr{rmw_wait_set_t},), wait_set)
end

function rmw_wait(subscriptions, guard_conditions, services, clients, wait_set, wait_timeout)
    ccall((:rmw_wait, librmw), rmw_ret_t, (Ptr{rmw_subscriptions_t}, Ptr{rmw_guard_conditions_t}, Ptr{rmw_services_t}, Ptr{rmw_clients_t}, Ptr{rmw_wait_set_t}, Ptr{rmw_time_t}), subscriptions, guard_conditions, services, clients, wait_set, wait_timeout)
end

function rmw_get_node_names(node, node_names)
    ccall((:rmw_get_node_names, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_string_array_t}), node, node_names)
end

function rmw_count_publishers(node, topic_name, count)
    ccall((:rmw_count_publishers, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Cstring, Ptr{Csize_t}), node, topic_name, count)
end

function rmw_count_subscribers(node, topic_name, count)
    ccall((:rmw_count_subscribers, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Cstring, Ptr{Csize_t}), node, topic_name, count)
end

function rmw_get_gid_for_publisher(publisher, gid)
    ccall((:rmw_get_gid_for_publisher, librmw), rmw_ret_t, (Ptr{rmw_publisher_t}, Ptr{rmw_gid_t}), publisher, gid)
end

function rmw_compare_gids_equal(gid1, gid2, result)
    ccall((:rmw_compare_gids_equal, librmw), rmw_ret_t, (Ptr{rmw_gid_t}, Ptr{rmw_gid_t}, Ptr{Bool}), gid1, gid2, result)
end

function rmw_service_server_is_available(node, client, is_available)
    ccall((:rmw_service_server_is_available, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_client_t}, Ptr{Bool}), node, client, is_available)
end

function rcl_get_zero_initialized_timer()
    ccall((:rcl_get_zero_initialized_timer, librcl), rcl_timer_t, ())
end

function rcl_timer_init(timer, period::UInt64, callback::rcl_timer_callback_t, allocator::rcl_allocator_t)
    ccall((:rcl_timer_init, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, UInt64, rcl_timer_callback_t, rcl_allocator_t), timer, period, callback, allocator)
end

function rcl_timer_fini(timer)
    ccall((:rcl_timer_fini, librcl), rcl_ret_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_call(timer)
    ccall((:rcl_timer_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_is_ready(timer, is_ready)
    ccall((:rcl_timer_is_ready, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Bool}), timer, is_ready)
end

function rcl_timer_get_time_until_next_call(timer, time_until_next_call)
    ccall((:rcl_timer_get_time_until_next_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Int64}), timer, time_until_next_call)
end

function rcl_timer_get_time_since_last_call(timer, time_since_last_call)
    ccall((:rcl_timer_get_time_since_last_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{UInt64}), timer, time_since_last_call)
end

function rcl_timer_get_period(timer, period)
    ccall((:rcl_timer_get_period, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{UInt64}), timer, period)
end

function rcl_timer_exchange_period(timer, new_period::UInt64, old_period)
    ccall((:rcl_timer_exchange_period, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, UInt64, Ptr{UInt64}), timer, new_period, old_period)
end

function rcl_timer_get_callback(timer)
    ccall((:rcl_timer_get_callback, librcl), rcl_timer_callback_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_exchange_callback(timer, new_callback::rcl_timer_callback_t)
    ccall((:rcl_timer_exchange_callback, librcl), rcl_timer_callback_t, (Ptr{rcl_timer_t}, rcl_timer_callback_t), timer, new_callback)
end

function rcl_timer_cancel(timer)
    ccall((:rcl_timer_cancel, librcl), rcl_ret_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_is_canceled(timer, is_canceled)
    ccall((:rcl_timer_is_canceled, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Bool}), timer, is_canceled)
end

function rcl_timer_reset(timer)
    ccall((:rcl_timer_reset, librcl), rcl_ret_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_get_allocator(timer)
    ccall((:rcl_timer_get_allocator, librcl), Ptr{rcl_allocator_t}, (Ptr{rcl_timer_t},), timer)
end

function rcl_get_zero_initialized_wait_set()
    ccall((:rcl_get_zero_initialized_wait_set, librcl), rcl_wait_set_t, ())
end

function rcl_wait_set_init(wait_set, number_of_subscriptions::Csize_t, number_of_guard_conditions::Csize_t, number_of_timers::Csize_t, number_of_clients::Csize_t, number_of_services::Csize_t, allocator::rcl_allocator_t)
    ccall((:rcl_wait_set_init, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t, Csize_t, Csize_t, Csize_t, Csize_t, rcl_allocator_t), wait_set, number_of_subscriptions, number_of_guard_conditions, number_of_timers, number_of_clients, number_of_services, allocator)
end

function rcl_wait_set_fini(wait_set)
    ccall((:rcl_wait_set_fini, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_get_allocator(wait_set, allocator)
    ccall((:rcl_wait_set_get_allocator, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_allocator_t}), wait_set, allocator)
end

function rcl_wait_set_add_subscription(wait_set, subscription)
    ccall((:rcl_wait_set_add_subscription, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_subscription_t}), wait_set, subscription)
end

function rcl_wait_set_clear_subscriptions(wait_set)
    ccall((:rcl_wait_set_clear_subscriptions, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_resize_subscriptions(wait_set, size::Csize_t)
    ccall((:rcl_wait_set_resize_subscriptions, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t), wait_set, size)
end

function rcl_wait_set_add_guard_condition(wait_set, guard_condition)
    ccall((:rcl_wait_set_add_guard_condition, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_guard_condition_t}), wait_set, guard_condition)
end

function rcl_wait_set_clear_guard_conditions(wait_set)
    ccall((:rcl_wait_set_clear_guard_conditions, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_resize_guard_conditions(wait_set, size::Csize_t)
    ccall((:rcl_wait_set_resize_guard_conditions, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t), wait_set, size)
end

function rcl_wait_set_add_timer(wait_set, timer)
    ccall((:rcl_wait_set_add_timer, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_timer_t}), wait_set, timer)
end

function rcl_wait_set_clear_timers(wait_set)
    ccall((:rcl_wait_set_clear_timers, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_resize_timers(wait_set, size::Csize_t)
    ccall((:rcl_wait_set_resize_timers, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t), wait_set, size)
end

function rcl_wait_set_add_client(wait_set, client)
    ccall((:rcl_wait_set_add_client, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_client_t}), wait_set, client)
end

function rcl_wait_set_clear_clients(wait_set)
    ccall((:rcl_wait_set_clear_clients, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_resize_clients(wait_set, size::Csize_t)
    ccall((:rcl_wait_set_resize_clients, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t), wait_set, size)
end

function rcl_wait_set_add_service(wait_set, service)
    ccall((:rcl_wait_set_add_service, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_service_t}), wait_set, service)
end

function rcl_wait_set_clear_services(wait_set)
    ccall((:rcl_wait_set_clear_services, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_resize_services(wait_set, size::Csize_t)
    ccall((:rcl_wait_set_resize_services, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t), wait_set, size)
end

function rcl_wait(wait_set, timeout::Int64)
    ccall((:rcl_wait, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Int64), wait_set, timeout)
end

function rcl_init(argc::Cint, argv, allocator::rcl_allocator_t)
    ccall((:rcl_init, librcl), rcl_ret_t, (Cint, Ptr{Cstring}, rcl_allocator_t), argc, argv, allocator)
end

function rcl_shutdown()
    ccall((:rcl_shutdown, librcl), rcl_ret_t, ())
end

function rcl_get_instance_id()
    ccall((:rcl_get_instance_id, librcl), UInt64, ())
end

function rcl_ok()
    ccall((:rcl_ok, librcl), Bool, ())
end
