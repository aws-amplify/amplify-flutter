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

// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/http/interceptors/with_sdk_invocation.dart';
import 'package:smithy_aws/src/http/interceptors/with_sdk_request.dart';

class DummyHttpOperation extends HttpOperation<Unit, Unit, Unit, Unit> {
  DummyHttpOperation(this.retryer);

  @override
  final Retryer retryer;

  @override
  Uri get baseUri => Uri.parse('https://example.com');

  @override
  Unit buildOutput(Unit payload, AWSBaseHttpResponse response) => payload;

  @override
  HttpRequest buildRequest(Unit input) => HttpRequest((b) => b
    ..method = 'GET'
    ..path = '/');

  @override
  List<SmithyError> get errorTypes => const [
        SmithyError(
          DummySmithyException.id,
          ErrorKind.server,
          DummySmithyException,
          statusCode: 500,
          builder: DummySmithyException.fromResponse,
        )
      ];

  @override
  Iterable<HttpProtocol<Unit, Unit, Unit, Unit>> get protocols => [
        GenericJsonProtocol(
          serializers: const [
            _DummySmithyExceptionSerializer(),
          ],
          requestInterceptors: const [
            WithSdkInvocationId(),
            WithSdkRequest(),
          ],
        ),
      ];

  @override
  int successCode([Unit? output]) => 200;
}

class DummySmithyException implements SmithyHttpException {
  const DummySmithyException({this.statusCode, this.headers});

  factory DummySmithyException.fromResponse(
    DummySmithyException payload,
    AWSStreamedHttpResponse response,
  ) =>
      DummySmithyException(
        statusCode: response.statusCode,
        headers: response.headers,
      );

  static const id = ShapeId(
    namespace: 'com.example',
    shape: 'DummySmithyException',
  );

  @override
  String? get message => null;

  @override
  RetryConfig? get retryConfig =>
      (Zone.current[#retryable] as bool? ?? false) ? const RetryConfig() : null;

  @override
  ShapeId get shapeId => id;

  @override
  Exception? get underlyingException => null;

  @override
  final Map<String, String>? headers;

  @override
  final int? statusCode;
}

class _DummySmithyExceptionSerializer
    implements StructuredSmithySerializer<DummySmithyException> {
  const _DummySmithyExceptionSerializer();

  @override
  DummySmithyException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return const DummySmithyException();
  }

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DummySmithyException object,
      {FullType specifiedType = FullType.unspecified}) {
    return const [];
  }

  @override
  Iterable<ShapeId> get supportedProtocols =>
      const [GenericJsonProtocolDefinitionTrait.id];

  @override
  Iterable<Type> get types => const [DummySmithyException];

  @override
  String get wireName => 'DummySmithyException';
}
