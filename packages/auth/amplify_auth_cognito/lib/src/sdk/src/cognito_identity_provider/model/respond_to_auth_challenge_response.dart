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

library amplify_auth_cognito.cognito_identity_provider.model.respond_to_auth_challenge_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart'
    as _i2;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'respond_to_auth_challenge_response.g.dart';

/// The response to respond to the authentication challenge.
abstract class RespondToAuthChallengeResponse
    with
        _i1.AWSEquatable<RespondToAuthChallengeResponse>
    implements
        Built<RespondToAuthChallengeResponse,
            RespondToAuthChallengeResponseBuilder> {
  /// The response to respond to the authentication challenge.
  factory RespondToAuthChallengeResponse(
      {_i2.AuthenticationResultType? authenticationResult,
      _i3.ChallengeNameType? challengeName,
      _i4.BuiltMap<String, String>? challengeParameters,
      String? session}) {
    return _$RespondToAuthChallengeResponse._(
        authenticationResult: authenticationResult,
        challengeName: challengeName,
        challengeParameters: challengeParameters,
        session: session);
  }

  /// The response to respond to the authentication challenge.
  factory RespondToAuthChallengeResponse.build(
          [void Function(RespondToAuthChallengeResponseBuilder) updates]) =
      _$RespondToAuthChallengeResponse;

  const RespondToAuthChallengeResponse._();

  /// Constructs a [RespondToAuthChallengeResponse] from a [payload] and [response].
  factory RespondToAuthChallengeResponse.fromResponse(
          RespondToAuthChallengeResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    _RespondToAuthChallengeResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RespondToAuthChallengeResponseBuilder b) {}

  /// The result returned by the server in response to the request to respond to the authentication challenge.
  _i2.AuthenticationResultType? get authenticationResult;

  /// The challenge name. For more information, see [InitiateAuth](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html).
  _i3.ChallengeNameType? get challengeName;

  /// The challenge parameters. For more information, see [InitiateAuth](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html).
  _i4.BuiltMap<String, String>? get challengeParameters;

  /// The session which should be passed both ways in challenge-response calls to the service. If the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.
  String? get session;
  @override
  List<Object?> get props =>
      [authenticationResult, challengeName, challengeParameters, session];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RespondToAuthChallengeResponse');
    helper.add('authenticationResult', authenticationResult);
    helper.add('challengeName', challengeName);
    helper.add('challengeParameters', challengeParameters);
    helper.add('session', session);
    return helper.toString();
  }
}

class _RespondToAuthChallengeResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<RespondToAuthChallengeResponse> {
  const _RespondToAuthChallengeResponseAwsJson11Serializer()
      : super('RespondToAuthChallengeResponse');

  @override
  Iterable<Type> get types =>
      const [RespondToAuthChallengeResponse, _$RespondToAuthChallengeResponse];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  RespondToAuthChallengeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RespondToAuthChallengeResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AuthenticationResult':
          if (value != null) {
            result.authenticationResult.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i2.AuthenticationResultType))
                as _i2.AuthenticationResultType));
          }
          break;
        case 'ChallengeName':
          if (value != null) {
            result.challengeName = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ChallengeNameType))
                as _i3.ChallengeNameType);
          }
          break;
        case 'ChallengeParameters':
          if (value != null) {
            result.challengeParameters.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i4.BuiltMap, [FullType(String), FullType(String)]))
                as _i4.BuiltMap<String, String>));
          }
          break;
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(value,
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
    final payload = (object as RespondToAuthChallengeResponse);
    final result = <Object?>[];
    if (payload.authenticationResult != null) {
      result
        ..add('AuthenticationResult')
        ..add(serializers.serialize(payload.authenticationResult!,
            specifiedType: const FullType(_i2.AuthenticationResultType)));
    }
    if (payload.challengeName != null) {
      result
        ..add('ChallengeName')
        ..add(serializers.serialize(payload.challengeName!,
            specifiedType: const FullType(_i3.ChallengeNameType)));
    }
    if (payload.challengeParameters != null) {
      result
        ..add('ChallengeParameters')
        ..add(serializers.serialize(payload.challengeParameters!,
            specifiedType: const FullType(
                _i4.BuiltMap, [FullType(String), FullType(String)])));
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
