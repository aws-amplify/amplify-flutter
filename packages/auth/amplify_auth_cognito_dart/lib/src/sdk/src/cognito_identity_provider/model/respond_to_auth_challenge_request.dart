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

// Generated with smithy-dart 0.2.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.respond_to_auth_challenge_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'respond_to_auth_challenge_request.g.dart';

/// The request to respond to an authentication challenge.
abstract class RespondToAuthChallengeRequest
    with
        _i1.HttpInput<RespondToAuthChallengeRequest>,
        _i2.AWSEquatable<RespondToAuthChallengeRequest>
    implements
        Built<RespondToAuthChallengeRequest,
            RespondToAuthChallengeRequestBuilder> {
  /// The request to respond to an authentication challenge.
  factory RespondToAuthChallengeRequest({
    _i3.AnalyticsMetadataType? analyticsMetadata,
    required _i4.ChallengeNameType challengeName,
    Map<String, String>? challengeResponses,
    required String clientId,
    Map<String, String>? clientMetadata,
    String? session,
    _i5.UserContextDataType? userContextData,
  }) {
    return _$RespondToAuthChallengeRequest._(
      analyticsMetadata: analyticsMetadata,
      challengeName: challengeName,
      challengeResponses:
          challengeResponses == null ? null : _i6.BuiltMap(challengeResponses),
      clientId: clientId,
      clientMetadata:
          clientMetadata == null ? null : _i6.BuiltMap(clientMetadata),
      session: session,
      userContextData: userContextData,
    );
  }

  /// The request to respond to an authentication challenge.
  factory RespondToAuthChallengeRequest.build(
          [void Function(RespondToAuthChallengeRequestBuilder) updates]) =
      _$RespondToAuthChallengeRequest;

  const RespondToAuthChallengeRequest._();

  factory RespondToAuthChallengeRequest.fromRequest(
    RespondToAuthChallengeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RespondToAuthChallengeRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RespondToAuthChallengeRequestBuilder b) {}

  /// The Amazon Pinpoint analytics metadata that contributes to your metrics for `RespondToAuthChallenge` calls.
  _i3.AnalyticsMetadataType? get analyticsMetadata;

  /// The challenge name. For more information, see [InitiateAuth](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html).
  ///
  /// `ADMIN\_NO\_SRP_AUTH` isn't a valid value.
  _i4.ChallengeNameType get challengeName;

  /// The challenge responses. These are inputs corresponding to the value of `ChallengeName`, for example:
  ///
  /// `SECRET_HASH` (if app client is configured with client secret) applies to all of the inputs that follow (including `SOFTWARE\_TOKEN\_MFA`).
  ///
  /// *   `SMS_MFA`: `SMS\_MFA\_CODE`, `USERNAME`.
  ///
  /// *   `PASSWORD_VERIFIER`: `PASSWORD\_CLAIM\_SIGNATURE`, `PASSWORD\_CLAIM\_SECRET_BLOCK`, `TIMESTAMP`, `USERNAME`.
  ///
  ///     `PASSWORD_VERIFIER` requires `DEVICE_KEY` when you sign in with a remembered device.
  ///
  /// *   `NEW\_PASSWORD\_REQUIRED`: `NEW_PASSWORD`, `USERNAME`, `SECRET_HASH` (if app client is configured with client secret). To set any required attributes that Amazon Cognito returned as `requiredAttributes` in the `InitiateAuth` response, add a `userAttributes._attributename_` parameter. This parameter can also set values for writable attributes that aren't required by your user pool.
  ///
  ///     In a `NEW\_PASSWORD\_REQUIRED` challenge response, you can't modify a required attribute that already has a value. In `RespondToAuthChallenge`, set a value for any keys that Amazon Cognito returned in the `requiredAttributes` parameter, then use the `UpdateUserAttributes` API operation to modify the value of any additional attributes.
  ///
  /// *   `SOFTWARE\_TOKEN\_MFA`: `USERNAME` and `SOFTWARE\_TOKEN\_MFA_CODE` are required attributes.
  ///
  /// *   `DEVICE\_SRP\_AUTH` requires `USERNAME`, `DEVICE_KEY`, `SRP_A` (and `SECRET_HASH`).
  ///
  /// *   `DEVICE\_PASSWORD\_VERIFIER` requires everything that `PASSWORD_VERIFIER` requires, plus `DEVICE_KEY`.
  ///
  /// *   `MFA_SETUP` requires `USERNAME`, plus you must use the session value returned by `VerifySoftwareToken` in the `Session` parameter.
  _i6.BuiltMap<String, String>? get challengeResponses;

  /// The app client ID.
  String get clientId;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: _post authentication_, _pre token generation_, _define auth challenge_, _create auth challenge_, and _verify auth challenge_. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
  ///
  /// For more information, see [Customizing user pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the following:
  ///
  /// *   Store the ClientMetadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the ClientMetadata parameter serves no purpose.
  ///
  /// *   Validate the ClientMetadata value.
  ///
  /// *   Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive information.
  _i6.BuiltMap<String, String>? get clientMetadata;

  /// The session that should be passed both ways in challenge-response calls to the service. If `InitiateAuth` or `RespondToAuthChallenge` API call determines that the caller must pass another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.
  String? get session;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i5.UserContextDataType? get userContextData;
  @override
  RespondToAuthChallengeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        analyticsMetadata,
        challengeName,
        challengeResponses,
        clientId,
        clientMetadata,
        session,
        userContextData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RespondToAuthChallengeRequest');
    helper.add(
      'analyticsMetadata',
      analyticsMetadata,
    );
    helper.add(
      'challengeName',
      challengeName,
    );
    helper.add(
      'challengeResponses',
      challengeResponses,
    );
    helper.add(
      'clientId',
      '***SENSITIVE***',
    );
    helper.add(
      'clientMetadata',
      clientMetadata,
    );
    helper.add(
      'session',
      session,
    );
    helper.add(
      'userContextData',
      userContextData,
    );
    return helper.toString();
  }
}

class RespondToAuthChallengeRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<RespondToAuthChallengeRequest> {
  const RespondToAuthChallengeRequestAwsJson11Serializer()
      : super('RespondToAuthChallengeRequest');

  @override
  Iterable<Type> get types => const [
        RespondToAuthChallengeRequest,
        _$RespondToAuthChallengeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RespondToAuthChallengeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RespondToAuthChallengeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AnalyticsMetadata':
          if (value != null) {
            result.analyticsMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalyticsMetadataType),
            ) as _i3.AnalyticsMetadataType));
          }
          break;
        case 'ChallengeName':
          result.challengeName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.ChallengeNameType),
          ) as _i4.ChallengeNameType);
          break;
        case 'ChallengeResponses':
          if (value != null) {
            result.challengeResponses.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
          }
          break;
        case 'ClientId':
          result.clientId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltMap<String, String>));
          }
          break;
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserContextData':
          if (value != null) {
            result.userContextData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.UserContextDataType),
            ) as _i5.UserContextDataType));
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
    final payload = (object as RespondToAuthChallengeRequest);
    final result = <Object?>[
      'ChallengeName',
      serializers.serialize(
        payload.challengeName,
        specifiedType: const FullType(_i4.ChallengeNameType),
      ),
      'ClientId',
      serializers.serialize(
        payload.clientId,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.analyticsMetadata != null) {
      result
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(
          payload.analyticsMetadata!,
          specifiedType: const FullType(_i3.AnalyticsMetadataType),
        ));
    }
    if (payload.challengeResponses != null) {
      result
        ..add('ChallengeResponses')
        ..add(serializers.serialize(
          payload.challengeResponses!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          payload.clientMetadata!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(
          payload.session!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userContextData != null) {
      result
        ..add('UserContextData')
        ..add(serializers.serialize(
          payload.userContextData!,
          specifiedType: const FullType(_i5.UserContextDataType),
        ));
    }
    return result;
  }
}
