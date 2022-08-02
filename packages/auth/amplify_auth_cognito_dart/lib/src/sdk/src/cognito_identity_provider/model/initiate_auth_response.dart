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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.initiate_auth_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'initiate_auth_response.g.dart';

/// Initiates the authentication response.
abstract class InitiateAuthResponse
    with _i1.AWSEquatable<InitiateAuthResponse>
    implements Built<InitiateAuthResponse, InitiateAuthResponseBuilder> {
  /// Initiates the authentication response.
  factory InitiateAuthResponse(
      {_i2.AuthenticationResultType? authenticationResult,
      _i3.ChallengeNameType? challengeName,
      _i4.BuiltMap<String, String>? challengeParameters,
      String? session}) {
    return _$InitiateAuthResponse._(
        authenticationResult: authenticationResult,
        challengeName: challengeName,
        challengeParameters: challengeParameters,
        session: session);
  }

  /// Initiates the authentication response.
  factory InitiateAuthResponse.build(
          [void Function(InitiateAuthResponseBuilder) updates]) =
      _$InitiateAuthResponse;

  const InitiateAuthResponse._();

  /// Constructs a [InitiateAuthResponse] from a [payload] and [response].
  factory InitiateAuthResponse.fromResponse(
          InitiateAuthResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    InitiateAuthResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InitiateAuthResponseBuilder b) {}

  /// The result of the authentication response. This result is only returned if the caller doesn't need to pass another challenge. If the caller does need to pass another challenge before it gets tokens, `ChallengeName`, `ChallengeParameters`, and `Session` are returned.
  _i2.AuthenticationResultType? get authenticationResult;

  /// The name of the challenge that you're responding to with this call. This name is returned in the `AdminInitiateAuth` response if you must pass another challenge.
  ///
  /// Valid values include the following:
  ///
  /// All of the following challenges require `USERNAME` and `SECRET_HASH` (if applicable) in the parameters.
  ///
  /// *   `SMS_MFA`: Next challenge is to supply an `SMS\_MFA\_CODE`, delivered via SMS.
  ///
  /// *   `PASSWORD_VERIFIER`: Next challenge is to supply `PASSWORD\_CLAIM\_SIGNATURE`, `PASSWORD\_CLAIM\_SECRET_BLOCK`, and `TIMESTAMP` after the client-side SRP calculations.
  ///
  /// *   `CUSTOM_CHALLENGE`: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued.
  ///
  /// *   `DEVICE\_SRP\_AUTH`: If device tracking was activated on your user pool and the previous challenges were passed, this challenge is returned so that Amazon Cognito can start tracking this device.
  ///
  /// *   `DEVICE\_PASSWORD\_VERIFIER`: Similar to `PASSWORD_VERIFIER`, but for devices only.
  ///
  /// *   `NEW\_PASSWORD\_REQUIRED`: For users who are required to change their passwords after successful first login.
  ///
  ///     Respond to this challenge with `NEW_PASSWORD` and any required attributes that Amazon Cognito returned in the `requiredAttributes` parameter. You can also set values for attributes that aren't required by your user pool and that your app client can write. For more information, see [RespondToAuthChallenge](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_RespondToAuthChallenge.html).
  ///
  ///     In a `NEW\_PASSWORD\_REQUIRED` challenge response, you can't modify a required attribute that already has a value. In `RespondToAuthChallenge`, set a value for any keys that Amazon Cognito returned in the `requiredAttributes` parameter, then use the `UpdateUserAttributes` API operation to modify the value of any additional attributes.
  ///
  /// *   `MFA_SETUP`: For users who are required to setup an MFA factor before they can sign in. The MFA types activated for the user pool will be listed in the challenge parameters `MFA\_CAN\_SETUP` value.
  ///
  ///     To set up software token MFA, use the session returned here from `InitiateAuth` as an input to `AssociateSoftwareToken`. Use the session returned by `VerifySoftwareToken` as an input to `RespondToAuthChallenge` with challenge name `MFA_SETUP` to complete sign-in. To set up SMS MFA, an administrator should help the user to add a phone number to their account, and then the user should call `InitiateAuth` again to restart sign-in.
  _i3.ChallengeNameType? get challengeName;

  /// The challenge parameters. These are returned in the `InitiateAuth` response if you must pass another challenge. The responses in this parameter should be used to compute inputs to the next call (`RespondToAuthChallenge`).
  ///
  /// All challenges require `USERNAME` and `SECRET_HASH` (if applicable).
  _i4.BuiltMap<String, String>? get challengeParameters;

  /// The session that should pass both ways in challenge-response calls to the service. If the caller must pass another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.
  String? get session;
  @override
  List<Object?> get props =>
      [authenticationResult, challengeName, challengeParameters, session];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InitiateAuthResponse');
    helper.add('authenticationResult', authenticationResult);
    helper.add('challengeName', challengeName);
    helper.add('challengeParameters', challengeParameters);
    helper.add('session', session);
    return helper.toString();
  }
}

class InitiateAuthResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<InitiateAuthResponse> {
  const InitiateAuthResponseAwsJson11Serializer()
      : super('InitiateAuthResponse');

  @override
  Iterable<Type> get types =>
      const [InitiateAuthResponse, _$InitiateAuthResponse];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols =>
      const [_i5.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  InitiateAuthResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InitiateAuthResponseBuilder();
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
    final payload = (object as InitiateAuthResponse);
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
