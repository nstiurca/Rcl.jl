# Automatically generated using Clang.jl wrap_c, version 0.0.0

# using Compat

# Skipping MacroDefinition: RCUTILS_WARN_UNUSED __attribute__ ( ( warn_unused_result ) ) #
# Skipping MacroDefinition: RCUTILS_THREAD_LOCAL _Thread_local #
# Skipping MacroDefinition: RCUTILS_STRINGIFY_IMPL ( x ) # x #
# Skipping MacroDefinition: RCUTILS_STRINGIFY ( x ) RCUTILS_STRINGIFY_IMPL ( x ) #

const RCUTILS_RET_OK = 0
const RCUTILS_RET_WARN = 1
const RCUTILS_RET_ERROR = 2
const RCUTILS_RET_BAD_ALLOC = 10
const RCUTILS_RET_INVALID_ARGUMENT = 11
const RCUTILS_RET_NOT_ENOUGH_SPACE = 12
const RCUTILS_RET_STRING_MAP_ALREADY_INIT = 30
const RCUTILS_RET_STRING_MAP_INVALID = 31
const RCUTILS_RET_STRING_KEY_NOT_FOUND = 32
const RCUTILS_RET_LOGGING_SEVERITY_MAP_INVALID = 40

# Skipping MacroDefinition: RCUTILS_EXPORT __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: RCUTILS_PUBLIC __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: RCUTILS_LOCAL __attribute__ ( ( visibility ( "hidden" ) ) ) #
# Skipping MacroDefinition: RCUTILS_CHECK_ALLOCATOR ( allocator , fail_statement ) if ( ! rcutils_allocator_is_valid ( allocator ) ) { fail_statement ; } #
# Skipping MacroDefinition: RCUTILS_CHECK_ALLOCATOR_WITH_MSG ( allocator , msg , fail_statement ) if ( ! rcutils_allocator_is_valid ( allocator ) ) { RCUTILS_SET_ERROR_MSG ( msg , rcutils_get_default_allocator ( ) ) fail_statement ; } /// Emulate the behavior of [reallocf](https://linux.die.net/man/3/reallocf).

const rcutils_ret_t = Cint

mutable struct rcutils_allocator_t
    allocate::Ptr{Cvoid}
    deallocate::Ptr{Cvoid}
    reallocate::Ptr{Cvoid}
    zero_allocate::Ptr{Cvoid}
    state::Ptr{Cvoid}
end

# Skipping MacroDefinition: RCUTILS_SAFE_FWRITE_TO_STDERR ( msg ) fwrite ( msg , sizeof ( char ) , strlen ( msg ) , stderr ) #
# Skipping MacroDefinition: RCUTILS_CHECK_ARGUMENT_FOR_NULL ( argument , error_return_type , allocator ) RCUTILS_CHECK_FOR_NULL_WITH_MSG ( argument , # argument " argument is null" , return error_return_type , allocator ) /// Check a value for null, with an error message and error statement.
# Skipping MacroDefinition: RCUTILS_CHECK_FOR_NULL_WITH_MSG ( value , msg , error_statement , allocator ) if ( ! ( value ) ) { RCUTILS_SET_ERROR_MSG ( msg , allocator ) ; error_statement ; } /// Set the error message, as well as append the current file and line number.
# Skipping MacroDefinition: RCUTILS_SET_ERROR_MSG ( msg , allocator ) rcutils_set_error_state ( msg , __FILE__ , __LINE__ , allocator ) ; /// Set the error message using a format string and format arguments.
# Skipping MacroDefinition: RCUTILS_SET_ERROR_MSG_WITH_FORMAT_STRING ( allocator , format_string , ... ) do { char * output_msg = NULL ; output_msg = rcutils_format_string ( allocator , format_string , __VA_ARGS__ ) ; if ( output_msg ) { RCUTILS_SET_ERROR_MSG ( output_msg , allocator ) ; allocator . deallocate ( output_msg , allocator . state ) ; } else { RCUTILS_SAFE_FWRITE_TO_STDERR ( "Failed to allocate memory for error message\n" ) ; } } while ( false ) /// Return `true` if the error is set, otherwise `false`.

mutable struct rcutils_error_state_t
    message::Cstring
    file::Cstring
    line_number::Csize_t
    allocator::rcutils_allocator_t
end

# Skipping MacroDefinition: RCL_WARN_UNUSED __attribute__ ( ( warn_unused_result ) ) #

const rcl_get_default_allocator = rcutils_get_default_allocator
const rcl_reallocf = rcutils_reallocf

# Skipping MacroDefinition: RCL_CHECK_ALLOCATOR ( allocator , fail_statement ) RCUTILS_CHECK_ALLOCATOR ( allocator , fail_statement ) #
# Skipping MacroDefinition: RCL_CHECK_ALLOCATOR_WITH_MSG ( allocator , msg , fail_statement ) RCUTILS_CHECK_ALLOCATOR_WITH_MSG ( allocator , msg , fail_statement ) #
# Skipping MacroDefinition: RMW_EXPORT __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: RMW_PUBLIC __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: RMW_LOCAL __attribute__ ( ( visibility ( "hidden" ) ) ) #

const RMW_RET_OK = 0
const RMW_RET_ERROR = 1
const RMW_RET_TIMEOUT = 2
const RMW_RET_BAD_ALLOC = 10
const RMW_RET_INVALID_ARGUMENT = 11
const RMW_GID_STORAGE_SIZE = 24
const RCL_RET_OK = RMW_RET_OK
const RCL_RET_ERROR = RMW_RET_ERROR
const RCL_RET_TIMEOUT = RMW_RET_TIMEOUT
const RCL_RET_BAD_ALLOC = RMW_RET_BAD_ALLOC
const RCL_RET_INVALID_ARGUMENT = RMW_RET_INVALID_ARGUMENT
const RCL_RET_ALREADY_INIT = 100
const RCL_RET_NOT_INIT = 101
const RCL_RET_MISMATCHED_RMW_ID = 102
const RCL_RET_TOPIC_NAME_INVALID = 103
const RCL_RET_SERVICE_NAME_INVALID = 104
const RCL_RET_UNKNOWN_SUBSTITUTION = 105
const RCL_RET_NODE_INVALID = 200
const RCL_RET_NODE_INVALID_NAME = 201
const RCL_RET_NODE_INVALID_NAMESPACE = 202
const RCL_RET_PUBLISHER_INVALID = 300
const RCL_RET_SUBSCRIPTION_INVALID = 400
const RCL_RET_SUBSCRIPTION_TAKE_FAILED = 401
const RCL_RET_CLIENT_INVALID = 500
const RCL_RET_CLIENT_TAKE_FAILED = 501
const RCL_RET_SERVICE_INVALID = 600
const RCL_RET_SERVICE_TAKE_FAILED = 601
const RCL_RET_TIMER_INVALID = 800
const RCL_RET_TIMER_CANCELED = 801
const RCL_RET_WAIT_SET_INVALID = 900
const RCL_RET_WAIT_SET_EMPTY = 901
const RCL_RET_WAIT_SET_FULL = 902

# Skipping MacroDefinition: RCL_EXPORT __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: RCL_PUBLIC __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: RCL_LOCAL __attribute__ ( ( visibility ( "hidden" ) ) ) #

const RCL_NODE_OPTIONS_DEFAULT_DOMAIN_ID = SIZE_MAX

# Skipping MacroDefinition: ROSIDL_GENERATOR_C_EXPORT __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: ROSIDL_GENERATOR_C_PUBLIC __attribute__ ( ( visibility ( "default" ) ) ) #
# Skipping MacroDefinition: ROSIDL_GENERATOR_C_LOCAL __attribute__ ( ( visibility ( "hidden" ) ) ) #
# Skipping MacroDefinition: ROSIDL_TYPESUPPORT_INTERFACE__SYMBOL_NAME ( typesupport_name , function_name , package_name , interface_type , interface_name ) typesupport_name ## __ ## function_name ## __ ## package_name ## __ ## interface_type ## __ ## interface_name #
# Skipping MacroDefinition: ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME ( typesupport_name , package_name , interface_type , message_name ) ROSIDL_TYPESUPPORT_INTERFACE__SYMBOL_NAME ( typesupport_name , get_message_type_support_handle , package_name , interface_type , message_name ) #
# Skipping MacroDefinition: ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME ( typesupport_name , package_name , service_name ) ROSIDL_TYPESUPPORT_INTERFACE__SYMBOL_NAME ( typesupport_name , get_service_type_support_handle , package_name , srv , service_name ) #
# Skipping MacroDefinition: ROSIDL_GET_MSG_TYPE_SUPPORT ( PkgName , MsgSubfolder , MsgName ) ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME ( rosidl_typesupport_c , PkgName , MsgSubfolder , MsgName ) ( ) #
# Skipping MacroDefinition: ROSIDL_GET_SRV_TYPE_SUPPORT ( PkgName , SrvName ) ROSIDL_TYPESUPPORT_INTERFACE__SERVICE_SYMBOL_NAME ( rosidl_typesupport_c , PkgName , SrvName ) ( ) #
# Skipping MacroDefinition: RCUTILS_S_TO_NS ( seconds ) ( seconds * ( 1000 * 1000 * 1000 ) ) /// Convenience macro to convert milliseconds to nanoseconds.
# Skipping MacroDefinition: RCUTILS_MS_TO_NS ( milliseconds ) ( milliseconds * ( 1000 * 1000 ) ) /// Convenience macro to convert microseconds to nanoseconds.
# Skipping MacroDefinition: RCUTILS_US_TO_NS ( microseconds ) ( microseconds * 1000 ) /// Convenience macro to convert nanoseconds to seconds.
# Skipping MacroDefinition: RCUTILS_NS_TO_S ( nanoseconds ) ( nanoseconds / ( 1000 * 1000 * 1000 ) ) /// Convenience macro to convert nanoseconds to milliseconds.
# Skipping MacroDefinition: RCUTILS_NS_TO_MS ( nanoseconds ) ( nanoseconds / ( 1000 * 1000 ) ) /// Convenience macro to convert nanoseconds to microseconds.
# Skipping MacroDefinition: RCUTILS_NS_TO_US ( nanoseconds ) ( nanoseconds / 1000 ) /// A single point in time, measured in nanoseconds since the Unix epoch.

const RCL_S_TO_NS = RCUTILS_S_TO_NS
const RCL_MS_TO_NS = RCUTILS_MS_TO_NS
const RCL_US_TO_NS = RCUTILS_US_TO_NS
const RCL_NS_TO_S = RCUTILS_NS_TO_S
const RCL_NS_TO_MS = RCUTILS_NS_TO_MS
const RCL_NS_TO_US = RCUTILS_NS_TO_US

# Skipping MacroDefinition: RMW_STRINGIFY ( x ) RCUTILS_STRINGIFY ( x ) #

const RMW_WARN_UNUSED = RCUTILS_WARN_UNUSED
const rcl_allocator_t = rcutils_allocator_t
const rmw_ret_t = Cint

mutable struct rmw_node_t
    implementation_identifier::Cstring
    data::Ptr{Cvoid}
    name::Cstring
    namespace_::Cstring
end

mutable struct rmw_publisher_t
    implementation_identifier::Cstring
    data::Ptr{Cvoid}
    topic_name::Cstring
end

mutable struct rmw_subscription_t
    implementation_identifier::Cstring
    data::Ptr{Cvoid}
    topic_name::Cstring
end

mutable struct rmw_service_t
    implementation_identifier::Cstring
    data::Ptr{Cvoid}
    service_name::Cstring
end

mutable struct rmw_client_t
    implementation_identifier::Cstring
    data::Ptr{Cvoid}
    service_name::Cstring
end

mutable struct rmw_guard_condition_t
    implementation_identifier::Cstring
    data::Ptr{Cvoid}
end

mutable struct rmw_subscriptions_t
    subscriber_count::Csize_t
    subscribers::Ptr{Ptr{Cvoid}}
end

mutable struct rmw_services_t
    service_count::Csize_t
    services::Ptr{Ptr{Cvoid}}
end

mutable struct rmw_clients_t
    client_count::Csize_t
    clients::Ptr{Ptr{Cvoid}}
end

mutable struct rmw_guard_conditions_t
    guard_condition_count::Csize_t
    guard_conditions::Ptr{Ptr{Cvoid}}
end

mutable struct rmw_wait_set_t
    implementation_identifier::Cstring
    guard_conditions::Ptr{rmw_guard_conditions_t}
    data::Ptr{Cvoid}
end

mutable struct rmw_request_id_t
    writer_guid::NTuple{16, Int8}
    sequence_number::Int64
end

mutable struct rmw_time_t
    sec::UInt64
    nsec::UInt64
end

# begin enum rmw_security_enforcement_policy_t
const rmw_security_enforcement_policy_t = UInt32
const RMW_SECURITY_ENFORCEMENT_PERMISSIVE = (UInt32)(0)
const RMW_SECURITY_ENFORCEMENT_ENFORCE = (UInt32)(1)
# end enum rmw_security_enforcement_policy_t

mutable struct rmw_node_security_options_t
    enforce_security::Cvoid
    security_root_path::Cstring
end

# begin enum rmw_qos_reliability_policy_t
const rmw_qos_reliability_policy_t = UInt32
const RMW_QOS_POLICY_RELIABILITY_SYSTEM_DEFAULT = (UInt32)(0)
const RMW_QOS_POLICY_RELIABILITY_RELIABLE = (UInt32)(1)
const RMW_QOS_POLICY_RELIABILITY_BEST_EFFORT = (UInt32)(2)
# end enum rmw_qos_reliability_policy_t

# begin enum rmw_qos_history_policy_t
const rmw_qos_history_policy_t = UInt32
const RMW_QOS_POLICY_HISTORY_SYSTEM_DEFAULT = (UInt32)(0)
const RMW_QOS_POLICY_HISTORY_KEEP_LAST = (UInt32)(1)
const RMW_QOS_POLICY_HISTORY_KEEP_ALL = (UInt32)(2)
# end enum rmw_qos_history_policy_t

# begin enum rmw_qos_durability_policy_t
const rmw_qos_durability_policy_t = UInt32
const RMW_QOS_POLICY_DURABILITY_SYSTEM_DEFAULT = (UInt32)(0)
const RMW_QOS_POLICY_DURABILITY_TRANSIENT_LOCAL = (UInt32)(1)
const RMW_QOS_POLICY_DURABILITY_VOLATILE = (UInt32)(2)
# end enum rmw_qos_durability_policy_t

mutable struct rmw_qos_profile_t
    history::Cvoid
    depth::Csize_t
    reliability::Cvoid
    durability::Cvoid
    avoid_ros_namespace_conventions::Bool
end

mutable struct rmw_gid_t
    implementation_identifier::Cstring
    data::NTuple{24, UInt8}
end

mutable struct rmw_message_info_t
    publisher_gid::rmw_gid_t
    from_intra_process::Bool
end

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const RMW_QOS_POLICY_DEPTH_SYSTEM_DEFAULT = (UInt32)(0)
# end enum ANONYMOUS_1

const rcl_ret_t = rmw_ret_t

mutable struct rcl_guard_condition_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_node_impl_t
end

mutable struct rcl_node_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_node_options_t
    domain_id::Csize_t
    allocator::rcl_allocator_t
end

const rosidl_message_typesupport_handle_function = Ptr{Cvoid}

mutable struct rosidl_message_type_support_t
    typesupport_identifier::Cstring
    data::Ptr{Cvoid}
    func::rosidl_message_typesupport_handle_function
end

mutable struct rcl_publisher_impl_t
end

mutable struct rcl_publisher_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_publisher_options_t
    qos::rmw_qos_profile_t
    allocator::rcl_allocator_t
end

mutable struct rcl_subscription_impl_t
end

mutable struct rcl_subscription_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_subscription_options_t
    qos::rmw_qos_profile_t
    ignore_local_publications::Bool
    allocator::rcl_allocator_t
end

const rosidl_service_typesupport_handle_function = Ptr{Cvoid}

mutable struct rosidl_service_type_support_t
    typesupport_identifier::Cstring
    data::Ptr{Cvoid}
    func::rosidl_service_typesupport_handle_function
end

mutable struct rcl_client_impl_t
end

mutable struct rcl_client_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_client_options_t
    qos::rmw_qos_profile_t
    allocator::rcl_allocator_t
end

mutable struct rcl_guard_condition_impl_t
end

mutable struct rcl_guard_condition_options_t
    allocator::rcl_allocator_t
end

mutable struct rcl_service_impl_t
end

mutable struct rcl_service_t
    impl::Ptr{Cvoid}
end

mutable struct rcl_service_options_t
    qos::rmw_qos_profile_t
    allocator::rcl_allocator_t
end

mutable struct rcutils_string_array_t
    size::Csize_t
    data::Ptr{Cstring}
    allocator::rcutils_allocator_t
end

mutable struct rcutils_string_map_impl_t
end

mutable struct rcutils_string_map_t
    impl::Ptr{Cvoid}
end

const rcutils_time_point_value_t = UInt64
const rcutils_duration_value_t = Int64
const rcl_time_point_value_t = rcutils_time_point_value_t
const rcl_duration_value_t = rcutils_duration_value_t

# begin enum rcl_clock_type_t
const rcl_clock_type_t = UInt32
const RCL_CLOCK_UNINITIALIZED = (UInt32)(0)
const RCL_ROS_TIME = (UInt32)(1)
const RCL_SYSTEM_TIME = (UInt32)(2)
const RCL_STEADY_TIME = (UInt32)(3)
# end enum rcl_clock_type_t

mutable struct rcl_clock_t
    _type::Cvoid
    pre_update::Ptr{Cvoid}
    post_update::Ptr{Cvoid}
    get_now::Ptr{Cvoid}
    data::Ptr{Cvoid}
    allocator::Ptr{rcl_allocator_t}
end

mutable struct rcl_time_point_t
    nanoseconds::rcl_time_point_value_t
    clock_type::rcl_clock_type_t
end

mutable struct rcl_duration_t
    nanoseconds::rcl_duration_value_t
end

mutable struct rcl_timer_impl_t
end

mutable struct rcl_timer_t
    impl::Ptr{Cvoid}
end

const rcl_timer_callback_t = Ptr{Cvoid}

mutable struct rcl_wait_set_impl_t
end

mutable struct rcl_wait_set_t
    subscriptions::Ptr{Ptr{rcl_subscription_t}}
    size_of_subscriptions::Csize_t
    guard_conditions::Ptr{Ptr{rcl_guard_condition_t}}
    size_of_guard_conditions::Csize_t
    timers::Ptr{Ptr{rcl_timer_t}}
    size_of_timers::Csize_t
    clients::Ptr{Ptr{rcl_client_t}}
    size_of_clients::Csize_t
    services::Ptr{Ptr{rcl_service_t}}
    size_of_services::Csize_t
    impl::Ptr{Cvoid}
end
