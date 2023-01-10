// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';
import 'package:smithy/smithy.dart' hide Serializer;
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';
import 'package:smithy_aws/src/protocol/aws_json_error_protocol.dart';

class AwsJson1_0Protocol<InputPayload, Input, OutputPayload, Output>
    extends AWSHttpProtocol<InputPayload, Input, OutputPayload, Output>
    with AWSJsonErrorProtocol {
  AwsJson1_0Protocol({
    List<HttpRequestInterceptor> requestInterceptors = const [],
    List<HttpResponseInterceptor> responseInterceptors = const [],
    List<SmithySerializer> serializers = const [],
    Map<FullType, Function> builderFactories = const {},
  }) : super(
          _coreSerializers,
          serializers: serializers,
          builderFactories: builderFactories,
          requestInterceptors: requestInterceptors,
          responseInterceptors: responseInterceptors,
        );

  static final _coreSerializers = (Serializers().toBuilder()
        ..addPlugin(SmithyJsonPlugin())
        ..addAll(const [
          BigIntSerializer.asNum,
          DoubleSerializer(),
          Int64Serializer.asNum,
          TimestampSerializer.epochSeconds,
          UnitSerializer(),
        ]))
      .build();

  @override
  ShapeId get protocolId => AwsJson1_0Trait.id;

  @override
  String get contentType => 'application/x-amz-json-1.0';

  @override
  late final JsonSerializer wireSerializer =
      JsonSerializer(serializers, EmptyPayloadType.object);
}

// ignore_for_file: camel_case_types
