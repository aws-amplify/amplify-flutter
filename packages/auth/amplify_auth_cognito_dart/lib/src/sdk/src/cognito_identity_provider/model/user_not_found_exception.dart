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

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.user_not_found_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_not_found_exception.g.dart';

/// This exception is thrown when a user is not found.
abstract class UserNotFoundException
    with _i1.AWSEquatable<UserNotFoundException>
    implements
        Built<UserNotFoundException, UserNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when a user is not found.
  factory UserNotFoundException({String? message}) {
    return _$UserNotFoundException._(message: message);
  }

  /// This exception is thrown when a user is not found.
  factory UserNotFoundException.build(
          [void Function(UserNotFoundExceptionBuilder) updates]) =
      _$UserNotFoundException;

  const UserNotFoundException._();

  /// Constructs a [UserNotFoundException] from a [payload] and [response].
  factory UserNotFoundException.fromResponse(
          UserNotFoundException payload, _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    _UserNotFoundExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserNotFoundExceptionBuilder b) {}

  /// The message returned when a user is not found.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.cognitoidentityprovider',
      shape: 'UserNotFoundException');
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
    final helper = newBuiltValueToStringHelper('UserNotFoundException');
    helper.add('message', message);
    return helper.toString();
  }
}

class _UserNotFoundExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UserNotFoundException> {
  const _UserNotFoundExceptionAwsJson11Serializer()
      : super('UserNotFoundException');

  @override
  Iterable<Type> get types =>
      const [UserNotFoundException, _$UserNotFoundException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UserNotFoundException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserNotFoundExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UserNotFoundException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
