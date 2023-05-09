// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/protocol/aws_http_protocol.dart';

class EventStreamProtocol<InputPayload, Input, OutputPayload, Output>
    implements AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  EventStreamProtocol(this._baseProtocol);

  final AWSHttpProtocol<InputPayload, Input, OutputPayload, Output>
      _baseProtocol;

  @override
  String get contentType => _baseProtocol.contentType;

  @override
  Future<OutputPayload> deserialize(Stream<List<int>> response) async {
    return serializers.deserialize(
      response,
      specifiedType: FullType(OutputPayload),
    ) as OutputPayload;
  }

  @override
  AWSHttpClient getClient(Input input) => _baseProtocol.getClient(input);

  @override
  Map<String, String> get headers => _baseProtocol.headers;

  @override
  ShapeId get protocolId => _baseProtocol.protocolId;

  @override
  List<HttpRequestInterceptor> get requestInterceptors =>
      _baseProtocol.requestInterceptors;

  @override
  Future<String?> resolveErrorType(AWSBaseHttpResponse response) =>
      _baseProtocol.resolveErrorType(response);

  @override
  List<HttpResponseInterceptor> get responseInterceptors =>
      _baseProtocol.responseInterceptors;

  @override
  Stream<List<int>> serialize(Input input) => _baseProtocol.serialize(input);

  @override
  Serializers get serializers => _baseProtocol.serializers;

  @override
  FullSerializer<List<int>> get wireSerializer => _baseProtocol.wireSerializer;
}
