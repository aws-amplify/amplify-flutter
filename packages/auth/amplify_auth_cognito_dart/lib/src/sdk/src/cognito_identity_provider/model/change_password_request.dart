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

library amplify_auth_cognito.cognito_identity_provider.model.change_password_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'change_password_request.g.dart';

/// Represents the request to change a user password.
abstract class ChangePasswordRequest
    with
        _i1.HttpInput<ChangePasswordRequest>,
        _i2.AWSEquatable<ChangePasswordRequest>
    implements Built<ChangePasswordRequest, ChangePasswordRequestBuilder> {
  /// Represents the request to change a user password.
  factory ChangePasswordRequest(
      {required String accessToken,
      required String previousPassword,
      required String proposedPassword}) {
    return _$ChangePasswordRequest._(
        accessToken: accessToken,
        previousPassword: previousPassword,
        proposedPassword: proposedPassword);
  }

  /// Represents the request to change a user password.
  factory ChangePasswordRequest.build(
          [void Function(ChangePasswordRequestBuilder) updates]) =
      _$ChangePasswordRequest;

  const ChangePasswordRequest._();

  factory ChangePasswordRequest.fromRequest(
          ChangePasswordRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _ChangePasswordRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangePasswordRequestBuilder b) {}

  /// The access token.
  String get accessToken;

  /// The old password.
  String get previousPassword;

  /// The new password.
  String get proposedPassword;
  @override
  ChangePasswordRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken, previousPassword, proposedPassword];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangePasswordRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('previousPassword', '***SENSITIVE***');
    helper.add('proposedPassword', '***SENSITIVE***');
    return helper.toString();
  }
}

class _ChangePasswordRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ChangePasswordRequest> {
  const _ChangePasswordRequestAwsJson11Serializer()
      : super('ChangePasswordRequest');

  @override
  Iterable<Type> get types =>
      const [ChangePasswordRequest, _$ChangePasswordRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ChangePasswordRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ChangePasswordRequestBuilder();
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
        case 'PreviousPassword':
          result.previousPassword = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'ProposedPassword':
          result.proposedPassword = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ChangePasswordRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(payload.accessToken,
          specifiedType: const FullType(String)),
      'PreviousPassword',
      serializers.serialize(payload.previousPassword,
          specifiedType: const FullType(String)),
      'ProposedPassword',
      serializers.serialize(payload.proposedPassword,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}
