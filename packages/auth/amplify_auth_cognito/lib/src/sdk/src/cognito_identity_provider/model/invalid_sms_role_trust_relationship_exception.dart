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

library amplify_auth_cognito.cognito_identity_provider.model.invalid_sms_role_trust_relationship_exception;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_sms_role_trust_relationship_exception.g.dart';

/// This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
abstract class InvalidSmsRoleTrustRelationshipException
    with
        _i1.AWSEquatable<InvalidSmsRoleTrustRelationshipException>
    implements
        Built<InvalidSmsRoleTrustRelationshipException,
            InvalidSmsRoleTrustRelationshipExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
  factory InvalidSmsRoleTrustRelationshipException({String? message}) {
    return _$InvalidSmsRoleTrustRelationshipException._(message: message);
  }

  /// This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
  factory InvalidSmsRoleTrustRelationshipException.build(
      [void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)
          updates]) = _$InvalidSmsRoleTrustRelationshipException;

  const InvalidSmsRoleTrustRelationshipException._();

  /// Constructs a [InvalidSmsRoleTrustRelationshipException] from a [payload] and [response].
  factory InvalidSmsRoleTrustRelationshipException.fromResponse(
          InvalidSmsRoleTrustRelationshipException payload,
          _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    _InvalidSmsRoleTrustRelationshipExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidSmsRoleTrustRelationshipExceptionBuilder b) {}

  /// The message returned when the role trust relationship for the SMS message is invalid.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.cognitoidentityprovider',
      shape: 'InvalidSmsRoleTrustRelationshipException');
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InvalidSmsRoleTrustRelationshipException');
    helper.add('message', message);
    return helper.toString();
  }
}

class _InvalidSmsRoleTrustRelationshipExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidSmsRoleTrustRelationshipException> {
  const _InvalidSmsRoleTrustRelationshipExceptionAwsJson11Serializer()
      : super('InvalidSmsRoleTrustRelationshipException');

  @override
  Iterable<Type> get types => const [
        InvalidSmsRoleTrustRelationshipException,
        _$InvalidSmsRoleTrustRelationshipException
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  InvalidSmsRoleTrustRelationshipException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InvalidSmsRoleTrustRelationshipExceptionBuilder();
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
    final payload = (object as InvalidSmsRoleTrustRelationshipException);
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
