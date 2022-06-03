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

library amplify_auth_cognito.cognito_identity_provider.model.verify_software_token_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'verify_software_token_request.g.dart';

abstract class VerifySoftwareTokenRequest
    with
        _i1.HttpInput<VerifySoftwareTokenRequest>,
        _i2.AWSEquatable<VerifySoftwareTokenRequest>
    implements
        Built<VerifySoftwareTokenRequest, VerifySoftwareTokenRequestBuilder> {
  factory VerifySoftwareTokenRequest(
      {String? accessToken,
      String? friendlyDeviceName,
      String? session,
      required String userCode}) {
    return _$VerifySoftwareTokenRequest._(
        accessToken: accessToken,
        friendlyDeviceName: friendlyDeviceName,
        session: session,
        userCode: userCode);
  }

  factory VerifySoftwareTokenRequest.build(
          [void Function(VerifySoftwareTokenRequestBuilder) updates]) =
      _$VerifySoftwareTokenRequest;

  const VerifySoftwareTokenRequest._();

  factory VerifySoftwareTokenRequest.fromRequest(
          VerifySoftwareTokenRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _VerifySoftwareTokenRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifySoftwareTokenRequestBuilder b) {}

  /// The access token.
  String? get accessToken;

  /// The friendly device name.
  String? get friendlyDeviceName;

  /// The session which should be passed both ways in challenge-response calls to the service.
  String? get session;

  /// The one time password computed using the secret code returned by [AssociateSoftwareToken"](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AssociateSoftwareToken.html).
  String get userCode;
  @override
  VerifySoftwareTokenRequest getPayload() => this;
  @override
  List<Object?> get props =>
      [accessToken, friendlyDeviceName, session, userCode];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifySoftwareTokenRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('friendlyDeviceName', friendlyDeviceName);
    helper.add('session', session);
    helper.add('userCode', userCode);
    return helper.toString();
  }
}

class _VerifySoftwareTokenRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<VerifySoftwareTokenRequest> {
  const _VerifySoftwareTokenRequestAwsJson11Serializer()
      : super('VerifySoftwareTokenRequest');

  @override
  Iterable<Type> get types =>
      const [VerifySoftwareTokenRequest, _$VerifySoftwareTokenRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  VerifySoftwareTokenRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = VerifySoftwareTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          if (value != null) {
            result.accessToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'FriendlyDeviceName':
          if (value != null) {
            result.friendlyDeviceName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'UserCode':
          result.userCode = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as VerifySoftwareTokenRequest);
    final result = <Object?>[
      'UserCode',
      serializers.serialize(payload.userCode,
          specifiedType: const FullType(String))
    ];
    if (payload.accessToken != null) {
      result
        ..add('AccessToken')
        ..add(serializers.serialize(payload.accessToken!,
            specifiedType: const FullType(String)));
    }
    if (payload.friendlyDeviceName != null) {
      result
        ..add('FriendlyDeviceName')
        ..add(serializers.serialize(payload.friendlyDeviceName!,
            specifiedType: const FullType(String)));
    }
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(payload.session!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
