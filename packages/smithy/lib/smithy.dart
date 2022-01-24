/// Smithy client runtime for Dart.

library smithy;

export 'package:aws_common/aws_common.dart';
export 'package:collection/src/iterable_extensions.dart';
export 'package:fixnum/fixnum.dart';

// AST types
export 'package:smithy_ast/smithy_ast.dart'
    show
        AlpnProtocol,
        ChecksumAlgorithm,
        ErrorKind,
        ErrorTypeStatusCode,
        ShapeId,
        TimestampFormat;

// Behavior
export 'src/behavior/paginated_result.dart';

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
export 'src/protocol/protocol.dart';
export 'src/http/http_protocol.dart';
export 'src/protocol/json_serializer.dart';

// Serialization
export 'src/serialization/json/smithy_json_plugin.dart';
export 'src/serialization/serializer.dart';
export 'src/serialization/struct.dart';
export 'src/serialization/serializers/big_int_serializer.dart';
export 'src/serialization/serializers/blob_serializer.dart';
export 'src/serialization/serializers/double_serializer.dart';
export 'src/serialization/serializers/int64_serializer.dart';
export 'src/serialization/serializers/encoded_json_object_serializer.dart';
export 'src/serialization/serializers/timestamp_serializer.dart';
export 'src/serialization/serializers/unit_serializer.dart';
export 'src/serialization/xml/xml_plugin.dart';

// Types
export 'src/types/empty.dart';
export 'src/types/enum.dart';
export 'src/types/timestamp.dart';
export 'src/types/union.dart';
export 'src/types/unit.dart';

// Exceptions
export 'src/exceptions/exceptions.dart';

// ignore_for_file: directives_ordering