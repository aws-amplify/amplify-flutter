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

// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity.model.resource_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'resource_not_found_exception.g.dart';

/// Thrown when the requested resource (for example, a dataset or record) does not exist.
abstract class ResourceNotFoundException
    with _i1.AWSEquatable<ResourceNotFoundException>
    implements
        Built<ResourceNotFoundException, ResourceNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Thrown when the requested resource (for example, a dataset or record) does not exist.
  factory ResourceNotFoundException({String? message}) {
    return _$ResourceNotFoundException._(message: message);
  }

  /// Thrown when the requested resource (for example, a dataset or record) does not exist.
  factory ResourceNotFoundException.build(
          [void Function(ResourceNotFoundExceptionBuilder) updates]) =
      _$ResourceNotFoundException;

  const ResourceNotFoundException._();

  /// Constructs a [ResourceNotFoundException] from a [payload] and [response].
  factory ResourceNotFoundException.fromResponse(
    ResourceNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ResourceNotFoundExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceNotFoundExceptionBuilder b) {}

  /// The message returned by a ResourceNotFoundException.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentity',
        shape: 'ResourceNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceNotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ResourceNotFoundExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ResourceNotFoundException> {
  const ResourceNotFoundExceptionAwsJson11Serializer()
      : super('ResourceNotFoundException');

  @override
  Iterable<Type> get types => const [
        ResourceNotFoundException,
        _$ResourceNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ResourceNotFoundException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
