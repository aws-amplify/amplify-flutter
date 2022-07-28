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

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

import 'aws_http_protocol.dart';

class EventStreamProtocol<InputPayload, Input, OutputPayload, Output>
    implements AWSHttpProtocol<InputPayload, Input, OutputPayload, Output> {
  EventStreamProtocol(this._baseProtocol);

  final AWSHttpProtocol<InputPayload, Input, OutputPayload, Output>
      _baseProtocol;

  @override
  String get contentType => _baseProtocol.contentType;

  @override
  Future<Object?> deserialize(
    Stream<List<int>> response, {
    FullType? specifiedType,
  }) async {
    return serializers.deserialize(
      response,
      specifiedType: FullType(OutputPayload),
    );
  }

  @override
  HttpClient getClient(Input input) => _baseProtocol.getClient(input);

  @override
  Map<String, String> get headers => _baseProtocol.headers;

  @override
  ShapeId get protocolId => _baseProtocol.protocolId;

  @override
  List<HttpRequestInterceptor> get requestInterceptors =>
      _baseProtocol.requestInterceptors;

  @override
  Future<String?> resolveErrorType(AWSStreamedHttpResponse response) =>
      _baseProtocol.resolveErrorType(response);

  @override
  List<HttpResponseInterceptor> get responseInterceptors =>
      _baseProtocol.responseInterceptors;

  @override
  Stream<List<int>> serialize(Object? input, {FullType? specifiedType}) =>
      _baseProtocol.serialize(input, specifiedType: specifiedType);

  @override
  Serializers get serializers => _baseProtocol.serializers;

  @override
  FullSerializer<List<int>> get wireSerializer => _baseProtocol.wireSerializer;
}
