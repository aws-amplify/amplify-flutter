// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.initiate_auth_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'initiate_auth_response.g.dart';

/// Initiates the authentication response.
abstract class InitiateAuthResponse
    with _i1.AWSEquatable<InitiateAuthResponse>
    implements Built<InitiateAuthResponse, InitiateAuthResponseBuilder> {
  /// Initiates the authentication response.
  factory InitiateAuthResponse({
    ChallengeNameType? challengeName,
    String? session,
    Map<String, String?>? challengeParameters,
    AuthenticationResultType? authenticationResult,
    List<ChallengeNameType>? availableChallenges,
  }) {
    return _$InitiateAuthResponse._(
      challengeName: challengeName,
      session: session,
      challengeParameters: challengeParameters == null
          ? null
          : _i2.BuiltMap(challengeParameters),
      authenticationResult: authenticationResult,
      availableChallenges: availableChallenges == null
          ? null
          : _i2.BuiltList(availableChallenges),
    );
  }

  /// Initiates the authentication response.
  factory InitiateAuthResponse.build([
    void Function(InitiateAuthResponseBuilder) updates,
  ]) = _$InitiateAuthResponse;

  const InitiateAuthResponse._();

  /// Constructs a [InitiateAuthResponse] from a [payload] and [response].
  factory InitiateAuthResponse.fromResponse(
    InitiateAuthResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i3.SmithySerializer<InitiateAuthResponse>> serializers = [
    InitiateAuthResponseAwsJson11Serializer(),
  ];

  /// The name of an additional authentication challenge that you must respond to.
  ///
  /// Possible challenges include the following:
  ///
  /// All of the following challenges require `USERNAME` and, when the app client has a client secret, `SECRET_HASH` in the parameters.
  ///
  /// *   `WEB_AUTHN`: Respond to the challenge with the results of a successful authentication with a WebAuthn authenticator, or passkey. Examples of WebAuthn authenticators include biometric devices and security keys.
  ///
  /// *   `PASSWORD`: Respond with `USER\_PASSWORD\_AUTH` parameters: `USERNAME` (required), `PASSWORD` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`.
  ///
  /// *   `PASSWORD_SRP`: Respond with `USER\_SRP\_AUTH` parameters: `USERNAME` (required), `SRP_A` (required), `SECRET_HASH` (required if the app client is configured with a client secret), `DEVICE_KEY`.
  ///
  /// *   `SELECT_CHALLENGE`: Respond to the challenge with `USERNAME` and an `ANSWER` that matches one of the challenge types in the `AvailableChallenges` response parameter.
  ///
  /// *   `SMS_MFA`: Respond with an `SMS\_MFA\_CODE` that your user pool delivered in an SMS message.
  ///
  /// *   `EMAIL_OTP`: Respond with an `EMAIL\_OTP\_CODE` that your user pool delivered in an email message.
  ///
  /// *   `PASSWORD_VERIFIER`: Respond with `PASSWORD\_CLAIM\_SIGNATURE`, `PASSWORD\_CLAIM\_SECRET_BLOCK`, and `TIMESTAMP` after client-side SRP calculations.
  ///
  /// *   `CUSTOM_CHALLENGE`: This is returned if your custom authentication flow determines that the user should pass another challenge before tokens are issued. The parameters of the challenge are determined by your Lambda function.
  ///
  /// *   `DEVICE\_SRP\_AUTH`: Respond with the initial parameters of device SRP authentication. For more information, see [Signing in with a device](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device).
  ///
  /// *   `DEVICE\_PASSWORD\_VERIFIER`: Respond with `PASSWORD\_CLAIM\_SIGNATURE`, `PASSWORD\_CLAIM\_SECRET_BLOCK`, and `TIMESTAMP` after client-side SRP calculations. For more information, see [Signing in with a device](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device).
  ///
  /// *   `NEW\_PASSWORD\_REQUIRED`: For users who are required to change their passwords after successful first login. Respond to this challenge with `NEW_PASSWORD` and any required attributes that Amazon Cognito returned in the `requiredAttributes` parameter. You can also set values for attributes that aren't required by your user pool and that your app client can write.
  ///
  ///     Amazon Cognito only returns this challenge for users who have temporary passwords. When you create passwordless users, you must provide values for all required attributes.
  ///
  ///     In a `NEW\_PASSWORD\_REQUIRED` challenge response, you can't modify a required attribute that already has a value. In `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a value for any keys that Amazon Cognito returned in the `requiredAttributes` parameter, then use the `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation to modify the value of any additional attributes.
  ///
  /// *   `MFA_SETUP`: For users who are required to setup an MFA factor before they can sign in. The MFA types activated for the user pool will be listed in the challenge parameters `MFAS\_CAN\_SETUP` value.
  ///
  ///     To set up time-based one-time password (TOTP) MFA, use the session returned in this challenge from `InitiateAuth` or `AdminInitiateAuth` as an input to `AssociateSoftwareToken`. Then, use the session returned by `VerifySoftwareToken` as an input to `RespondToAuthChallenge` or `AdminRespondToAuthChallenge` with challenge name `MFA_SETUP` to complete sign-in.
  ///
  ///     To set up SMS or email MFA, collect a `phone_number` or `email` attribute for the user. Then restart the authentication flow with an `InitiateAuth` or `AdminInitiateAuth` request.
  ChallengeNameType? get challengeName;

  /// The session identifier that links a challenge response to the initial authentication request. If the user must pass another challenge, Amazon Cognito returns a session ID and challenge parameters.
  String? get session;

  /// The required parameters of the `ChallengeName` challenge.
  ///
  /// All challenges require `USERNAME`. They also require `SECRET_HASH` if your app client has a client secret.
  _i2.BuiltMap<String, String?>? get challengeParameters;

  /// The result of a successful and complete authentication request. This result is only returned if the user doesn't need to pass another challenge. If they must pass another challenge before they get tokens, Amazon Cognito returns a challenge in `ChallengeName`, `ChallengeParameters`, and `Session` response parameters.
  AuthenticationResultType? get authenticationResult;

  /// This response parameter lists the available authentication challenges that users can select from in [choice-based authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice). For example, they might be able to choose between passkey authentication, a one-time password from an SMS message, and a traditional password.
  _i2.BuiltList<ChallengeNameType>? get availableChallenges;
  @override
  List<Object?> get props => [
    challengeName,
    session,
    challengeParameters,
    authenticationResult,
    availableChallenges,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InitiateAuthResponse')
      ..add('challengeName', challengeName)
      ..add('session', '***SENSITIVE***')
      ..add('challengeParameters', challengeParameters)
      ..add('authenticationResult', authenticationResult)
      ..add('availableChallenges', availableChallenges);
    return helper.toString();
  }
}

class InitiateAuthResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<InitiateAuthResponse> {
  const InitiateAuthResponseAwsJson11Serializer()
    : super('InitiateAuthResponse');

  @override
  Iterable<Type> get types => const [
    InitiateAuthResponse,
    _$InitiateAuthResponse,
  ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  InitiateAuthResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiateAuthResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChallengeName':
          result.challengeName =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChallengeNameType),
                  )
                  as ChallengeNameType);
        case 'Session':
          result.session =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ChallengeParameters':
          result.challengeParameters.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltMap, [
                    FullType(String),
                    FullType.nullable(String),
                  ]),
                )
                as _i2.BuiltMap<String, String?>),
          );
        case 'AuthenticationResult':
          result.authenticationResult.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(AuthenticationResultType),
                )
                as AuthenticationResultType),
          );
        case 'AvailableChallenges':
          result.availableChallenges.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltList, [
                    FullType(ChallengeNameType),
                  ]),
                )
                as _i2.BuiltList<ChallengeNameType>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InitiateAuthResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InitiateAuthResponse(
      :challengeName,
      :session,
      :challengeParameters,
      :authenticationResult,
      :availableChallenges,
    ) = object;
    if (challengeName != null) {
      result$
        ..add('ChallengeName')
        ..add(
          serializers.serialize(
            challengeName,
            specifiedType: const FullType(ChallengeNameType),
          ),
        );
    }
    if (session != null) {
      result$
        ..add('Session')
        ..add(
          serializers.serialize(session, specifiedType: const FullType(String)),
        );
    }
    if (challengeParameters != null) {
      result$
        ..add('ChallengeParameters')
        ..add(
          serializers.serialize(
            challengeParameters,
            specifiedType: const FullType(_i2.BuiltMap, [
              FullType(String),
              FullType.nullable(String),
            ]),
          ),
        );
    }
    if (authenticationResult != null) {
      result$
        ..add('AuthenticationResult')
        ..add(
          serializers.serialize(
            authenticationResult,
            specifiedType: const FullType(AuthenticationResultType),
          ),
        );
    }
    if (availableChallenges != null) {
      result$
        ..add('AvailableChallenges')
        ..add(
          serializers.serialize(
            availableChallenges,
            specifiedType: const FullType(_i2.BuiltList, [
              FullType(ChallengeNameType),
            ]),
          ),
        );
    }
    return result$;
  }
}
