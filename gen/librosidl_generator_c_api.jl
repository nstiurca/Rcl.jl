# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/action_type_support_struct.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/message_initialization.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/message_type_support_struct.h
# Automatically generated using Clang.jl wrap_c


function get_message_typesupport_handle(handle, identifier)
    ccall((:get_message_typesupport_handle, librosidl_generator_c), Ptr{rosidl_message_type_support_t}, (Ptr{rosidl_message_type_support_t}, Cstring), handle, identifier)
end

function get_message_typesupport_handle_function(handle, identifier)
    ccall((:get_message_typesupport_handle_function, librosidl_generator_c), Ptr{rosidl_message_type_support_t}, (Ptr{rosidl_message_type_support_t}, Cstring), handle, identifier)
end
# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/primitives_sequence.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/primitives_sequence_functions.h
# Automatically generated using Clang.jl wrap_c


function rosidl_generator_c__bool__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__bool__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__bool__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__bool__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__bool__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__bool__Sequence},), sequence)
end

function rosidl_generator_c__byte__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__byte__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__byte__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__byte__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__byte__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__byte__Sequence},), sequence)
end

function rosidl_generator_c__char__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__char__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__char__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__char__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__char__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__char__Sequence},), sequence)
end

function rosidl_generator_c__float32__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__float32__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__float32__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__float32__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__float32__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__float32__Sequence},), sequence)
end

function rosidl_generator_c__float64__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__float64__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__float64__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__float64__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__float64__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__float64__Sequence},), sequence)
end

function rosidl_generator_c__int8__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__int8__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__int8__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__int8__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__int8__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__int8__Sequence},), sequence)
end

function rosidl_generator_c__uint8__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__uint8__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__uint8__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__uint8__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__uint8__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__uint8__Sequence},), sequence)
end

function rosidl_generator_c__int16__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__int16__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__int16__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__int16__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__int16__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__int16__Sequence},), sequence)
end

function rosidl_generator_c__uint16__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__uint16__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__uint16__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__uint16__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__uint16__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__uint16__Sequence},), sequence)
end

function rosidl_generator_c__int32__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__int32__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__int32__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__int32__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__int32__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__int32__Sequence},), sequence)
end

function rosidl_generator_c__uint32__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__uint32__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__uint32__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__uint32__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__uint32__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__uint32__Sequence},), sequence)
end

function rosidl_generator_c__int64__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__int64__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__int64__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__int64__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__int64__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__int64__Sequence},), sequence)
end

function rosidl_generator_c__uint64__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__uint64__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__uint64__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__uint64__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__uint64__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__uint64__Sequence},), sequence)
end
# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/service_type_support_struct.h
# Automatically generated using Clang.jl wrap_c


function get_service_typesupport_handle(handle, identifier)
    ccall((:get_service_typesupport_handle, librosidl_generator_c), Ptr{rosidl_service_type_support_t}, (Ptr{rosidl_service_type_support_t}, Cstring), handle, identifier)
end

function get_service_typesupport_handle_function(handle, identifier)
    ccall((:get_service_typesupport_handle_function, librosidl_generator_c), Ptr{rosidl_service_type_support_t}, (Ptr{rosidl_service_type_support_t}, Cstring), handle, identifier)
end
# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/string.h
# Automatically generated using Clang.jl wrap_c

# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/string_functions.h
# Automatically generated using Clang.jl wrap_c


function rosidl_generator_c__String__init(str)
    ccall((:rosidl_generator_c__String__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__String},), str)
end

function rosidl_generator_c__String__fini(str)
    ccall((:rosidl_generator_c__String__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__String},), str)
end

function rosidl_generator_c__String__assignn(str, value, n)
    ccall((:rosidl_generator_c__String__assignn, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__String}, Cstring, Csize_t), str, value, n)
end

function rosidl_generator_c__String__assign(str, value)
    ccall((:rosidl_generator_c__String__assign, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__String}, Cstring), str, value)
end

function rosidl_generator_c__String__Sequence__init(sequence, size)
    ccall((:rosidl_generator_c__String__Sequence__init, librosidl_generator_c), Bool, (Ptr{rosidl_generator_c__String__Sequence}, Csize_t), sequence, size)
end

function rosidl_generator_c__String__Sequence__fini(sequence)
    ccall((:rosidl_generator_c__String__Sequence__fini, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__String__Sequence},), sequence)
end

function rosidl_generator_c__String__Sequence__create(size)
    ccall((:rosidl_generator_c__String__Sequence__create, librosidl_generator_c), Ptr{rosidl_generator_c__String__Sequence}, (Csize_t,), size)
end

function rosidl_generator_c__String__Sequence__destroy(sequence)
    ccall((:rosidl_generator_c__String__Sequence__destroy, librosidl_generator_c), Cvoid, (Ptr{rosidl_generator_c__String__Sequence},), sequence)
end
# Julia wrapper for header: /opt/ros/crystal/include/rosidl_generator_c/visibility_control.h
# Automatically generated using Clang.jl wrap_c

