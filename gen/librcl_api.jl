# Julia wrapper for header: /opt/ros/crystal/include/rcl/allocator.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcl/arguments.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_arguments()
    ccall((:rcl_get_zero_initialized_arguments, librcl), rcl_arguments_t, ())
end

function rcl_parse_arguments(argc, argv, allocator, args_output)
    ccall((:rcl_parse_arguments, librcl), rcl_ret_t, (Cint, Ptr{Cstring}, rcl_allocator_t, Ptr{rcl_arguments_t}), argc, argv, allocator, args_output)
end

function rcl_arguments_get_count_unparsed(args)
    ccall((:rcl_arguments_get_count_unparsed, librcl), Cint, (Ptr{rcl_arguments_t},), args)
end

function rcl_arguments_get_unparsed(args, allocator, output_unparsed_indices)
    ccall((:rcl_arguments_get_unparsed, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Ptr{Cint}}), args, allocator, output_unparsed_indices)
end

function rcl_arguments_get_param_files_count(args)
    ccall((:rcl_arguments_get_param_files_count, librcl), Cint, (Ptr{rcl_arguments_t},), args)
end

function rcl_arguments_get_param_files(arguments, allocator, parameter_files)
    ccall((:rcl_arguments_get_param_files, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Ptr{Cstring}}), arguments, allocator, parameter_files)
end

function rcl_remove_ros_arguments(argv, args, allocator, nonros_argc, nonros_argv)
    ccall((:rcl_remove_ros_arguments, librcl), rcl_ret_t, (Ptr{Cstring}, Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Cint}, Ptr{Ptr{Cstring}}), argv, args, allocator, nonros_argc, nonros_argv)
end

function rcl_arguments_copy(args, args_out)
    ccall((:rcl_arguments_copy, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}), args, args_out)
end

function rcl_arguments_fini(args)
    ccall((:rcl_arguments_fini, librcl), rcl_ret_t, (Ptr{rcl_arguments_t},), args)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/client.h
# Automatically generated using Clang.jl wrap_c


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
    ccall((:rcl_send_request, librcl), rcl_ret_t, (Ptr{rcl_client_t}, Ptr{Cvoid}, Ptr{Int64}), client, ros_request, sequence_number)
end

function rcl_take_response(client, request_header, ros_response)
    ccall((:rcl_take_response, librcl), rcl_ret_t, (Ptr{rcl_client_t}, Ptr{rmw_request_id_t}, Ptr{Cvoid}), client, request_header, ros_response)
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

function rcl_client_is_valid(client)
    ccall((:rcl_client_is_valid, librcl), Bool, (Ptr{rcl_client_t},), client)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/context.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_context()
    ccall((:rcl_get_zero_initialized_context, librcl), rcl_context_t, ())
end

function rcl_context_fini(context)
    ccall((:rcl_context_fini, librcl), rcl_ret_t, (Ptr{rcl_context_t},), context)
end

function rcl_context_get_init_options(context)
    ccall((:rcl_context_get_init_options, librcl), Ptr{rcl_init_options_t}, (Ptr{rcl_context_t},), context)
end

function rcl_context_get_instance_id(context)
    ccall((:rcl_context_get_instance_id, librcl), rcl_context_instance_id_t, (Ptr{rcl_context_t},), context)
end

function rcl_context_is_valid(context)
    ccall((:rcl_context_is_valid, librcl), Bool, (Ptr{rcl_context_t},), context)
end

function rcl_context_get_rmw_context(context)
    ccall((:rcl_context_get_rmw_context, librcl), Ptr{rmw_context_t}, (Ptr{rcl_context_t},), context)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/error_handling.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcl/expand_topic_name.h
# Automatically generated using Clang.jl wrap_c


function rcl_expand_topic_name(input_topic_name, node_name, node_namespace, substitutions, allocator, output_topic_name)
    ccall((:rcl_expand_topic_name, librcl), rcl_ret_t, (Cstring, Cstring, Cstring, Ptr{rcutils_string_map_t}, rcl_allocator_t, Ptr{Cstring}), input_topic_name, node_name, node_namespace, substitutions, allocator, output_topic_name)
end

function rcl_get_default_topic_name_substitutions(string_map)
    ccall((:rcl_get_default_topic_name_substitutions, librcl), rcl_ret_t, (Ptr{rcutils_string_map_t},), string_map)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/graph.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_publisher_names_and_types_by_node(node, allocator, no_demangle, node_name, node_namespace, topic_names_and_types)
    ccall((:rcl_get_publisher_names_and_types_by_node, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}, Bool, Cstring, Cstring, Ptr{rcl_names_and_types_t}), node, allocator, no_demangle, node_name, node_namespace, topic_names_and_types)
end

function rcl_get_subscriber_names_and_types_by_node(node, allocator, no_demangle, node_name, node_namespace, topic_names_and_types)
    ccall((:rcl_get_subscriber_names_and_types_by_node, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}, Bool, Cstring, Cstring, Ptr{rcl_names_and_types_t}), node, allocator, no_demangle, node_name, node_namespace, topic_names_and_types)
end

function rcl_get_service_names_and_types_by_node(node, allocator, node_name, node_namespace, service_names_and_types)
    ccall((:rcl_get_service_names_and_types_by_node, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}, Cstring, Cstring, Ptr{rcl_names_and_types_t}), node, allocator, node_name, node_namespace, service_names_and_types)
end

function rcl_get_topic_names_and_types(node, allocator, no_demangle, topic_names_and_types)
    ccall((:rcl_get_topic_names_and_types, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}, Bool, Ptr{rcl_names_and_types_t}), node, allocator, no_demangle, topic_names_and_types)
end

function rcl_get_service_names_and_types(node, allocator, service_names_and_types)
    ccall((:rcl_get_service_names_and_types, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{rcl_allocator_t}, Ptr{rcl_names_and_types_t}), node, allocator, service_names_and_types)
end

function rcl_names_and_types_fini(names_and_types)
    ccall((:rcl_names_and_types_fini, librcl), rcl_ret_t, (Ptr{rcl_names_and_types_t},), names_and_types)
end

function rcl_get_node_names(node, allocator, node_names, node_namespaces)
    ccall((:rcl_get_node_names, librcl), rcl_ret_t, (Ptr{rcl_node_t}, rcl_allocator_t, Ptr{rcutils_string_array_t}, Ptr{rcutils_string_array_t}), node, allocator, node_names, node_namespaces)
end

function rcl_count_publishers(node, topic_name, count)
    ccall((:rcl_count_publishers, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Cstring, Ptr{Csize_t}), node, topic_name, count)
end

function rcl_count_subscribers(node, topic_name, count)
    ccall((:rcl_count_subscribers, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Cstring, Ptr{Csize_t}), node, topic_name, count)
end

function rcl_service_server_is_available(node, client, is_available)
    ccall((:rcl_service_server_is_available, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Ptr{rcl_client_t}, Ptr{Bool}), node, client, is_available)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/guard_condition.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_guard_condition()
    ccall((:rcl_get_zero_initialized_guard_condition, librcl), rcl_guard_condition_t, ())
end

function rcl_guard_condition_init(guard_condition, context, options)
    ccall((:rcl_guard_condition_init, librcl), rcl_ret_t, (Ptr{rcl_guard_condition_t}, Ptr{rcl_context_t}, rcl_guard_condition_options_t), guard_condition, context, options)
end

function rcl_guard_condition_init_from_rmw(guard_condition, rmw_guard_condition, context, options)
    ccall((:rcl_guard_condition_init_from_rmw, librcl), rcl_ret_t, (Ptr{rcl_guard_condition_t}, Ptr{rmw_guard_condition_t}, Ptr{rcl_context_t}, rcl_guard_condition_options_t), guard_condition, rmw_guard_condition, context, options)
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
# Julia wrapper for header: /opt/ros/crystal/include/rcl/init.h
# Automatically generated using Clang.jl wrap_c


function rcl_init(argc, argv, options, context)
    ccall((:rcl_init, librcl), rcl_ret_t, (Cint, Ptr{Cstring}, Ptr{rcl_init_options_t}, Ptr{rcl_context_t}), argc, argv, options, context)
end

function rcl_shutdown(context)
    ccall((:rcl_shutdown, librcl), rcl_ret_t, (Ptr{rcl_context_t},), context)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/init_options.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_init_options()
    ccall((:rcl_get_zero_initialized_init_options, librcl), rcl_init_options_t, ())
end

function rcl_init_options_init(init_options, allocator)
    ccall((:rcl_init_options_init, librcl), rcl_ret_t, (Ptr{rcl_init_options_t}, rcl_allocator_t), init_options, allocator)
end

function rcl_init_options_copy(src, dst)
    ccall((:rcl_init_options_copy, librcl), rcl_ret_t, (Ptr{rcl_init_options_t}, Ptr{rcl_init_options_t}), src, dst)
end

function rcl_init_options_fini(init_options)
    ccall((:rcl_init_options_fini, librcl), rcl_ret_t, (Ptr{rcl_init_options_t},), init_options)
end

function rcl_init_options_get_rmw_init_options(init_options)
    ccall((:rcl_init_options_get_rmw_init_options, librcl), Ptr{rmw_init_options_t}, (Ptr{rcl_init_options_t},), init_options)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/lexer.h
# Automatically generated using Clang.jl wrap_c


function rcl_lexer_analyze(text, lexeme, length)
    ccall((:rcl_lexer_analyze, librcl), rcl_ret_t, (Cstring, Ptr{rcl_lexeme_t}, Ptr{Csize_t}), text, lexeme, length)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/lexer_lookahead.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_lexer_lookahead2()
    ccall((:rcl_get_zero_initialized_lexer_lookahead2, librcl), rcl_lexer_lookahead2_t, ())
end

function rcl_lexer_lookahead2_init(buffer, text, allocator)
    ccall((:rcl_lexer_lookahead2_init, librcl), rcl_ret_t, (Ptr{rcl_lexer_lookahead2_t}, Cstring, rcl_allocator_t), buffer, text, allocator)
end

function rcl_lexer_lookahead2_fini(buffer)
    ccall((:rcl_lexer_lookahead2_fini, librcl), rcl_ret_t, (Ptr{rcl_lexer_lookahead2_t},), buffer)
end

function rcl_lexer_lookahead2_peek(buffer, next_type)
    ccall((:rcl_lexer_lookahead2_peek, librcl), rcl_ret_t, (Ptr{rcl_lexer_lookahead2_t}, Ptr{rcl_lexeme_t}), buffer, next_type)
end

function rcl_lexer_lookahead2_peek2(buffer, next_type1, next_type2)
    ccall((:rcl_lexer_lookahead2_peek2, librcl), rcl_ret_t, (Ptr{rcl_lexer_lookahead2_t}, Ptr{rcl_lexeme_t}, Ptr{rcl_lexeme_t}), buffer, next_type1, next_type2)
end

function rcl_lexer_lookahead2_accept(buffer, lexeme_text, lexeme_text_length)
    ccall((:rcl_lexer_lookahead2_accept, librcl), rcl_ret_t, (Ptr{rcl_lexer_lookahead2_t}, Ptr{Cstring}, Ptr{Csize_t}), buffer, lexeme_text, lexeme_text_length)
end

function rcl_lexer_lookahead2_expect(buffer, type, lexeme_text, lexeme_text_length)
    ccall((:rcl_lexer_lookahead2_expect, librcl), rcl_ret_t, (Ptr{rcl_lexer_lookahead2_t}, rcl_lexeme_t, Ptr{Cstring}, Ptr{Csize_t}), buffer, type, lexeme_text, lexeme_text_length)
end

function rcl_lexer_lookahead2_get_text(buffer)
    ccall((:rcl_lexer_lookahead2_get_text, librcl), Cstring, (Ptr{rcl_lexer_lookahead2_t},), buffer)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/logging.h
# Automatically generated using Clang.jl wrap_c


function rcl_logging_configure(global_args, allocator)
    ccall((:rcl_logging_configure, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, Ptr{rcl_allocator_t}), global_args, allocator)
end

function rcl_logging_fini()
    ccall((:rcl_logging_fini, librcl), rcl_ret_t, ())
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/logging_external_interface.h
# Automatically generated using Clang.jl wrap_c


function rcl_logging_external_initialize(config_file)
    ccall((:rcl_logging_external_initialize, librcl), rcl_ret_t, (Cstring,), config_file)
end

function rcl_logging_external_shutdown()
    ccall((:rcl_logging_external_shutdown, librcl), rcl_ret_t, ())
end

function rcl_logging_external_log(severity, name, msg)
    ccall((:rcl_logging_external_log, librcl), Cvoid, (Cint, Cstring, Cstring), severity, name, msg)
end

function rcl_logging_external_set_logger_level(name, level)
    ccall((:rcl_logging_external_set_logger_level, librcl), rcl_ret_t, (Cstring, Cint), name, level)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/logging_rosout.h
# Automatically generated using Clang.jl wrap_c


function rcl_logging_rosout_init(allocator)
    ccall((:rcl_logging_rosout_init, librcl), rcl_ret_t, (Ptr{rcl_allocator_t},), allocator)
end

function rcl_logging_rosout_fini()
    ccall((:rcl_logging_rosout_fini, librcl), rcl_ret_t, ())
end

function rcl_logging_rosout_init_publisher_for_node(node)
    ccall((:rcl_logging_rosout_init_publisher_for_node, librcl), rcl_ret_t, (Ptr{rcl_node_t},), node)
end

function rcl_logging_rosout_fini_publisher_for_node(node)
    ccall((:rcl_logging_rosout_fini_publisher_for_node, librcl), rcl_ret_t, (Ptr{rcl_node_t},), node)
end

# HACK: comment out because Clang.jl doesn't support va_list
# function rcl_logging_rosout_output_handler(location, severity, name, timestamp, format, args)
#     ccall((:rcl_logging_rosout_output_handler, librcl), Cvoid, (Ptr{rcutils_log_location_t}, Cint, Cstring, rcutils_time_point_value_t, Cstring, Ptr{va_list}), location, severity, name, timestamp, format, args)
# end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/macros.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcl/node.h
# Automatically generated using Clang.jl wrap_c


function rcl_node_get_default_options()
    ccall((:rcl_node_get_default_options, librcl), rcl_node_options_t, ())
end

function rcl_get_zero_initialized_node()
    ccall((:rcl_get_zero_initialized_node, librcl), rcl_node_t, ())
end

function rcl_node_init(node, name, namespace_, context, options)
    ccall((:rcl_node_init, librcl), rcl_ret_t, (Ptr{rcl_node_t}, Cstring, Cstring, Ptr{rcl_context_t}, Ptr{rcl_node_options_t}), node, name, namespace_, context, options)
end

function rcl_node_fini(node)
    ccall((:rcl_node_fini, librcl), rcl_ret_t, (Ptr{rcl_node_t},), node)
end

function rcl_node_options_copy(options, options_out)
    ccall((:rcl_node_options_copy, librcl), rcl_ret_t, (Ptr{rcl_node_options_t}, Ptr{rcl_node_options_t}), options, options_out)
end

function rcl_node_is_valid(node)
    ccall((:rcl_node_is_valid, librcl), Bool, (Ptr{rcl_node_t},), node)
end

function rcl_node_is_valid_except_context(node)
    ccall((:rcl_node_is_valid_except_context, librcl), Bool, (Ptr{rcl_node_t},), node)
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
    ccall((:rcl_node_get_graph_guard_condition, librcl), Ptr{rcl_guard_condition_t}, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_logger_name(node)
    ccall((:rcl_node_get_logger_name, librcl), Cstring, (Ptr{rcl_node_t},), node)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/publisher.h
# Automatically generated using Clang.jl wrap_c


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
    ccall((:rcl_publish, librcl), rcl_ret_t, (Ptr{rcl_publisher_t}, Ptr{Cvoid}), publisher, ros_message)
end

function rcl_publish_serialized_message(publisher, serialized_message)
    ccall((:rcl_publish_serialized_message, librcl), rcl_ret_t, (Ptr{rcl_publisher_t}, Ptr{rcl_serialized_message_t}), publisher, serialized_message)
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

function rcl_publisher_get_context(publisher)
    ccall((:rcl_publisher_get_context, librcl), Ptr{rcl_context_t}, (Ptr{rcl_publisher_t},), publisher)
end

function rcl_publisher_is_valid(publisher)
    ccall((:rcl_publisher_is_valid, librcl), Bool, (Ptr{rcl_publisher_t},), publisher)
end

function rcl_publisher_is_valid_except_context(publisher)
    ccall((:rcl_publisher_is_valid_except_context, librcl), Bool, (Ptr{rcl_publisher_t},), publisher)
end

function rcl_publisher_get_subscription_count(publisher, subscription_count)
    ccall((:rcl_publisher_get_subscription_count, librcl), rmw_ret_t, (Ptr{rcl_publisher_t}, Ptr{Csize_t}), publisher, subscription_count)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/rcl.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcl/remap.h
# Automatically generated using Clang.jl wrap_c


function rcl_remap_topic_name(local_arguments, global_arguments, topic_name, node_name, node_namespace, allocator, output_name)
    ccall((:rcl_remap_topic_name, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}, Cstring, Cstring, Cstring, rcl_allocator_t, Ptr{Cstring}), local_arguments, global_arguments, topic_name, node_name, node_namespace, allocator, output_name)
end

function rcl_remap_service_name(local_arguments, global_arguments, service_name, node_name, node_namespace, allocator, output_name)
    ccall((:rcl_remap_service_name, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}, Cstring, Cstring, Cstring, rcl_allocator_t, Ptr{Cstring}), local_arguments, global_arguments, service_name, node_name, node_namespace, allocator, output_name)
end

function rcl_remap_node_name(local_arguments, global_arguments, node_name, allocator, output_name)
    ccall((:rcl_remap_node_name, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}, Cstring, rcl_allocator_t, Ptr{Cstring}), local_arguments, global_arguments, node_name, allocator, output_name)
end

function rcl_remap_node_namespace(local_arguments, global_arguments, node_name, allocator, output_namespace)
    ccall((:rcl_remap_node_namespace, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}, Cstring, rcl_allocator_t, Ptr{Cstring}), local_arguments, global_arguments, node_name, allocator, output_namespace)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/service.h
# Automatically generated using Clang.jl wrap_c


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
    ccall((:rcl_take_request, librcl), rcl_ret_t, (Ptr{rcl_service_t}, Ptr{rmw_request_id_t}, Ptr{Cvoid}), service, request_header, ros_request)
end

function rcl_send_response(service, response_header, ros_response)
    ccall((:rcl_send_response, librcl), rcl_ret_t, (Ptr{rcl_service_t}, Ptr{rmw_request_id_t}, Ptr{Cvoid}), service, response_header, ros_response)
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

function rcl_service_is_valid(service)
    ccall((:rcl_service_is_valid, librcl), Bool, (Ptr{rcl_service_t},), service)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/subscription.h
# Automatically generated using Clang.jl wrap_c


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
    ccall((:rcl_take, librcl), rcl_ret_t, (Ptr{rcl_subscription_t}, Ptr{Cvoid}, Ptr{rmw_message_info_t}), subscription, ros_message, message_info)
end

function rcl_take_serialized_message(subscription, serialized_message, message_info)
    ccall((:rcl_take_serialized_message, librcl), rcl_ret_t, (Ptr{rcl_subscription_t}, Ptr{rcl_serialized_message_t}, Ptr{rmw_message_info_t}), subscription, serialized_message, message_info)
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

function rcl_subscription_is_valid(subscription)
    ccall((:rcl_subscription_is_valid, librcl), Bool, (Ptr{rcl_subscription_t},), subscription)
end

function rcl_subscription_get_publisher_count(subscription, publisher_count)
    ccall((:rcl_subscription_get_publisher_count, librcl), rmw_ret_t, (Ptr{rcl_subscription_t}, Ptr{Csize_t}), subscription, publisher_count)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/time.h
# Automatically generated using Clang.jl wrap_c


function rcl_clock_valid(clock)
    ccall((:rcl_clock_valid, librcl), Bool, (Ptr{rcl_clock_t},), clock)
end

function rcl_clock_init(clock_type, clock, allocator)
    ccall((:rcl_clock_init, librcl), rcl_ret_t, (rcl_clock_type_t, Ptr{rcl_clock_t}, Ptr{rcl_allocator_t}), clock_type, clock, allocator)
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

function rcl_clock_get_now(clock, time_point_value)
    ccall((:rcl_clock_get_now, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, Ptr{rcl_time_point_value_t}), clock, time_point_value)
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

function rcl_set_ros_time_override(clock, time_value)
    ccall((:rcl_set_ros_time_override, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, rcl_time_point_value_t), clock, time_value)
end

function rcl_clock_add_jump_callback(clock, threshold, callback, user_data)
    ccall((:rcl_clock_add_jump_callback, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, rcl_jump_threshold_t, rcl_jump_callback_t, Ptr{Cvoid}), clock, threshold, callback, user_data)
end

function rcl_clock_remove_jump_callback(clock, callback, user_data)
    ccall((:rcl_clock_remove_jump_callback, librcl), rcl_ret_t, (Ptr{rcl_clock_t}, rcl_jump_callback_t, Ptr{Cvoid}), clock, callback, user_data)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/timer.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_timer()
    ccall((:rcl_get_zero_initialized_timer, librcl), rcl_timer_t, ())
end

function rcl_timer_init(timer, clock, context, period, callback, allocator)
    ccall((:rcl_timer_init, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{rcl_clock_t}, Ptr{rcl_context_t}, Int64, rcl_timer_callback_t, rcl_allocator_t), timer, clock, context, period, callback, allocator)
end

function rcl_timer_fini(timer)
    ccall((:rcl_timer_fini, librcl), rcl_ret_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_call(timer)
    ccall((:rcl_timer_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_clock(timer, clock)
    ccall((:rcl_timer_clock, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Ptr{rcl_clock_t}}), timer, clock)
end

function rcl_timer_is_ready(timer, is_ready)
    ccall((:rcl_timer_is_ready, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Bool}), timer, is_ready)
end

function rcl_timer_get_time_until_next_call(timer, time_until_next_call)
    ccall((:rcl_timer_get_time_until_next_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Int64}), timer, time_until_next_call)
end

function rcl_timer_get_time_since_last_call(timer, time_since_last_call)
    ccall((:rcl_timer_get_time_since_last_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Int64}), timer, time_since_last_call)
end

function rcl_timer_get_period(timer, period)
    ccall((:rcl_timer_get_period, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Int64}), timer, period)
end

function rcl_timer_exchange_period(timer, new_period, old_period)
    ccall((:rcl_timer_exchange_period, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Int64, Ptr{Int64}), timer, new_period, old_period)
end

function rcl_timer_get_callback(timer)
    ccall((:rcl_timer_get_callback, librcl), rcl_timer_callback_t, (Ptr{rcl_timer_t},), timer)
end

function rcl_timer_exchange_callback(timer, new_callback)
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

function rcl_timer_get_guard_condition(timer)
    ccall((:rcl_timer_get_guard_condition, librcl), Ptr{rcl_guard_condition_t}, (Ptr{rcl_timer_t},), timer)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/types.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcl/validate_topic_name.h
# Automatically generated using Clang.jl wrap_c


function rcl_validate_topic_name(topic_name, validation_result, invalid_index)
    ccall((:rcl_validate_topic_name, librcl), rcl_ret_t, (Cstring, Ptr{Cint}, Ptr{Csize_t}), topic_name, validation_result, invalid_index)
end

function rcl_validate_topic_name_with_size(topic_name, topic_name_length, validation_result, invalid_index)
    ccall((:rcl_validate_topic_name_with_size, librcl), rcl_ret_t, (Cstring, Csize_t, Ptr{Cint}, Ptr{Csize_t}), topic_name, topic_name_length, validation_result, invalid_index)
end

function rcl_topic_name_validation_result_string(validation_result)
    ccall((:rcl_topic_name_validation_result_string, librcl), Cstring, (Cint,), validation_result)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcl/visibility_control.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcl/wait.h
# Automatically generated using Clang.jl wrap_c


function rcl_get_zero_initialized_wait_set()
    ccall((:rcl_get_zero_initialized_wait_set, librcl), rcl_wait_set_t, ())
end

function rcl_wait_set_init(wait_set, number_of_subscriptions, number_of_guard_conditions, number_of_timers, number_of_clients, number_of_services, allocator)
    ccall((:rcl_wait_set_init, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t, Csize_t, Csize_t, Csize_t, Csize_t, rcl_allocator_t), wait_set, number_of_subscriptions, number_of_guard_conditions, number_of_timers, number_of_clients, number_of_services, allocator)
end

function rcl_wait_set_fini(wait_set)
    ccall((:rcl_wait_set_fini, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_get_allocator(wait_set, allocator)
    ccall((:rcl_wait_set_get_allocator, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_allocator_t}), wait_set, allocator)
end

function rcl_wait_set_add_subscription(wait_set, subscription, index)
    ccall((:rcl_wait_set_add_subscription, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_subscription_t}, Ptr{Csize_t}), wait_set, subscription, index)
end

function rcl_wait_set_clear(wait_set)
    ccall((:rcl_wait_set_clear, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t},), wait_set)
end

function rcl_wait_set_resize(wait_set, subscriptions_size, guard_conditions_size, timers_size, clients_size, services_size)
    ccall((:rcl_wait_set_resize, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Csize_t, Csize_t, Csize_t, Csize_t, Csize_t), wait_set, subscriptions_size, guard_conditions_size, timers_size, clients_size, services_size)
end

function rcl_wait_set_add_guard_condition(wait_set, guard_condition, index)
    ccall((:rcl_wait_set_add_guard_condition, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_guard_condition_t}, Ptr{Csize_t}), wait_set, guard_condition, index)
end

function rcl_wait_set_add_timer(wait_set, timer, index)
    ccall((:rcl_wait_set_add_timer, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_timer_t}, Ptr{Csize_t}), wait_set, timer, index)
end

function rcl_wait_set_add_client(wait_set, client, index)
    ccall((:rcl_wait_set_add_client, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_client_t}, Ptr{Csize_t}), wait_set, client, index)
end

function rcl_wait_set_add_service(wait_set, service, index)
    ccall((:rcl_wait_set_add_service, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Ptr{rcl_service_t}, Ptr{Csize_t}), wait_set, service, index)
end

function rcl_wait(wait_set, timeout)
    ccall((:rcl_wait, librcl), rcl_ret_t, (Ptr{rcl_wait_set_t}, Int64), wait_set, timeout)
end
