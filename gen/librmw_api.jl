# Julia wrapper for header: /opt/ros/crystal/include/rmw/allocators.h
# Automatically generated using Clang.jl wrap_c


function rmw_allocate(size)
    ccall((:rmw_allocate, librmw), Ptr{Cvoid}, (Csize_t,), size)
end

function rmw_free(pointer)
    ccall((:rmw_free, librmw), Cvoid, (Ptr{Cvoid},), pointer)
end

function rmw_node_allocate()
    ccall((:rmw_node_allocate, librmw), Ptr{rmw_node_t}, ())
end

function rmw_node_free(node)
    ccall((:rmw_node_free, librmw), Cvoid, (Ptr{rmw_node_t},), node)
end

function rmw_publisher_allocate()
    ccall((:rmw_publisher_allocate, librmw), Ptr{rmw_publisher_t}, ())
end

function rmw_publisher_free(publisher)
    ccall((:rmw_publisher_free, librmw), Cvoid, (Ptr{rmw_publisher_t},), publisher)
end

function rmw_subscription_allocate()
    ccall((:rmw_subscription_allocate, librmw), Ptr{rmw_subscription_t}, ())
end

function rmw_subscription_free(subscription)
    ccall((:rmw_subscription_free, librmw), Cvoid, (Ptr{rmw_subscription_t},), subscription)
end

function rmw_guard_condition_allocate()
    ccall((:rmw_guard_condition_allocate, librmw), Ptr{rmw_guard_condition_t}, ())
end

function rmw_guard_condition_free(guard_condition)
    ccall((:rmw_guard_condition_free, librmw), Cvoid, (Ptr{rmw_guard_condition_t},), guard_condition)
end

function rmw_client_allocate()
    ccall((:rmw_client_allocate, librmw), Ptr{rmw_client_t}, ())
end

function rmw_client_free(client)
    ccall((:rmw_client_free, librmw), Cvoid, (Ptr{rmw_client_t},), client)
end

function rmw_service_allocate()
    ccall((:rmw_service_allocate, librmw), Ptr{rmw_service_t}, ())
end

function rmw_service_free(service)
    ccall((:rmw_service_free, librmw), Cvoid, (Ptr{rmw_service_t},), service)
end

function rmw_wait_set_allocate()
    ccall((:rmw_wait_set_allocate, librmw), Ptr{rmw_wait_set_t}, ())
end

function rmw_wait_set_free(wait_set)
    ccall((:rmw_wait_set_free, librmw), Cvoid, (Ptr{rmw_wait_set_t},), wait_set)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/convert_rcutils_ret_to_rmw_ret.h
# Automatically generated using Clang.jl wrap_c


function rmw_convert_rcutils_ret_to_rmw_ret(rcutils_ret)
    ccall((:rmw_convert_rcutils_ret_to_rmw_ret, librmw), rmw_ret_t, (rcutils_ret_t,), rcutils_ret)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/error_handling.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/get_node_info_and_types.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_subscriber_names_and_types_by_node(node, allocator, node_name, node_namespace, demangle, topics_names_and_types)
    ccall((:rmw_get_subscriber_names_and_types_by_node, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_allocator_t}, Cstring, Cstring, Bool, Ptr{rmw_names_and_types_t}), node, allocator, node_name, node_namespace, demangle, topics_names_and_types)
end

function rmw_get_publisher_names_and_types_by_node(node, allocator, node_name, node_namespace, demangle, topic_names_and_types)
    ccall((:rmw_get_publisher_names_and_types_by_node, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_allocator_t}, Cstring, Cstring, Bool, Ptr{rmw_names_and_types_t}), node, allocator, node_name, node_namespace, demangle, topic_names_and_types)
end

function rmw_get_service_names_and_types_by_node(node, allocator, node_name, node_namespace, service_names_and_types)
    ccall((:rmw_get_service_names_and_types_by_node, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_allocator_t}, Cstring, Cstring, Ptr{rmw_names_and_types_t}), node, allocator, node_name, node_namespace, service_names_and_types)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/get_service_names_and_types.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_service_names_and_types(node, allocator, service_names_and_types)
    ccall((:rmw_get_service_names_and_types, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_allocator_t}, Ptr{rmw_names_and_types_t}), node, allocator, service_names_and_types)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/get_topic_names_and_types.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_topic_names_and_types(node, allocator, no_demangle, topic_names_and_types)
    ccall((:rmw_get_topic_names_and_types, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_allocator_t}, Bool, Ptr{rmw_names_and_types_t}), node, allocator, no_demangle, topic_names_and_types)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/init.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_zero_initialized_context()
    ccall((:rmw_get_zero_initialized_context, librmw), rmw_context_t, ())
end

function rmw_init(options, context)
    ccall((:rmw_init, librmw), rmw_ret_t, (Ptr{rmw_init_options_t}, Ptr{rmw_context_t}), options, context)
end

function rmw_shutdown(context)
    ccall((:rmw_shutdown, librmw), rmw_ret_t, (Ptr{rmw_context_t},), context)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/init_options.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_zero_initialized_init_options()
    ccall((:rmw_get_zero_initialized_init_options, librmw), rmw_init_options_t, ())
end

function rmw_init_options_init(init_options, allocator)
    ccall((:rmw_init_options_init, librmw), rmw_ret_t, (Ptr{rmw_init_options_t}, rcutils_allocator_t), init_options, allocator)
end

function rmw_init_options_copy(src, dst)
    ccall((:rmw_init_options_copy, librmw), rmw_ret_t, (Ptr{rmw_init_options_t}, Ptr{rmw_init_options_t}), src, dst)
end

function rmw_init_options_fini(init_options)
    ccall((:rmw_init_options_fini, librmw), rmw_ret_t, (Ptr{rmw_init_options_t},), init_options)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/macros.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/names_and_types.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_zero_initialized_names_and_types()
    ccall((:rmw_get_zero_initialized_names_and_types, librmw), rmw_names_and_types_t, ())
end

function rmw_names_and_types_check_zero(names_and_types)
    ccall((:rmw_names_and_types_check_zero, librmw), rmw_ret_t, (Ptr{rmw_names_and_types_t},), names_and_types)
end

function rmw_names_and_types_init(names_and_types, size, allocator)
    ccall((:rmw_names_and_types_init, librmw), rmw_ret_t, (Ptr{rmw_names_and_types_t}, Csize_t, Ptr{rcutils_allocator_t}), names_and_types, size, allocator)
end

function rmw_names_and_types_fini(names_and_types)
    ccall((:rmw_names_and_types_fini, librmw), rmw_ret_t, (Ptr{rmw_names_and_types_t},), names_and_types)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/node_security_options.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_zero_initialized_node_security_options()
    ccall((:rmw_get_zero_initialized_node_security_options, librmw), rmw_node_security_options_t, ())
end

function rmw_get_default_node_security_options()
    ccall((:rmw_get_default_node_security_options, librmw), rmw_node_security_options_t, ())
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/qos_profiles.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/ret_types.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/rmw.h
# Automatically generated using Clang.jl wrap_c


function rmw_get_implementation_identifier()
    ccall((:rmw_get_implementation_identifier, librmw), Cstring, ())
end

function rmw_get_serialization_format()
    ccall((:rmw_get_serialization_format, librmw), Cstring, ())
end

function rmw_create_node(context, name, namespace_, domain_id, security_options)
    ccall((:rmw_create_node, librmw), Ptr{rmw_node_t}, (Ptr{rmw_context_t}, Cstring, Cstring, Csize_t, Ptr{rmw_node_security_options_t}), context, name, namespace_, domain_id, security_options)
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
    ccall((:rmw_publish, librmw), rmw_ret_t, (Ptr{rmw_publisher_t}, Ptr{Cvoid}), publisher, ros_message)
end

function rmw_publisher_count_matched_subscriptions(publisher, subscription_count)
    ccall((:rmw_publisher_count_matched_subscriptions, librmw), rmw_ret_t, (Ptr{rmw_publisher_t}, Ptr{Csize_t}), publisher, subscription_count)
end

function rmw_publish_serialized_message(publisher, serialized_message)
    ccall((:rmw_publish_serialized_message, librmw), rmw_ret_t, (Ptr{rmw_publisher_t}, Ptr{rmw_serialized_message_t}), publisher, serialized_message)
end

function rmw_serialize(ros_message, type_support, serialized_message)
    ccall((:rmw_serialize, librmw), rmw_ret_t, (Ptr{Cvoid}, Ptr{rosidl_message_type_support_t}, Ptr{rmw_serialized_message_t}), ros_message, type_support, serialized_message)
end

function rmw_deserialize(serialized_message, type_support, ros_message)
    ccall((:rmw_deserialize, librmw), rmw_ret_t, (Ptr{rmw_serialized_message_t}, Ptr{rosidl_message_type_support_t}, Ptr{Cvoid}), serialized_message, type_support, ros_message)
end

function rmw_create_subscription(node, type_support, topic_name, qos_policies, ignore_local_publications)
    ccall((:rmw_create_subscription, librmw), Ptr{rmw_subscription_t}, (Ptr{rmw_node_t}, Ptr{rosidl_message_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}, Bool), node, type_support, topic_name, qos_policies, ignore_local_publications)
end

function rmw_destroy_subscription(node, subscription)
    ccall((:rmw_destroy_subscription, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_subscription_t}), node, subscription)
end

function rmw_subscription_count_matched_publishers(subscription, publisher_count)
    ccall((:rmw_subscription_count_matched_publishers, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{Csize_t}), subscription, publisher_count)
end

function rmw_take(subscription, ros_message, taken)
    ccall((:rmw_take, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{Cvoid}, Ptr{Bool}), subscription, ros_message, taken)
end

function rmw_take_with_info(subscription, ros_message, taken, message_info)
    ccall((:rmw_take_with_info, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{Cvoid}, Ptr{Bool}, Ptr{rmw_message_info_t}), subscription, ros_message, taken, message_info)
end

function rmw_take_serialized_message(subscription, serialized_message, taken)
    ccall((:rmw_take_serialized_message, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{rmw_serialized_message_t}, Ptr{Bool}), subscription, serialized_message, taken)
end

function rmw_take_serialized_message_with_info(subscription, serialized_message, taken, message_info)
    ccall((:rmw_take_serialized_message_with_info, librmw), rmw_ret_t, (Ptr{rmw_subscription_t}, Ptr{rmw_serialized_message_t}, Ptr{Bool}, Ptr{rmw_message_info_t}), subscription, serialized_message, taken, message_info)
end

function rmw_create_client(node, type_support, service_name, qos_policies)
    ccall((:rmw_create_client, librmw), Ptr{rmw_client_t}, (Ptr{rmw_node_t}, Ptr{rosidl_service_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}), node, type_support, service_name, qos_policies)
end

function rmw_destroy_client(node, client)
    ccall((:rmw_destroy_client, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_client_t}), node, client)
end

function rmw_send_request(client, ros_request, sequence_id)
    ccall((:rmw_send_request, librmw), rmw_ret_t, (Ptr{rmw_client_t}, Ptr{Cvoid}, Ptr{Int64}), client, ros_request, sequence_id)
end

function rmw_take_response(client, request_header, ros_response, taken)
    ccall((:rmw_take_response, librmw), rmw_ret_t, (Ptr{rmw_client_t}, Ptr{rmw_request_id_t}, Ptr{Cvoid}, Ptr{Bool}), client, request_header, ros_response, taken)
end

function rmw_create_service(node, type_support, service_name, qos_policies)
    ccall((:rmw_create_service, librmw), Ptr{rmw_service_t}, (Ptr{rmw_node_t}, Ptr{rosidl_service_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}), node, type_support, service_name, qos_policies)
end

function rmw_destroy_service(node, service)
    ccall((:rmw_destroy_service, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_service_t}), node, service)
end

function rmw_take_request(service, request_header, ros_request, taken)
    ccall((:rmw_take_request, librmw), rmw_ret_t, (Ptr{rmw_service_t}, Ptr{rmw_request_id_t}, Ptr{Cvoid}, Ptr{Bool}), service, request_header, ros_request, taken)
end

function rmw_send_response(service, request_header, ros_response)
    ccall((:rmw_send_response, librmw), rmw_ret_t, (Ptr{rmw_service_t}, Ptr{rmw_request_id_t}, Ptr{Cvoid}), service, request_header, ros_response)
end

function rmw_create_guard_condition(context)
    ccall((:rmw_create_guard_condition, librmw), Ptr{rmw_guard_condition_t}, (Ptr{rmw_context_t},), context)
end

function rmw_destroy_guard_condition(guard_condition)
    ccall((:rmw_destroy_guard_condition, librmw), rmw_ret_t, (Ptr{rmw_guard_condition_t},), guard_condition)
end

function rmw_trigger_guard_condition(guard_condition)
    ccall((:rmw_trigger_guard_condition, librmw), rmw_ret_t, (Ptr{rmw_guard_condition_t},), guard_condition)
end

function rmw_create_wait_set(max_conditions)
    ccall((:rmw_create_wait_set, librmw), Ptr{rmw_wait_set_t}, (Csize_t,), max_conditions)
end

function rmw_destroy_wait_set(wait_set)
    ccall((:rmw_destroy_wait_set, librmw), rmw_ret_t, (Ptr{rmw_wait_set_t},), wait_set)
end

function rmw_wait(subscriptions, guard_conditions, services, clients, wait_set, wait_timeout)
    ccall((:rmw_wait, librmw), rmw_ret_t, (Ptr{rmw_subscriptions_t}, Ptr{rmw_guard_conditions_t}, Ptr{rmw_services_t}, Ptr{rmw_clients_t}, Ptr{rmw_wait_set_t}, Ptr{rmw_time_t}), subscriptions, guard_conditions, services, clients, wait_set, wait_timeout)
end

function rmw_get_node_names(node, node_names, node_namespaces)
    ccall((:rmw_get_node_names, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rcutils_string_array_t}, Ptr{rcutils_string_array_t}), node, node_names, node_namespaces)
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

function rmw_set_log_severity(severity)
    ccall((:rmw_set_log_severity, librmw), rmw_ret_t, (rmw_log_severity_t,), severity)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/sanity_checks.h
# Automatically generated using Clang.jl wrap_c


function rmw_check_zero_rmw_string_array(array)
    ccall((:rmw_check_zero_rmw_string_array, librmw), rmw_ret_t, (Ptr{rcutils_string_array_t},), array)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/serialized_message.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/types.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/validate_full_topic_name.h
# Automatically generated using Clang.jl wrap_c


function rmw_validate_full_topic_name(topic_name, validation_result, invalid_index)
    ccall((:rmw_validate_full_topic_name, librmw), rmw_ret_t, (Cstring, Ptr{Cint}, Ptr{Csize_t}), topic_name, validation_result, invalid_index)
end

function rmw_validate_full_topic_name_with_size(topic_name, topic_name_length, validation_result, invalid_index)
    ccall((:rmw_validate_full_topic_name_with_size, librmw), rmw_ret_t, (Cstring, Csize_t, Ptr{Cint}, Ptr{Csize_t}), topic_name, topic_name_length, validation_result, invalid_index)
end

function rmw_full_topic_name_validation_result_string(validation_result)
    ccall((:rmw_full_topic_name_validation_result_string, librmw), Cstring, (Cint,), validation_result)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/validate_namespace.h
# Automatically generated using Clang.jl wrap_c


function rmw_validate_namespace(namespace_, validation_result, invalid_index)
    ccall((:rmw_validate_namespace, librmw), rmw_ret_t, (Cstring, Ptr{Cint}, Ptr{Csize_t}), namespace_, validation_result, invalid_index)
end

function rmw_validate_namespace_with_size(namespace_, namespace_length, validation_result, invalid_index)
    ccall((:rmw_validate_namespace_with_size, librmw), rmw_ret_t, (Cstring, Csize_t, Ptr{Cint}, Ptr{Csize_t}), namespace_, namespace_length, validation_result, invalid_index)
end

function rmw_namespace_validation_result_string(validation_result)
    ccall((:rmw_namespace_validation_result_string, librmw), Cstring, (Cint,), validation_result)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/validate_node_name.h
# Automatically generated using Clang.jl wrap_c


function rmw_validate_node_name(node_name, validation_result, invalid_index)
    ccall((:rmw_validate_node_name, librmw), rmw_ret_t, (Cstring, Ptr{Cint}, Ptr{Csize_t}), node_name, validation_result, invalid_index)
end

function rmw_validate_node_name_with_size(node_name, node_name_length, validation_result, invalid_index)
    ccall((:rmw_validate_node_name_with_size, librmw), rmw_ret_t, (Cstring, Csize_t, Ptr{Cint}, Ptr{Csize_t}), node_name, node_name_length, validation_result, invalid_index)
end

function rmw_node_name_validation_result_string(validation_result)
    ccall((:rmw_node_name_validation_result_string, librmw), Cstring, (Cint,), validation_result)
end
# Julia wrapper for header: /opt/ros/crystal/include/rmw/visibility_control.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/impl/config.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/impl/cpp/demangle.hpp
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/impl/cpp/key_value.hpp
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rmw/impl/cpp/macros.hpp
# Automatically generated using Clang.jl wrap_c

