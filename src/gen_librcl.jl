# Julia wrapper for header: /opt/ros/bouncy/include/rcutils/allocator.h
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
    ccall((:rcutils_reallocf, librcutils), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
end
# Julia wrapper for header: /opt/ros/bouncy/include/rcutils/error_handling.h
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
    ccall((:rcutils_reallocf, librcutils), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
end

function rcutils_error_state_copy(src, dst)
    ccall((:rcutils_error_state_copy, librcutils), rcutils_ret_t, (Ptr{rcutils_error_state_t}, Ptr{rcutils_error_state_t}), src, dst)
end

function rcutils_error_state_fini(error_state)
    ccall((:rcutils_error_state_fini, librcutils), Cvoid, (Ptr{rcutils_error_state_t},), error_state)
end

function rcutils_set_error_state(error_string, file, line_number::Csize_t, allocator::rcutils_allocator_t)
    ccall((:rcutils_set_error_state, librcutils), Cvoid, (Cstring, Cstring, Csize_t, rcutils_allocator_t), error_string, file, line_number, allocator)
end

function rcutils_error_is_set()
    ccall((:rcutils_error_is_set, librcutils), Bool, ())
end

function rcutils_get_error_state()
    ccall((:rcutils_get_error_state, librcutils), Ptr{rcutils_error_state_t}, ())
end

function rcutils_get_error_string()
    ccall((:rcutils_get_error_string, librcutils), Cstring, ())
end

function rcutils_get_error_string_safe()
    ccall((:rcutils_get_error_string_safe, librcutils), Cstring, ())
end

function rcutils_reset_error()
    ccall((:rcutils_reset_error, librcutils), Cvoid, ())
end
# Julia wrapper for header: /opt/ros/bouncy/include/rcl/node.h
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
    ccall((:rcutils_reallocf, librcutils), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
end

function rcutils_error_state_copy(src, dst)
    ccall((:rcutils_error_state_copy, librcutils), rcutils_ret_t, (Ptr{rcutils_error_state_t}, Ptr{rcutils_error_state_t}), src, dst)
end

function rcutils_error_state_fini(error_state)
    ccall((:rcutils_error_state_fini, librcutils), Cvoid, (Ptr{rcutils_error_state_t},), error_state)
end

function rcutils_set_error_state(error_string, file, line_number::Csize_t, allocator::rcutils_allocator_t)
    ccall((:rcutils_set_error_state, librcutils), Cvoid, (Cstring, Cstring, Csize_t, rcutils_allocator_t), error_string, file, line_number, allocator)
end

function rcutils_error_is_set()
    ccall((:rcutils_error_is_set, librcutils), Bool, ())
end

function rcutils_get_error_state()
    ccall((:rcutils_get_error_state, librcutils), Ptr{rcutils_error_state_t}, ())
end

function rcutils_get_error_string()
    ccall((:rcutils_get_error_string, librcutils), Cstring, ())
end

function rcutils_get_error_string_safe()
    ccall((:rcutils_get_error_string_safe, librcutils), Cstring, ())
end

function rcutils_reset_error()
    ccall((:rcutils_reset_error, librcutils), Cvoid, ())
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

function rcutils_time_point_value_as_nanoseconds_string(time_point, str, str_size::Csize_t)
    ccall((:rcutils_time_point_value_as_nanoseconds_string, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t}, Cstring, Csize_t), time_point, str, str_size)
end

function rcutils_time_point_value_as_seconds_string(time_point, str, str_size::Csize_t)
    ccall((:rcutils_time_point_value_as_seconds_string, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t}, Cstring, Csize_t), time_point, str, str_size)
end

function rcutils_logging_initialize_with_allocator(allocator::rcutils_allocator_t)
    ccall((:rcutils_logging_initialize_with_allocator, librcutils), rcutils_ret_t, (rcutils_allocator_t,), allocator)
end

function rcutils_logging_initialize()
    ccall((:rcutils_logging_initialize, librcutils), rcutils_ret_t, ())
end

function rcutils_logging_shutdown()
    ccall((:rcutils_logging_shutdown, librcutils), rcutils_ret_t, ())
end

function rcutils_logging_severity_level_from_string(severity_string, allocator::rcutils_allocator_t, severity)
    ccall((:rcutils_logging_severity_level_from_string, librcutils), rcutils_ret_t, (Cstring, rcutils_allocator_t, Ptr{Cint}), severity_string, allocator, severity)
end

function rcutils_logging_get_output_handler()
    ccall((:rcutils_logging_get_output_handler, librcutils), rcutils_logging_output_handler_t, ())
end

function rcutils_logging_set_output_handler(_function::rcutils_logging_output_handler_t)
    ccall((:rcutils_logging_set_output_handler, librcutils), Cvoid, (rcutils_logging_output_handler_t,), _function)
end

function rcutils_logging_get_default_logger_level()
    ccall((:rcutils_logging_get_default_logger_level, librcutils), Cint, ())
end

function rcutils_logging_set_default_logger_level(level::Cint)
    ccall((:rcutils_logging_set_default_logger_level, librcutils), Cvoid, (Cint,), level)
end

function rcutils_logging_get_logger_level(name)
    ccall((:rcutils_logging_get_logger_level, librcutils), Cint, (Cstring,), name)
end

function rcutils_logging_get_logger_leveln(name, name_length::Csize_t)
    ccall((:rcutils_logging_get_logger_leveln, librcutils), Cint, (Cstring, Csize_t), name, name_length)
end

function rcutils_logging_set_logger_level(name, level::Cint)
    ccall((:rcutils_logging_set_logger_level, librcutils), rcutils_ret_t, (Cstring, Cint), name, level)
end

function rcutils_logging_logger_is_enabled_for(name, severity::Cint)
    ccall((:rcutils_logging_logger_is_enabled_for, librcutils), Bool, (Cstring, Cint), name, severity)
end

function rcutils_logging_get_logger_effective_level(name)
    ccall((:rcutils_logging_get_logger_effective_level, librcutils), Cint, (Cstring,), name)
end

function rcutils_logging_console_output_handler(location, severity::Cint, name, timestamp::rcutils_time_point_value_t, format, args)
    ccall((:rcutils_logging_console_output_handler, librcutils), Cvoid, (Ptr{rcutils_log_location_t}, Cint, Cstring, rcutils_time_point_value_t, Cstring, Ptr{va_list}), location, severity, name, timestamp, format, args)
end

function rcl_get_zero_initialized_arguments()
    ccall((:rcl_get_zero_initialized_arguments, librcl), rcl_arguments_t, ())
end

function rcl_parse_arguments(argc::Cint, argv, allocator::rcl_allocator_t, args_output)
    ccall((:rcl_parse_arguments, librcl), rcl_ret_t, (Cint, Ptr{Cstring}, rcl_allocator_t, Ptr{rcl_arguments_t}), argc, argv, allocator, args_output)
end

function rcl_arguments_get_count_unparsed(args)
    ccall((:rcl_arguments_get_count_unparsed, librcl), Cint, (Ptr{rcl_arguments_t},), args)
end

function rcl_arguments_get_unparsed(args, allocator::rcl_allocator_t, output_unparsed_indices)
    ccall((:rcl_arguments_get_unparsed, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Ptr{Cint}}), args, allocator, output_unparsed_indices)
end

function rcl_arguments_get_param_files_count(args)
    ccall((:rcl_arguments_get_param_files_count, librcl), Cint, (Ptr{rcl_arguments_t},), args)
end

function rcl_arguments_get_param_files(arguments, allocator::rcl_allocator_t, parameter_files)
    ccall((:rcl_arguments_get_param_files, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Ptr{Cstring}}), arguments, allocator, parameter_files)
end

function rcl_remove_ros_arguments(argv, args, allocator::rcl_allocator_t, nonros_argc, nonros_argv)
    ccall((:rcl_remove_ros_arguments, librcl), rcl_ret_t, (Ptr{Cstring}, Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Cint}, Ptr{Ptr{Cstring}}), argv, args, allocator, nonros_argc, nonros_argv)
end

function rcl_arguments_copy(error_alloc::rcl_allocator_t, args, args_out)
    ccall((:rcl_arguments_copy, librcl), rcl_ret_t, (rcl_allocator_t, Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}), error_alloc, args, args_out)
end

function rcl_arguments_fini(args)
    ccall((:rcl_arguments_fini, librcl), rcl_ret_t, (Ptr{rcl_arguments_t},), args)
end

function rcl_get_global_arguments()
    ccall((:rcl_get_global_arguments, librcl), Ptr{rcl_arguments_t}, ())
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

function rcl_node_options_copy(error_alloc::rcl_allocator_t, options, options_out)
    ccall((:rcl_node_options_copy, librcl), rcl_ret_t, (rcl_allocator_t, Ptr{rcl_node_options_t}, Ptr{rcl_node_options_t}), error_alloc, options, options_out)
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
    ccall((:rcl_node_get_graph_guard_condition, librcl), Ptr{Cvoid}, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_logger_name(node)
    ccall((:rcl_node_get_logger_name, librcl), Cstring, (Ptr{rcl_node_t},), node)
end
# Julia wrapper for header: /opt/ros/bouncy/include/rcl/rcl.h
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
    ccall((:rcutils_reallocf, librcutils), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
end

function rcutils_error_state_copy(src, dst)
    ccall((:rcutils_error_state_copy, librcutils), rcutils_ret_t, (Ptr{rcutils_error_state_t}, Ptr{rcutils_error_state_t}), src, dst)
end

function rcutils_error_state_fini(error_state)
    ccall((:rcutils_error_state_fini, librcutils), Cvoid, (Ptr{rcutils_error_state_t},), error_state)
end

function rcutils_set_error_state(error_string, file, line_number::Csize_t, allocator::rcutils_allocator_t)
    ccall((:rcutils_set_error_state, librcutils), Cvoid, (Cstring, Cstring, Csize_t, rcutils_allocator_t), error_string, file, line_number, allocator)
end

function rcutils_error_is_set()
    ccall((:rcutils_error_is_set, librcutils), Bool, ())
end

function rcutils_get_error_state()
    ccall((:rcutils_get_error_state, librcutils), Ptr{rcutils_error_state_t}, ())
end

function rcutils_get_error_string()
    ccall((:rcutils_get_error_string, librcutils), Cstring, ())
end

function rcutils_get_error_string_safe()
    ccall((:rcutils_get_error_string_safe, librcutils), Cstring, ())
end

function rcutils_reset_error()
    ccall((:rcutils_reset_error, librcutils), Cvoid, ())
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

function rcutils_time_point_value_as_nanoseconds_string(time_point, str, str_size::Csize_t)
    ccall((:rcutils_time_point_value_as_nanoseconds_string, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t}, Cstring, Csize_t), time_point, str, str_size)
end

function rcutils_time_point_value_as_seconds_string(time_point, str, str_size::Csize_t)
    ccall((:rcutils_time_point_value_as_seconds_string, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t}, Cstring, Csize_t), time_point, str, str_size)
end

function rcutils_logging_initialize_with_allocator(allocator::rcutils_allocator_t)
    ccall((:rcutils_logging_initialize_with_allocator, librcutils), rcutils_ret_t, (rcutils_allocator_t,), allocator)
end

function rcutils_logging_initialize()
    ccall((:rcutils_logging_initialize, librcutils), rcutils_ret_t, ())
end

function rcutils_logging_shutdown()
    ccall((:rcutils_logging_shutdown, librcutils), rcutils_ret_t, ())
end

function rcutils_logging_severity_level_from_string(severity_string, allocator::rcutils_allocator_t, severity)
    ccall((:rcutils_logging_severity_level_from_string, librcutils), rcutils_ret_t, (Cstring, rcutils_allocator_t, Ptr{Cint}), severity_string, allocator, severity)
end

function rcutils_logging_get_output_handler()
    ccall((:rcutils_logging_get_output_handler, librcutils), rcutils_logging_output_handler_t, ())
end

function rcutils_logging_set_output_handler(_function::rcutils_logging_output_handler_t)
    ccall((:rcutils_logging_set_output_handler, librcutils), Cvoid, (rcutils_logging_output_handler_t,), _function)
end

function rcutils_logging_get_default_logger_level()
    ccall((:rcutils_logging_get_default_logger_level, librcutils), Cint, ())
end

function rcutils_logging_set_default_logger_level(level::Cint)
    ccall((:rcutils_logging_set_default_logger_level, librcutils), Cvoid, (Cint,), level)
end

function rcutils_logging_get_logger_level(name)
    ccall((:rcutils_logging_get_logger_level, librcutils), Cint, (Cstring,), name)
end

function rcutils_logging_get_logger_leveln(name, name_length::Csize_t)
    ccall((:rcutils_logging_get_logger_leveln, librcutils), Cint, (Cstring, Csize_t), name, name_length)
end

function rcutils_logging_set_logger_level(name, level::Cint)
    ccall((:rcutils_logging_set_logger_level, librcutils), rcutils_ret_t, (Cstring, Cint), name, level)
end

function rcutils_logging_logger_is_enabled_for(name, severity::Cint)
    ccall((:rcutils_logging_logger_is_enabled_for, librcutils), Bool, (Cstring, Cint), name, severity)
end

function rcutils_logging_get_logger_effective_level(name)
    ccall((:rcutils_logging_get_logger_effective_level, librcutils), Cint, (Cstring,), name)
end

function rcutils_logging_console_output_handler(location, severity::Cint, name, timestamp::rcutils_time_point_value_t, format, args)
    ccall((:rcutils_logging_console_output_handler, librcutils), Cvoid, (Ptr{rcutils_log_location_t}, Cint, Cstring, rcutils_time_point_value_t, Cstring, Ptr{va_list}), location, severity, name, timestamp, format, args)
end

function rcl_get_zero_initialized_arguments()
    ccall((:rcl_get_zero_initialized_arguments, librcl), rcl_arguments_t, ())
end

function rcl_parse_arguments(argc::Cint, argv, allocator::rcl_allocator_t, args_output)
    ccall((:rcl_parse_arguments, librcl), rcl_ret_t, (Cint, Ptr{Cstring}, rcl_allocator_t, Ptr{rcl_arguments_t}), argc, argv, allocator, args_output)
end

function rcl_arguments_get_count_unparsed(args)
    ccall((:rcl_arguments_get_count_unparsed, librcl), Cint, (Ptr{rcl_arguments_t},), args)
end

function rcl_arguments_get_unparsed(args, allocator::rcl_allocator_t, output_unparsed_indices)
    ccall((:rcl_arguments_get_unparsed, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Ptr{Cint}}), args, allocator, output_unparsed_indices)
end

function rcl_arguments_get_param_files_count(args)
    ccall((:rcl_arguments_get_param_files_count, librcl), Cint, (Ptr{rcl_arguments_t},), args)
end

function rcl_arguments_get_param_files(arguments, allocator::rcl_allocator_t, parameter_files)
    ccall((:rcl_arguments_get_param_files, librcl), rcl_ret_t, (Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Ptr{Cstring}}), arguments, allocator, parameter_files)
end

function rcl_remove_ros_arguments(argv, args, allocator::rcl_allocator_t, nonros_argc, nonros_argv)
    ccall((:rcl_remove_ros_arguments, librcl), rcl_ret_t, (Ptr{Cstring}, Ptr{rcl_arguments_t}, rcl_allocator_t, Ptr{Cint}, Ptr{Ptr{Cstring}}), argv, args, allocator, nonros_argc, nonros_argv)
end

function rcl_arguments_copy(error_alloc::rcl_allocator_t, args, args_out)
    ccall((:rcl_arguments_copy, librcl), rcl_ret_t, (rcl_allocator_t, Ptr{rcl_arguments_t}, Ptr{rcl_arguments_t}), error_alloc, args, args_out)
end

function rcl_arguments_fini(args)
    ccall((:rcl_arguments_fini, librcl), rcl_ret_t, (Ptr{rcl_arguments_t},), args)
end

function rcl_get_global_arguments()
    ccall((:rcl_get_global_arguments, librcl), Ptr{rcl_arguments_t}, ())
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

function rcl_node_options_copy(error_alloc::rcl_allocator_t, options, options_out)
    ccall((:rcl_node_options_copy, librcl), rcl_ret_t, (rcl_allocator_t, Ptr{rcl_node_options_t}, Ptr{rcl_node_options_t}), error_alloc, options, options_out)
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
    ccall((:rcl_node_get_graph_guard_condition, librcl), Ptr{Cvoid}, (Ptr{rcl_node_t},), node)
end

function rcl_node_get_logger_name(node)
    ccall((:rcl_node_get_logger_name, librcl), Cstring, (Ptr{rcl_node_t},), node)
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

function rcl_service_is_valid(service, error_msg_allocator)
    ccall((:rcl_service_is_valid, librcl), Bool, (Ptr{rcl_service_t}, Ptr{rcl_allocator_t}), service, error_msg_allocator)
end

function rcl_clock_valid(clock)
    ccall((:rcl_clock_valid, librcl), Bool, (Ptr{rcl_clock_t},), clock)
end

function rcl_clock_init(clock_type::Cvoid, clock, allocator)
    ccall((:rcl_clock_init, librcl), rcl_ret_t, (Cvoid, Ptr{rcl_clock_t}, Ptr{rcl_allocator_t}), clock_type, clock, allocator)
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
    ccall((:rmw_publish, librmw), rmw_ret_t, (Ptr{rmw_publisher_t}, Ptr{Cvoid}), publisher, ros_message)
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

function rmw_create_subscription(node, type_support, topic_name, qos_policies, ignore_local_publications::Bool)
    ccall((:rmw_create_subscription, librmw), Ptr{rmw_subscription_t}, (Ptr{rmw_node_t}, Ptr{rosidl_message_type_support_t}, Cstring, Ptr{rmw_qos_profile_t}, Bool), node, type_support, topic_name, qos_policies, ignore_local_publications)
end

function rmw_destroy_subscription(node, subscription)
    ccall((:rmw_destroy_subscription, librmw), rmw_ret_t, (Ptr{rmw_node_t}, Ptr{rmw_subscription_t}), node, subscription)
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

function rmw_set_log_severity(severity::rmw_log_severity_t)
    ccall((:rmw_set_log_severity, librmw), rmw_ret_t, (rmw_log_severity_t,), severity)
end

function rcl_get_zero_initialized_timer()
    ccall((:rcl_get_zero_initialized_timer, librcl), rcl_timer_t, ())
end

function rcl_timer_init(timer, period::Int64, callback::rcl_timer_callback_t, allocator::rcl_allocator_t)
    ccall((:rcl_timer_init, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Int64, rcl_timer_callback_t, rcl_allocator_t), timer, period, callback, allocator)
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
    ccall((:rcl_timer_get_time_since_last_call, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Int64}), timer, time_since_last_call)
end

function rcl_timer_get_period(timer, period)
    ccall((:rcl_timer_get_period, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Ptr{Int64}), timer, period)
end

function rcl_timer_exchange_period(timer, new_period::Int64, old_period)
    ccall((:rcl_timer_exchange_period, librcl), rcl_ret_t, (Ptr{rcl_timer_t}, Int64, Ptr{Int64}), timer, new_period, old_period)
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
