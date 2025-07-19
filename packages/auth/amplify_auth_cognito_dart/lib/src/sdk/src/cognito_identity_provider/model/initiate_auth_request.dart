// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.initiate_auth_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/auth_flow_type.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'initiate_auth_request.g.dart';

/// Initiates the authentication request.
abstract class InitiateAuthRequest
    with
        _i1.HttpInput<InitiateAuthRequest>,
        _i2.AWSEquatable<InitiateAuthRequest>
    implements Built<InitiateAuthRequest, InitiateAuthRequestBuilder> {
  /// Initiates the authentication request.
  factory InitiateAuthRequest({
    required AuthFlowType authFlow,
    Map<String, String>? authParameters,
    Map<String, String>? clientMetadata,
    required String clientId,
    AnalyticsMetadataType? analyticsMetadata,
    UserContextDataType? userContextData,
    String? session,
  }) {
    return _$InitiateAuthRequest._(
      authFlow: authFlow,
      authParameters: authParameters == null
          ? null
          : _i3.BuiltMap(authParameters),
      clientMetadata: clientMetadata == null
          ? null
          : _i3.BuiltMap(clientMetadata),
      clientId: clientId,
      analyticsMetadata: analyticsMetadata,
      userContextData: userContextData,
      session: session,
    );
  }

  /// Initiates the authentication request.
  factory InitiateAuthRequest.build([
    void Function(InitiateAuthRequestBuilder) updates,
  ]) = _$InitiateAuthRequest;

  const InitiateAuthRequest._();

  factory InitiateAuthRequest.fromRequest(
    InitiateAuthRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<InitiateAuthRequest>> serializers = [
    InitiateAuthRequestAwsJson11Serializer(),
  ];

  /// The authentication flow that you want to initiate. Each `AuthFlow` has linked `AuthParameters` that you must submit. The following are some example flows.
  ///
  /// USER_AUTH
  ///
  /// The entry point for [choice-based authentication](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice) with passwords, one-time passwords, and WebAuthn authenticators. Request a preferred authentication type or review available authentication types. From the offered authentication types, select one in a challenge response and then authenticate with that method in an additional challenge response. To activate this setting, your user pool must be in the [Essentials tier](https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html) or higher.
  ///
  /// USER\_SRP\_AUTH
  ///
  /// Username-password authentication with the Secure Remote Password (SRP) protocol. For more information, see [Use SRP password verification in custom authentication flow](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow).
  ///
  /// REFRESH\_TOKEN\_AUTH and REFRESH_TOKEN
  ///
  /// Receive new ID and access tokens when you pass a `REFRESH_TOKEN` parameter with a valid refresh token as the value. For more information, see [Using the refresh token](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html).
  ///
  /// CUSTOM_AUTH
  ///
  /// Custom authentication with Lambda triggers. For more information, see [Custom authentication challenge Lambda triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).
  ///
  /// USER\_PASSWORD\_AUTH
  ///
  /// Client-side username-password authentication with the password sent directly in the request. For more information about client-side and server-side authentication, see [SDK authorization models](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html).
  ///
  /// `ADMIN\_USER\_PASSWORD_AUTH` is a flow type of `AdminInitiateAuth` and isn't valid for InitiateAuth. `ADMIN\_NO\_SRP_AUTH` is a legacy server-side username-password flow and isn't valid for InitiateAuth.
  AuthFlowType get authFlow;

  /// The authentication parameters. These are inputs corresponding to the `AuthFlow` that you're invoking.
  ///
  /// The required values are specific to the InitiateAuthRequest$AuthFlow.
  ///
  /// The following are some authentication flows and their parameters. Add a `SECRET_HASH` parameter if your app client has a client secret.
  ///
  /// *   `USER_AUTH`: `USERNAME` (required), `PREFERRED_CHALLENGE`. If you don't provide a value for `PREFERRED_CHALLENGE`, Amazon Cognito responds with the `AvailableChallenges` parameter that specifies the available sign-in methods.
  ///
  /// *   `USER\_SRP\_AUTH`: `USERNAME` (required), `SRP_A` (required), `DEVICE_KEY`.
  ///
  /// *   `USER\_PASSWORD\_AUTH`: `USERNAME` (required), `PASSWORD` (required), `DEVICE_KEY`.
  ///
  /// *   `REFRESH\_TOKEN\_AUTH/REFRESH_TOKEN`: `REFRESH_TOKEN` (required), `DEVICE_KEY`.
  ///
  /// *   `CUSTOM_AUTH`: `USERNAME` (required), `SECRET_HASH` (if app client is configured with client secret), `DEVICE_KEY`. To start the authentication flow with password verification, include `ChallengeName: SRP_A` and `SRP\_A: (The SRP\_A Value)`.
  ///
  ///
  /// For more information about `SECRET_HASH`, see [Computing secret hash values](https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash). For information about `DEVICE_KEY`, see [Working with user devices in your user pool](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
  _i3.BuiltMap<String, String>? get authParameters;

  /// A map of custom key-value pairs that you can provide as input for certain custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you send an `InitiateAuth` request, Amazon Cognito invokes the Lambda functions that are specified for various triggers. The `ClientMetadata` value is passed as input to the functions for only the following triggers.
  ///
  /// *   Pre sign-up
  ///
  /// *   Pre authentication
  ///
  /// *   User migration
  ///
  ///
  /// When Amazon Cognito invokes the functions for these triggers, it passes a JSON payload as input to the function. This payload contains a `validationData` attribute with the data that you assigned to the `ClientMetadata` parameter in your `InitiateAuth` request. In your function, `validationData` can contribute to operations that require data that isn't in the default payload.
  ///
  /// `InitiateAuth` requests invokes the following triggers without `ClientMetadata` as input.
  ///
  /// *   Post authentication
  ///
  /// *   Custom message
  ///
  /// *   Pre token generation
  ///
  /// *   Create auth challenge
  ///
  /// *   Define auth challenge
  ///
  /// *   Custom email sender
  ///
  /// *   Custom SMS sender
  ///
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

  /// The ID of the app client that your user wants to sign in to.
  String get clientId;

  /// Information that supports analytics outcomes with Amazon Pinpoint, including the user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier, email address, or phone number.
  AnalyticsMetadataType? get analyticsMetadata;

  /// Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  ///
  /// For more information, see [Collecting data for threat protection in applications](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).
  UserContextDataType? get userContextData;

  /// The optional session ID from a `ConfirmSignUp` API request. You can sign in a user directly from the sign-up process with the `USER_AUTH` authentication flow. When you pass the session ID to `InitiateAuth`, Amazon Cognito assumes the SMS or email message one-time verification password from `ConfirmSignUp` as the primary authentication factor. You're not required to submit this code a second time. This option is only valid for users who have confirmed their sign-up and are signing in for the first time within the authentication flow session duration of the session ID.
  String? get session;
  @override
  InitiateAuthRequest getPayload() => this;

  @override
  List<Object?> get props => [
    authFlow,
    authParameters,
    clientMetadata,
    clientId,
    analyticsMetadata,
    userContextData,
    session,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InitiateAuthRequest')
      ..add('authFlow', authFlow)
      ..add('authParameters', '***SENSITIVE***')
      ..add('clientMetadata', clientMetadata)
      ..add('clientId', '***SENSITIVE***')
      ..add('analyticsMetadata', analyticsMetadata)
      ..add('userContextData', '***SENSITIVE***')
      ..add('session', '***SENSITIVE***');
    return helper.toString();
  }
}

class InitiateAuthRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<InitiateAuthRequest> {
  const InitiateAuthRequestAwsJson11Serializer() : super('InitiateAuthRequest');

  @override
  Iterable<Type> get types => const [
    InitiateAuthRequest,
    _$InitiateAuthRequest,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  InitiateAuthRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiateAuthRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AuthFlow':
          result.authFlow =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(AuthFlowType),
                  )
                  as AuthFlowType);
        case 'AuthParameters':
          result.authParameters.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i3.BuiltMap<String, String>),
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
        case 'ClientId':
          result.clientId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
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
        case 'Session':
          result.session =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InitiateAuthRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InitiateAuthRequest(
      :authFlow,
      :authParameters,
      :clientMetadata,
      :clientId,
      :analyticsMetadata,
      :userContextData,
      :session,
    ) = object;
    result$.addAll([
      'AuthFlow',
      serializers.serialize(
        authFlow,
        specifiedType: const FullType(AuthFlowType),
      ),
      'ClientId',
      serializers.serialize(clientId, specifiedType: const FullType(String)),
    ]);
    if (authParameters != null) {
      result$
        ..add('AuthParameters')
        ..add(
          serializers.serialize(
            authParameters,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(String),
            ]),
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
    if (session != null) {
      result$
        ..add('Session')
        ..add(
          serializers.serialize(session, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
