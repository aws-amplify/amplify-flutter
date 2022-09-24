// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Smithy client runtime for Dart.
library smithy;

// External types used in public APIs
export 'package:fixnum/fixnum.dart';

// AST types
export 'package:aws_common/aws_common.dart' show AlpnProtocol;
export 'ast.dart'
    show
        AcceptorState,
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
export 'src/http/http_operation.dart' hide isSmithyHttpTest;
export 'src/http/http_protocol.dart';
export 'src/http/http_request.dart';
export 'src/http/http_server.dart';
export 'src/http/interceptors/interceptor.dart';
export 'src/http/interceptors/checksum.dart';

// Protocol
export 'src/protocol/generic_json_protocol.dart';
export 'src/protocol/json_serializer.dart';
export 'src/protocol/protocol.dart';
export 'src/protocol/xml_serializer.dart';

// Serialization
export 'src/serialization/json/smithy_json_plugin.dart';
export 'src/serialization/serializer.dart';
export 'src/serialization/struct.dart';
export 'src/serialization/stream_serializer.dart';
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

// Waiters
export 'src/waiter/waitable.dart';

// ignore_for_file: directives_ordering
