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

library amplify_auth_cognito.cognito_identity_provider.model.verify_user_attribute_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'verify_user_attribute_request.g.dart';

/// Represents the request to verify user attributes.
abstract class VerifyUserAttributeRequest
    with
        _i1.HttpInput<VerifyUserAttributeRequest>,
        _i2.AWSEquatable<VerifyUserAttributeRequest>
    implements
        Built<VerifyUserAttributeRequest, VerifyUserAttributeRequestBuilder> {
  /// Represents the request to verify user attributes.
  factory VerifyUserAttributeRequest(
      {required String accessToken,
      required String attributeName,
      required String code}) {
    return _$VerifyUserAttributeRequest._(
        accessToken: accessToken, attributeName: attributeName, code: code);
  }

  /// Represents the request to verify user attributes.
  factory VerifyUserAttributeRequest.build(
          [void Function(VerifyUserAttributeRequestBuilder) updates]) =
      _$VerifyUserAttributeRequest;

  const VerifyUserAttributeRequest._();

  factory VerifyUserAttributeRequest.fromRequest(
          VerifyUserAttributeRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _VerifyUserAttributeRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifyUserAttributeRequestBuilder b) {}

  /// Represents the access token of the request to verify user attributes.
  String get accessToken;

  /// The attribute name in the request to verify user attributes.
  String get attributeName;

  /// The verification code in the request to verify user attributes.
  String get code;
  @override
  VerifyUserAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken, attributeName, code];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifyUserAttributeRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('attributeName', attributeName);
    helper.add('code', code);
    return helper.toString();
  }
}

class _VerifyUserAttributeRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<VerifyUserAttributeRequest> {
  const _VerifyUserAttributeRequestAwsJson11Serializer()
      : super('VerifyUserAttributeRequest');

  @override
  Iterable<Type> get types =>
      const [VerifyUserAttributeRequest, _$VerifyUserAttributeRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  VerifyUserAttributeRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = VerifyUserAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'Code':
          result.code = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as VerifyUserAttributeRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(payload.accessToken,
          specifiedType: const FullType(String)),
      'AttributeName',
      serializers.serialize(payload.attributeName,
          specifiedType: const FullType(String)),
      'Code',
      serializers.serialize(payload.code, specifiedType: const FullType(String))
    ];
    return result;
  }
}
