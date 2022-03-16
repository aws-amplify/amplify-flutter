/// Smithy client runtime for Dart.

library smithy;

// AST types
export 'ast.dart'
    show
        AlpnProtocol,
        ChecksumAlgorithm,
        ErrorKind,
        ErrorTypeStatusCode,
        ShapeId,
        TimestampFormat;

// Behavior
export 'src/behavior/paginated_result.dart';
export 'src/behavior/retryer.dart';

export 'src/endpoint.dart';

// Operation
export 'src/client.dart';
export 'src/operation.dart';

// HTTP
export 'src/http/exceptions.dart';
export 'src/http/http_client.dart';
export 'src/http/http_operation.dart';
export 'src/http/http_protocol.dart';
export 'src/http/http_request.dart';
export 'src/http/interceptors/interceptor.dart';
export 'src/http/interceptors/checksum.dart';
export 'src/http/interceptors/auth/api_key_auth.dart';
export 'src/http/interceptors/auth/basic_auth.dart';
export 'src/http/interceptors/auth/bearer_auth.dart';
export 'src/http/interceptors/auth/digest_auth.dart';

// Protocol
export 'src/protocol/generic_json_protocol.dart';
export 'src/protocol/json_serializer.dart';
export 'src/protocol/protocol.dart';
export 'src/protocol/xml_serializer.dart';

// Serialization
export 'src/serialization/json/smithy_json_plugin.dart';
export 'src/serialization/serializer.dart';
export 'src/serialization/struct.dart';
export 'src/serialization/json/big_int_serializer.dart';
export 'src/serialization/json/blob_serializer.dart';
export 'src/serialization/json/double_serializer.dart';
export 'src/serialization/json/int64_serializer.dart';
export 'src/serialization/json/encoded_json_object_serializer.dart';
export 'src/serialization/json/timestamp_serializer.dart';
export 'src/serialization/json/unit_serializer.dart';
export 'src/serialization/xml/xml_bool_serializer.dart';
export 'src/serialization/xml/xml_num_serializer.dart';
export 'src/serialization/xml/xml_string_serializer.dart';
export 'src/serialization/xml/xml_namespace.dart';
export 'src/serialization/xml/xml_built_list_serializer.dart';
export 'src/serialization/xml/xml_built_map_serializer.dart';
export 'src/serialization/xml/xml_built_set_serializer.dart';
export 'src/serialization/xml/smithy_xml_plugin.dart';

// Types
export 'src/types/empty.dart';
export 'src/types/enum.dart';
export 'src/types/timestamp.dart';
export 'src/types/union.dart';
export 'src/types/unit.dart';

// Exceptions
export 'src/exceptions/exceptions.dart';

// ignore_for_file: directives_ordering
