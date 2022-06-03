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

library amplify_auth_cognito.cognito_identity_provider.model.revoke_token_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'revoke_token_request.g.dart';

abstract class RevokeTokenRequest
    with _i1.HttpInput<RevokeTokenRequest>, _i2.AWSEquatable<RevokeTokenRequest>
    implements Built<RevokeTokenRequest, RevokeTokenRequestBuilder> {
  factory RevokeTokenRequest(
      {required String clientId, String? clientSecret, required String token}) {
    return _$RevokeTokenRequest._(
        clientId: clientId, clientSecret: clientSecret, token: token);
  }

  factory RevokeTokenRequest.build(
          [void Function(RevokeTokenRequestBuilder) updates]) =
      _$RevokeTokenRequest;

  const RevokeTokenRequest._();

  factory RevokeTokenRequest.fromRequest(
          RevokeTokenRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _RevokeTokenRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeTokenRequestBuilder b) {}

  /// The client ID for the token that you want to revoke.
  String get clientId;

  /// The secret for the client ID. This is required only if the client ID has a secret.
  String? get clientSecret;

  /// The token that you want to revoke.
  String get token;
  @override
  RevokeTokenRequest getPayload() => this;
  @override
  List<Object?> get props => [clientId, clientSecret, token];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RevokeTokenRequest');
    helper.add('clientId', '***SENSITIVE***');
    helper.add('clientSecret', '***SENSITIVE***');
    helper.add('token', '***SENSITIVE***');
    return helper.toString();
  }
}

class _RevokeTokenRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<RevokeTokenRequest> {
  const _RevokeTokenRequestAwsJson11Serializer() : super('RevokeTokenRequest');

  @override
  Iterable<Type> get types => const [RevokeTokenRequest, _$RevokeTokenRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  RevokeTokenRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RevokeTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ClientId':
          result.clientId = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'ClientSecret':
          if (value != null) {
            result.clientSecret = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Token':
          result.token = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RevokeTokenRequest);
    final result = <Object?>[
      'ClientId',
      serializers.serialize(payload.clientId,
          specifiedType: const FullType(String)),
      'Token',
      serializers.serialize(payload.token,
          specifiedType: const FullType(String))
    ];
    if (payload.clientSecret != null) {
      result
        ..add('ClientSecret')
        ..add(serializers.serialize(payload.clientSecret!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
