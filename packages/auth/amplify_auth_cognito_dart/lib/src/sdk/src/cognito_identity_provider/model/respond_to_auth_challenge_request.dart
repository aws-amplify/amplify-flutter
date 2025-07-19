// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.respond_to_auth_challenge_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
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
        Built<
          RespondToAuthChallengeRequest,
          RespondToAuthChallengeRequestBuilder
        > {
  /// The request to respond to an authentication challenge.
  factory RespondToAuthChallengeRequest({
    required String clientId,
    required ChallengeNameType challengeName,
    String? session,
    Map<String, String>? challengeResponses,
    AnalyticsMetadataType? analyticsMetadata,
    UserContextDataType? userContextData,
    Map<String, String>? clientMetadata,
  }) {
    return _$RespondToAuthChallengeRequest._(
      clientId: clientId,
      challengeName: challengeName,
      session: session,
      challengeResponses: challengeResponses == null
          ? null
          : _i3.BuiltMap(challengeResponses),
      analyticsMetadata: analyticsMetadata,
      userContextData: userContextData,
      clientMetadata: clientMetadata == null
          ? null
          : _i3.BuiltMap(clientMetadata),
    );
  }

  /// The request to respond to an authentication challenge.
  factory RespondToAuthChallengeRequest.build([
    void Function(RespondToAuthChallengeRequestBuilder) updates,
  ]) = _$RespondToAuthChallengeRequest;

  const RespondToAuthChallengeRequest._();

  factory RespondToAuthChallengeRequest.fromRequest(
    RespondToAuthChallengeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<RespondToAuthChallengeRequest>>
  serializers = [RespondToAuthChallengeRequestAwsJson11Serializer()];

  /// The ID of the app client where the user is signing in.
  String get clientId;

  /// The name of the challenge that you are responding to.
  ///
  /// You can't respond to an `ADMIN\_NO\_SRP_AUTH` challenge with this operation.
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
  ChallengeNameType get challengeName;

  /// The session identifier that maintains the state of authentication requests and challenge responses. If an `AdminInitiateAuth` or `AdminRespondToAuthChallenge` API request results in a determination that your application must pass another challenge, Amazon Cognito returns a session with other challenge parameters. Send this session identifier, unmodified, to the next `AdminRespondToAuthChallenge` request.
  String? get session;

  /// The responses to the challenge that you received in the previous request. Each challenge has its own required response parameters. The following examples are partial JSON request bodies that highlight challenge-response parameters.
  ///
  /// You must provide a SECRET_HASH parameter in all challenge responses to an app client that has a client secret. Include a `DEVICE_KEY` for device authentication.
  ///
  /// SELECT_CHALLENGE
  ///
  /// `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": { "USERNAME": "\[username\]", "ANSWER": "\[Challenge name\]"}`
  ///
  /// Available challenges are `PASSWORD`, `PASSWORD_SRP`, `EMAIL_OTP`, `SMS_OTP`, and `WEB_AUTHN`.
  ///
  /// Complete authentication in the `SELECT_CHALLENGE` response for `PASSWORD`, `PASSWORD_SRP`, and `WEB_AUTHN`:
  ///
  /// *   `"ChallengeName": "SELECT\_CHALLENGE", "ChallengeResponses": { "ANSWER": "WEB\_AUTHN", "USERNAME": "\[username\]", "CREDENTIAL": "\[AuthenticationResponseJSON\]"}`
  ///
  ///     See [AuthenticationResponseJSON](https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson).
  ///
  /// *   `"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": { "ANSWER": "PASSWORD", "USERNAME": "\[username\]", "PASSWORD": "\[password\]"}`
  ///
  /// *   `"ChallengeName": "SELECT\_CHALLENGE", "ChallengeResponses": { "ANSWER": "PASSWORD\_SRP", "USERNAME": "\[username\]", "SRP\_A": "\[SRP\_A\]"}`
  ///
  ///
  /// For `SMS_OTP` and `EMAIL_OTP`, respond with the username and answer. Your user pool will send a code for the user to submit in the next challenge response.
  ///
  /// *   `"ChallengeName": "SELECT\_CHALLENGE", "ChallengeResponses": { "ANSWER": "SMS\_OTP", "USERNAME": "\[username\]"}`
  ///
  /// *   `"ChallengeName": "SELECT\_CHALLENGE", "ChallengeResponses": { "ANSWER": "EMAIL\_OTP", "USERNAME": "\[username\]"}`
  ///
  ///
  /// SMS_OTP
  ///
  /// `"ChallengeName": "SMS\_OTP", "ChallengeResponses": {"SMS\_OTP_CODE": "\[code\]", "USERNAME": "\[username\]"}`
  ///
  /// EMAIL_OTP
  ///
  /// `"ChallengeName": "EMAIL\_OTP", "ChallengeResponses": {"EMAIL\_OTP_CODE": "\[code\]", "USERNAME": "\[username\]"}`
  ///
  /// SMS_MFA
  ///
  /// `"ChallengeName": "SMS\_MFA", "ChallengeResponses": {"SMS\_MFA_CODE": "\[code\]", "USERNAME": "\[username\]"}`
  ///
  /// PASSWORD_VERIFIER
  ///
  /// This challenge response is part of the SRP flow. Amazon Cognito requires that your application respond to this challenge within a few seconds. When the response time exceeds this period, your user pool returns a `NotAuthorizedException` error.
  ///
  /// `"ChallengeName": "PASSWORD\_VERIFIER", "ChallengeResponses": {"PASSWORD\_CLAIM\_SIGNATURE": "\[claim\_signature\]", "PASSWORD\_CLAIM\_SECRET\_BLOCK": "\[secret\_block\]", "TIMESTAMP": \[timestamp\], "USERNAME": "\[username\]"}`
  ///
  /// Add `"DEVICE_KEY"` when you sign in with a remembered device.
  ///
  /// CUSTOM_CHALLENGE
  ///
  /// `"ChallengeName": "CUSTOM\_CHALLENGE", "ChallengeResponses": {"USERNAME": "\[username\]", "ANSWER": "\[challenge\_answer\]"}`
  ///
  /// Add `"DEVICE_KEY"` when you sign in with a remembered device.
  ///
  /// NEW\_PASSWORD\_REQUIRED
  ///
  /// `"ChallengeName": "NEW\_PASSWORD\_REQUIRED", "ChallengeResponses": {"NEW\_PASSWORD": "\[new\_password\]", "USERNAME": "\[username\]"}`
  ///
  /// To set any required attributes that `InitiateAuth` returned in an `requiredAttributes` parameter, add `"userAttributes.\[attribute\_name\]": "\[attribute\_value\]"`. This parameter can also set values for writable attributes that aren't required by your user pool.
  ///
  /// In a `NEW\_PASSWORD\_REQUIRED` challenge response, you can't modify a required attribute that already has a value. In `AdminRespondToAuthChallenge` or `RespondToAuthChallenge`, set a value for any keys that Amazon Cognito returned in the `requiredAttributes` parameter, then use the `AdminUpdateUserAttributes` or `UpdateUserAttributes` API operation to modify the value of any additional attributes.
  ///
  /// SOFTWARE\_TOKEN\_MFA
  ///
  /// `"ChallengeName": "SOFTWARE\_TOKEN\_MFA", "ChallengeResponses": {"USERNAME": "\[username\]", "SOFTWARE\_TOKEN\_MFA\_CODE": \[authenticator\_code\]}`
  ///
  /// DEVICE\_SRP\_AUTH
  ///
  /// `"ChallengeName": "DEVICE\_SRP\_AUTH", "ChallengeResponses": {"USERNAME": "\[username\]", "DEVICE\_KEY": "\[device\_key\]", "SRP\_A": "\[srp\_a\]"}`
  ///
  /// DEVICE\_PASSWORD\_VERIFIER
  ///
  /// `"ChallengeName": "DEVICE\_PASSWORD\_VERIFIER", "ChallengeResponses": {"DEVICE\_KEY": "\[device\_key\]", "PASSWORD\_CLAIM\_SIGNATURE": "\[claim\_signature\]", "PASSWORD\_CLAIM\_SECRET\_BLOCK": "\[secret_block\]", "TIMESTAMP": \[timestamp\], "USERNAME": "\[username\]"}`
  ///
  /// MFA_SETUP
  ///
  /// `"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME": "\[username\]"}, "SESSION": "\[Session ID from VerifySoftwareToken\]"`
  ///
  /// SELECT\_MFA\_TYPE
  ///
  /// `"ChallengeName": "SELECT\_MFA\_TYPE", "ChallengeResponses": {"USERNAME": "\[username\]", "ANSWER": "\[SMS\_MFA or SOFTWARE\_TOKEN_MFA\]"}`
  ///
  /// For more information about `SECRET_HASH`, see [Computing secret hash values](https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash). For information about `DEVICE_KEY`, see [Working with user devices in your user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  _i3.BuiltMap<String, String>? get challengeResponses;

  /// Information that supports analytics outcomes with Amazon Pinpoint, including the user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, email address, or phone number.
  AnalyticsMetadataType? get analyticsMetadata;

  /// Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  ///
  /// For more information, see [Collecting data for threat protection in applications](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).
  UserContextDataType? get userContextData;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the RespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: _post authentication_, _pre token generation_, _define auth challenge_, _create auth challenge_, and _verify auth challenge_. When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your RespondToAuthChallenge request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
  ///
  /// For more information, see [Using Lambda triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the `ClientMetadata` parameter, note that Amazon Cognito won't do the following:
  ///
  /// *   Store the `ClientMetadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the `ClientMetadata` parameter serves no purpose.
  ///
  /// *   Validate the `ClientMetadata` value.
  ///
  /// *   Encrypt the `ClientMetadata` value. Don't send sensitive information in this parameter.
  _i3.BuiltMap<String, String>? get clientMetadata;
  @override
  RespondToAuthChallengeRequest getPayload() => this;

  @override
  List<Object?> get props => [
    clientId,
    challengeName,
    session,
    challengeResponses,
    analyticsMetadata,
    userContextData,
    clientMetadata,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RespondToAuthChallengeRequest')
      ..add('clientId', '***SENSITIVE***')
      ..add('challengeName', challengeName)
      ..add('session', '***SENSITIVE***')
      ..add('challengeResponses', '***SENSITIVE***')
      ..add('analyticsMetadata', analyticsMetadata)
      ..add('userContextData', '***SENSITIVE***')
      ..add('clientMetadata', clientMetadata);
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
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientId':
          result.clientId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
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
        case 'ChallengeResponses':
          result.challengeResponses.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i3.BuiltMap<String, String>),
          );
        case 'AnalyticsMetadata':
          result.analyticsMetadata.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(AnalyticsMetadataType),
                )
                as AnalyticsMetadataType),
          );
        case 'UserContextData':
          result.userContextData.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(UserContextDataType),
                )
                as UserContextDataType),
          );
        case 'ClientMetadata':
          result.clientMetadata.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i3.BuiltMap<String, String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RespondToAuthChallengeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RespondToAuthChallengeRequest(
      :clientId,
      :challengeName,
      :session,
      :challengeResponses,
      :analyticsMetadata,
      :userContextData,
      :clientMetadata,
    ) = object;
    result$.addAll([
      'ClientId',
      serializers.serialize(clientId, specifiedType: const FullType(String)),
      'ChallengeName',
      serializers.serialize(
        challengeName,
        specifiedType: const FullType(ChallengeNameType),
      ),
    ]);
    if (session != null) {
      result$
        ..add('Session')
        ..add(
          serializers.serialize(session, specifiedType: const FullType(String)),
        );
    }
    if (challengeResponses != null) {
      result$
        ..add('ChallengeResponses')
        ..add(
          serializers.serialize(
            challengeResponses,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
          ),
        );
    }
    if (analyticsMetadata != null) {
      result$
        ..add('AnalyticsMetadata')
        ..add(
          serializers.serialize(
            analyticsMetadata,
            specifiedType: const FullType(AnalyticsMetadataType),
          ),
        );
    }
    if (userContextData != null) {
      result$
        ..add('UserContextData')
        ..add(
          serializers.serialize(
            userContextData,
            specifiedType: const FullType(UserContextDataType),
          ),
        );
    }
    if (clientMetadata != null) {
      result$
        ..add('ClientMetadata')
        ..add(
          serializers.serialize(
            clientMetadata,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
          ),
        );
    }
    return result$;
  }
}
