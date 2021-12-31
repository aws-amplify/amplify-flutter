/// Smithy client runtime for Dart.

library smithy;

export 'package:aws_common/aws_common.dart';
export 'package:collection/src/iterable_extensions.dart';
export 'package:fixnum/fixnum.dart';

// Operation
export 'src/client.dart';
export 'src/operation.dart';

// HTTP
export 'src/http/exceptions.dart';

// Protocol
export 'src/protocol/protocol.dart';
export 'src/http/protocol.dart';
export 'src/protocol/interceptor.dart';
export 'src/protocol/json.dart';

// Serialization
export 'src/serialization/json/blob.dart';
export 'src/serialization/json/int64.dart';
export 'src/serialization/serializer.dart';
export 'src/serialization/xml/xml_plugin.dart';

// Types
export 'src/types/enum.dart';
export 'src/types/timestamp.dart';
export 'src/types/union.dart';

// Exceptions
export 'src/exceptions/exceptions.dart';

// ignore_for_file: directives_ordering