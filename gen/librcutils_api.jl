# Julia wrapper for header: /opt/ros/crystal/include/rcutils/allocator.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_zero_initialized_allocator()
    ccall((:rcutils_get_zero_initialized_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_get_default_allocator()
    ccall((:rcutils_get_default_allocator, librcutils), rcutils_allocator_t, ())
end

function rcutils_allocator_is_valid(allocator)
    ccall((:rcutils_allocator_is_valid, librcutils), Bool, (Ptr{rcutils_allocator_t},), allocator)
end

function rcutils_reallocf(pointer, size, allocator)
    ccall((:rcutils_reallocf, librcutils), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t, Ptr{rcutils_allocator_t}), pointer, size, allocator)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/cmdline_parser.h
# Automatically generated using Clang.jl wrap_c


function rcutils_cli_option_exist(_begin, _end, option)
    ccall((:rcutils_cli_option_exist, librcutils), Bool, (Ptr{Cstring}, Ptr{Cstring}, Cstring), _begin, _end, option)
end

function rcutils_cli_get_option(_begin, _end, option)
    ccall((:rcutils_cli_get_option, librcutils), Cstring, (Ptr{Cstring}, Ptr{Cstring}, Cstring), _begin, _end, option)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/error_handling.h
# Automatically generated using Clang.jl wrap_c


function rcutils_initialize_error_handling_thread_local_storage(allocator)
    ccall((:rcutils_initialize_error_handling_thread_local_storage, librcutils), rcutils_ret_t, (rcutils_allocator_t,), allocator)
end

function rcutils_set_error_state(error_string, file, line_number)
    ccall((:rcutils_set_error_state, librcutils), Cvoid, (Cstring, Cstring, Csize_t), error_string, file, line_number)
end

function rcutils_error_is_set()
    ccall((:rcutils_error_is_set, librcutils), Bool, ())
end

function rcutils_get_error_state()
    ccall((:rcutils_get_error_state, librcutils), Ptr{rcutils_error_state_t}, ())
end

function rcutils_get_error_string()
    ccall((:rcutils_get_error_string, librcutils), rcutils_error_string_t, ())
end

function rcutils_reset_error()
    ccall((:rcutils_reset_error, librcutils), Cvoid, ())
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/filesystem.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_cwd(buffer, max_length)
    ccall((:rcutils_get_cwd, librcutils), Bool, (Cstring, Csize_t), buffer, max_length)
end

function rcutils_is_directory(abs_path)
    ccall((:rcutils_is_directory, librcutils), Bool, (Cstring,), abs_path)
end

function rcutils_is_file(abs_path)
    ccall((:rcutils_is_file, librcutils), Bool, (Cstring,), abs_path)
end

function rcutils_exists(abs_path)
    ccall((:rcutils_exists, librcutils), Bool, (Cstring,), abs_path)
end

function rcutils_is_readable(abs_path)
    ccall((:rcutils_is_readable, librcutils), Bool, (Cstring,), abs_path)
end

function rcutils_is_writable(abs_path)
    ccall((:rcutils_is_writable, librcutils), Bool, (Cstring,), abs_path)
end

function rcutils_is_readable_and_writable(abs_path)
    ccall((:rcutils_is_readable_and_writable, librcutils), Bool, (Cstring,), abs_path)
end

function rcutils_join_path(left_hand_path, right_hand_path, allocator)
    ccall((:rcutils_join_path, librcutils), Cstring, (Cstring, Cstring, rcutils_allocator_t), left_hand_path, right_hand_path, allocator)
end

function rcutils_to_native_path(path, allocator)
    ccall((:rcutils_to_native_path, librcutils), Cstring, (Cstring, rcutils_allocator_t), path, allocator)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/find.h
# Automatically generated using Clang.jl wrap_c


function rcutils_find(str, delimiter)
    ccall((:rcutils_find, librcutils), Csize_t, (Cstring, UInt8), str, delimiter)
end

function rcutils_findn(str, delimiter, string_length)
    ccall((:rcutils_findn, librcutils), Csize_t, (Cstring, UInt8, Csize_t), str, delimiter, string_length)
end

function rcutils_find_last(str, delimiter)
    ccall((:rcutils_find_last, librcutils), Csize_t, (Cstring, UInt8), str, delimiter)
end

function rcutils_find_lastn(str, delimiter, string_length)
    ccall((:rcutils_find_lastn, librcutils), Csize_t, (Cstring, UInt8, Csize_t), str, delimiter, string_length)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/format_string.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/get_env.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_env(env_name, env_value)
    ccall((:rcutils_get_env, librcutils), Cstring, (Cstring, Ptr{Cstring}), env_name, env_value)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/isalnum_no_locale.h
# Automatically generated using Clang.jl wrap_c


function rcutils_isalnum_no_locale()
    ccall((:rcutils_isalnum_no_locale, librcutils), Cint, ())
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/logging.h
# Automatically generated using Clang.jl wrap_c


function rcutils_logging_initialize_with_allocator(allocator)
    ccall((:rcutils_logging_initialize_with_allocator, librcutils), rcutils_ret_t, (rcutils_allocator_t,), allocator)
end

function rcutils_logging_initialize()
    ccall((:rcutils_logging_initialize, librcutils), rcutils_ret_t, ())
end

function rcutils_logging_shutdown()
    ccall((:rcutils_logging_shutdown, librcutils), rcutils_ret_t, ())
end

function rcutils_logging_severity_level_from_string(severity_string, allocator, severity)
    ccall((:rcutils_logging_severity_level_from_string, librcutils), rcutils_ret_t, (Cstring, rcutils_allocator_t, Ptr{Cint}), severity_string, allocator, severity)
end

function rcutils_logging_get_output_handler()
    ccall((:rcutils_logging_get_output_handler, librcutils), rcutils_logging_output_handler_t, ())
end

function rcutils_logging_set_output_handler(_function)
    ccall((:rcutils_logging_set_output_handler, librcutils), Cvoid, (rcutils_logging_output_handler_t,), _function)
end

function rcutils_logging_format_message(location, severity, name, timestamp, msg, logging_output)
    ccall((:rcutils_logging_format_message, librcutils), rcutils_ret_t, (Ptr{rcutils_log_location_t}, Cint, Cstring, rcutils_time_point_value_t, Cstring, Ptr{rcutils_char_array_t}), location, severity, name, timestamp, msg, logging_output)
end

function rcutils_logging_get_default_logger_level()
    ccall((:rcutils_logging_get_default_logger_level, librcutils), Cint, ())
end

function rcutils_logging_set_default_logger_level(level)
    ccall((:rcutils_logging_set_default_logger_level, librcutils), Cvoid, (Cint,), level)
end

function rcutils_logging_get_logger_level(name)
    ccall((:rcutils_logging_get_logger_level, librcutils), Cint, (Cstring,), name)
end

function rcutils_logging_get_logger_leveln(name, name_length)
    ccall((:rcutils_logging_get_logger_leveln, librcutils), Cint, (Cstring, Csize_t), name, name_length)
end

function rcutils_logging_set_logger_level(name, level)
    ccall((:rcutils_logging_set_logger_level, librcutils), rcutils_ret_t, (Cstring, Cint), name, level)
end

function rcutils_logging_logger_is_enabled_for(name, severity)
    ccall((:rcutils_logging_logger_is_enabled_for, librcutils), Bool, (Cstring, Cint), name, severity)
end

function rcutils_logging_get_logger_effective_level(name)
    ccall((:rcutils_logging_get_logger_effective_level, librcutils), Cint, (Cstring,), name)
end

# HACK: comment out because Clang.jl doesn't support va_list
# function rcutils_logging_console_output_handler(location, severity, name, timestamp, format, args)
#     ccall((:rcutils_logging_console_output_handler, librcutils), Cvoid, (Ptr{rcutils_log_location_t}, Cint, Cstring, rcutils_time_point_value_t, Cstring, Ptr{va_list}), location, severity, name, timestamp, format, args)
# end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/logging_macros.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/macros.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/repl_str.h
# Automatically generated using Clang.jl wrap_c


function rcutils_repl_str(str, from, to, allocator)
    ccall((:rcutils_repl_str, librcutils), Cstring, (Cstring, Cstring, Cstring, Ptr{rcutils_allocator_t}), str, from, to, allocator)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/snprintf.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/split.h
# Automatically generated using Clang.jl wrap_c


function rcutils_split(str, delimiter, allocator, string_array)
    ccall((:rcutils_split, librcutils), rcutils_ret_t, (Cstring, UInt8, rcutils_allocator_t, Ptr{rcutils_string_array_t}), str, delimiter, allocator, string_array)
end

function rcutils_split_last(str, delimiter, allocator, string_array)
    ccall((:rcutils_split_last, librcutils), rcutils_ret_t, (Cstring, UInt8, rcutils_allocator_t, Ptr{rcutils_string_array_t}), str, delimiter, allocator, string_array)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/stdatomic_helper.h
# Automatically generated using Clang.jl wrap_c


function rcutils_atomic_load_bool(a_bool)
    ccall((:rcutils_atomic_load_bool, librcutils), Bool, (Ptr{atomic_bool},), a_bool)
end

function rcutils_atomic_load_int64_t(a_int64_t)
    ccall((:rcutils_atomic_load_int64_t, librcutils), Int64, (Ptr{atomic_int_least64_t},), a_int64_t)
end

function rcutils_atomic_load_uint64_t(a_uint64_t)
    ccall((:rcutils_atomic_load_uint64_t, librcutils), UInt64, (Ptr{atomic_uint_least64_t},), a_uint64_t)
end

function rcutils_atomic_load_uintptr_t(a_uintptr_t)
    ccall((:rcutils_atomic_load_uintptr_t, librcutils), Csize_t, (Ptr{atomic_uintptr_t},), a_uintptr_t)
end

function rcutils_atomic_compare_exchange_strong_uint_least64_t(a_uint_least64_t, expected, desired)
    ccall((:rcutils_atomic_compare_exchange_strong_uint_least64_t, librcutils), Bool, (Ptr{atomic_uint_least64_t}, Ptr{UInt64}, UInt64), a_uint_least64_t, expected, desired)
end

function rcutils_atomic_exchange_bool(a_bool, desired)
    ccall((:rcutils_atomic_exchange_bool, librcutils), Bool, (Ptr{atomic_bool}, Bool), a_bool, desired)
end

function rcutils_atomic_exchange_int64_t(a_int64_t, desired)
    ccall((:rcutils_atomic_exchange_int64_t, librcutils), Int64, (Ptr{atomic_int_least64_t}, Int64), a_int64_t, desired)
end

function rcutils_atomic_exchange_uint64_t(a_uint64_t, desired)
    ccall((:rcutils_atomic_exchange_uint64_t, librcutils), UInt64, (Ptr{atomic_uint_least64_t}, UInt64), a_uint64_t, desired)
end

function rcutils_atomic_exchange_uintptr_t(a_uintptr_t, desired)
    ccall((:rcutils_atomic_exchange_uintptr_t, librcutils), Csize_t, (Ptr{atomic_uintptr_t}, Csize_t), a_uintptr_t, desired)
end

function rcutils_atomic_fetch_add_uint64_t(a_uint64_t, arg)
    ccall((:rcutils_atomic_fetch_add_uint64_t, librcutils), UInt64, (Ptr{atomic_uint_least64_t}, UInt64), a_uint64_t, arg)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/strdup.h
# Automatically generated using Clang.jl wrap_c


function rcutils_strdup(str, allocator)
    ccall((:rcutils_strdup, librcutils), Cstring, (Cstring, rcutils_allocator_t), str, allocator)
end

function rcutils_strndup(str, string_length, allocator)
    ccall((:rcutils_strndup, librcutils), Cstring, (Cstring, Csize_t, rcutils_allocator_t), str, string_length, allocator)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/time.h
# Automatically generated using Clang.jl wrap_c


function rcutils_system_time_now(now)
    ccall((:rcutils_system_time_now, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t},), now)
end

function rcutils_steady_time_now(now)
    ccall((:rcutils_steady_time_now, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t},), now)
end

function rcutils_time_point_value_as_nanoseconds_string(time_point, str, str_size)
    ccall((:rcutils_time_point_value_as_nanoseconds_string, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t}, Cstring, Csize_t), time_point, str, str_size)
end

function rcutils_time_point_value_as_seconds_string(time_point, str, str_size)
    ccall((:rcutils_time_point_value_as_seconds_string, librcutils), rcutils_ret_t, (Ptr{rcutils_time_point_value_t}, Cstring, Csize_t), time_point, str, str_size)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/visibility_control.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/stdatomic_helper/gcc/stdatomic.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/stdatomic_helper/win32/stdatomic.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/array_list.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_zero_initialized_array_list()
    ccall((:rcutils_get_zero_initialized_array_list, librcutils), rcutils_array_list_t, ())
end

function rcutils_array_list_init(array_list, initial_capacity, data_size, allocator)
    ccall((:rcutils_array_list_init, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t}, Csize_t, Csize_t, Ptr{rcutils_allocator_t}), array_list, initial_capacity, data_size, allocator)
end

function rcutils_array_list_fini(array_list)
    ccall((:rcutils_array_list_fini, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t},), array_list)
end

function rcutils_array_list_add(array_list, data)
    ccall((:rcutils_array_list_add, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t}, Ptr{Cvoid}), array_list, data)
end

function rcutils_array_list_set(array_list, index, data)
    ccall((:rcutils_array_list_set, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t}, Csize_t, Ptr{Cvoid}), array_list, index, data)
end

function rcutils_array_list_remove(array_list, index)
    ccall((:rcutils_array_list_remove, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t}, Csize_t), array_list, index)
end

function rcutils_array_list_get(array_list, index, data)
    ccall((:rcutils_array_list_get, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t}, Csize_t, Ptr{Cvoid}), array_list, index, data)
end

function rcutils_array_list_get_size(array_list, size)
    ccall((:rcutils_array_list_get_size, librcutils), rcutils_ret_t, (Ptr{rcutils_array_list_t}, Ptr{Csize_t}), array_list, size)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/char_array.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_zero_initialized_char_array()
    ccall((:rcutils_get_zero_initialized_char_array, librcutils), rcutils_char_array_t, ())
end

function rcutils_char_array_init(char_array, buffer_capacity, allocator)
    ccall((:rcutils_char_array_init, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Csize_t, Ptr{rcutils_allocator_t}), char_array, buffer_capacity, allocator)
end

function rcutils_char_array_fini(char_array)
    ccall((:rcutils_char_array_fini, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t},), char_array)
end

function rcutils_char_array_resize(char_array, new_size)
    ccall((:rcutils_char_array_resize, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Csize_t), char_array, new_size)
end

function rcutils_char_array_expand_as_needed(char_array, new_size)
    ccall((:rcutils_char_array_expand_as_needed, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Csize_t), char_array, new_size)
end

function rcutils_char_array_strncat(char_array, src, n)
    ccall((:rcutils_char_array_strncat, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Cstring, Csize_t), char_array, src, n)
end

function rcutils_char_array_strcat(char_array, src)
    ccall((:rcutils_char_array_strcat, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Cstring), char_array, src)
end

function rcutils_char_array_memcpy(char_array, src, n)
    ccall((:rcutils_char_array_memcpy, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Cstring, Csize_t), char_array, src, n)
end

function rcutils_char_array_strcpy(char_array, src)
    ccall((:rcutils_char_array_strcpy, librcutils), rcutils_ret_t, (Ptr{rcutils_char_array_t}, Cstring), char_array, src)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/hash_map.h
# Automatically generated using Clang.jl wrap_c


function rcutils_hash_map_string_hash_func(key_str)
    ccall((:rcutils_hash_map_string_hash_func, librcutils), Csize_t, (Ptr{Cvoid},), key_str)
end

function rcutils_hash_map_string_cmp_func(val1, val2)
    ccall((:rcutils_hash_map_string_cmp_func, librcutils), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), val1, val2)
end

function rcutils_get_zero_initialized_hash_map()
    ccall((:rcutils_get_zero_initialized_hash_map, librcutils), rcutils_hash_map_t, ())
end

function rcutils_hash_map_init(hash_map, initial_capacity, key_size, data_size, key_hashing_func, key_cmp_func, allocator)
    ccall((:rcutils_hash_map_init, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Csize_t, Csize_t, Csize_t, rcutils_hash_map_key_hasher_t, rcutils_hash_map_key_cmp_t, Ptr{rcutils_allocator_t}), hash_map, initial_capacity, key_size, data_size, key_hashing_func, key_cmp_func, allocator)
end

function rcutils_hash_map_fini(hash_map)
    ccall((:rcutils_hash_map_fini, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t},), hash_map)
end

function rcutils_hash_map_get_capacity(hash_map, capacity)
    ccall((:rcutils_hash_map_get_capacity, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Ptr{Csize_t}), hash_map, capacity)
end

function rcutils_hash_map_get_size(hash_map, size)
    ccall((:rcutils_hash_map_get_size, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Ptr{Csize_t}), hash_map, size)
end

function rcutils_hash_map_set(hash_map, key, value)
    ccall((:rcutils_hash_map_set, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Ptr{Cvoid}, Ptr{Cvoid}), hash_map, key, value)
end

function rcutils_hash_map_unset(hash_map, key)
    ccall((:rcutils_hash_map_unset, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Ptr{Cvoid}), hash_map, key)
end

function rcutils_hash_map_key_exists(hash_map, key)
    ccall((:rcutils_hash_map_key_exists, librcutils), Bool, (Ptr{rcutils_hash_map_t}, Ptr{Cvoid}), hash_map, key)
end

function rcutils_hash_map_get(hash_map, key, data)
    ccall((:rcutils_hash_map_get, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Ptr{Cvoid}, Ptr{Cvoid}), hash_map, key, data)
end

function rcutils_hash_map_get_next_key_and_data(hash_map, previous_key, key, data)
    ccall((:rcutils_hash_map_get_next_key_and_data, librcutils), rcutils_ret_t, (Ptr{rcutils_hash_map_t}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}), hash_map, previous_key, key, data)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/rcutils_ret.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/string_array.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_zero_initialized_string_array()
    ccall((:rcutils_get_zero_initialized_string_array, librcutils), rcutils_string_array_t, ())
end

function rcutils_string_array_init(string_array, size, allocator)
    ccall((:rcutils_string_array_init, librcutils), rcutils_ret_t, (Ptr{rcutils_string_array_t}, Csize_t, Ptr{rcutils_allocator_t}), string_array, size, allocator)
end

function rcutils_string_array_fini(string_array)
    ccall((:rcutils_string_array_fini, librcutils), rcutils_ret_t, (Ptr{rcutils_string_array_t},), string_array)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/string_map.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_zero_initialized_string_map()
    ccall((:rcutils_get_zero_initialized_string_map, librcutils), rcutils_string_map_t, ())
end

function rcutils_string_map_init(string_map, initial_capacity, allocator)
    ccall((:rcutils_string_map_init, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Csize_t, rcutils_allocator_t), string_map, initial_capacity, allocator)
end

function rcutils_string_map_fini(string_map)
    ccall((:rcutils_string_map_fini, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t},), string_map)
end

function rcutils_string_map_get_capacity(string_map, capacity)
    ccall((:rcutils_string_map_get_capacity, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Ptr{Csize_t}), string_map, capacity)
end

function rcutils_string_map_get_size(string_map, size)
    ccall((:rcutils_string_map_get_size, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Ptr{Csize_t}), string_map, size)
end

function rcutils_string_map_reserve(string_map, capacity)
    ccall((:rcutils_string_map_reserve, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Csize_t), string_map, capacity)
end

function rcutils_string_map_clear(string_map)
    ccall((:rcutils_string_map_clear, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t},), string_map)
end

function rcutils_string_map_set(string_map, key, value)
    ccall((:rcutils_string_map_set, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Cstring, Cstring), string_map, key, value)
end

function rcutils_string_map_set_no_resize(string_map, key, value)
    ccall((:rcutils_string_map_set_no_resize, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Cstring, Cstring), string_map, key, value)
end

function rcutils_string_map_unset(string_map, key)
    ccall((:rcutils_string_map_unset, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_key_exists(string_map, key)
    ccall((:rcutils_string_map_key_exists, librcutils), Bool, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_key_existsn(string_map, key, key_length)
    ccall((:rcutils_string_map_key_existsn, librcutils), Bool, (Ptr{rcutils_string_map_t}, Cstring, Csize_t), string_map, key, key_length)
end

function rcutils_string_map_get(string_map, key)
    ccall((:rcutils_string_map_get, librcutils), Cstring, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_getn(string_map, key, key_length)
    ccall((:rcutils_string_map_getn, librcutils), Cstring, (Ptr{rcutils_string_map_t}, Cstring, Csize_t), string_map, key, key_length)
end

function rcutils_string_map_get_next_key(string_map, key)
    ccall((:rcutils_string_map_get_next_key, librcutils), Cstring, (Ptr{rcutils_string_map_t}, Cstring), string_map, key)
end

function rcutils_string_map_copy(src_string_map, dst_string_map)
    ccall((:rcutils_string_map_copy, librcutils), rcutils_ret_t, (Ptr{rcutils_string_map_t}, Ptr{rcutils_string_map_t}), src_string_map, dst_string_map)
end
# Julia wrapper for header: /opt/ros/crystal/include/rcutils/types/uint8_array.h
# Automatically generated using Clang.jl wrap_c


function rcutils_get_zero_initialized_uint8_array()
    ccall((:rcutils_get_zero_initialized_uint8_array, librcutils), rcutils_uint8_array_t, ())
end

function rcutils_uint8_array_init(uint8_array, buffer_capacity, allocator)
    ccall((:rcutils_uint8_array_init, librcutils), rcutils_ret_t, (Ptr{rcutils_uint8_array_t}, Csize_t, Ptr{rcutils_allocator_t}), uint8_array, buffer_capacity, allocator)
end

function rcutils_uint8_array_fini(uint8_array)
    ccall((:rcutils_uint8_array_fini, librcutils), rcutils_ret_t, (Ptr{rcutils_uint8_array_t},), uint8_array)
end

function rcutils_uint8_array_resize(uint8_array, new_size)
    ccall((:rcutils_uint8_array_resize, librcutils), rcutils_ret_t, (Ptr{rcutils_uint8_array_t}, Csize_t), uint8_array, new_size)
end
