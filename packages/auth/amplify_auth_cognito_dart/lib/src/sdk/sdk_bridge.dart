// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Bridging extensions between Cognito SDK and Amplify Flutter types.
@internal
library amplify_auth_cognito.sdk.sdk_bridge;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart'
    hide InvalidParameterException;
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide InvalidParameterException;
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:amplify_core/amplify_core.dart'
    show AmplifyHttpClient, AuthenticationFlowType, DependencyManager, MfaType;
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// Bridging helpers for [ChallengeNameType].
extension ChallengeNameTypeBridge on ChallengeNameType {
  /// The sign in step corresponding to this challenge.
  AuthSignInStep get signInStep => switch (this) {
        ChallengeNameType.customChallenge =>
          AuthSignInStep.confirmSignInWithCustomChallenge,
        ChallengeNameType.newPasswordRequired =>
          AuthSignInStep.confirmSignInWithNewPassword,
        ChallengeNameType.smsMfa => AuthSignInStep.confirmSignInWithSmsMfaCode,
        ChallengeNameType.selectMfaType =>
          AuthSignInStep.continueSignInWithMfaSelection,
        ChallengeNameType.mfaSetup =>
          AuthSignInStep.continueSignInWithMfaSetupSelection,
        ChallengeNameType.softwareTokenMfa =>
          AuthSignInStep.confirmSignInWithTotpMfaCode,
        ChallengeNameType.emailOtp => AuthSignInStep.confirmSignInWithOtpCode,
        ChallengeNameType.adminNoSrpAuth ||
        ChallengeNameType.passwordVerifier ||
        ChallengeNameType.devicePasswordVerifier ||
        ChallengeNameType.deviceSrpAuth ||
        _ =>
          throw InvalidStateException('Unrecognized challenge type: $this'),
      };
}

/// Bridging helpers for [CodeDeliveryDetailsType].
extension CodeDeliveryDetailsBridge on CodeDeliveryDetailsType {
  /// The [AuthCodeDeliveryDetails] representation of `this`.
  AuthCodeDeliveryDetails get asAuthCodeDeliveryDetails {
    final attributeKey = attributeName == null
        ? null
        : CognitoUserAttributeKey.parse(attributeName!);
    return AuthCodeDeliveryDetails(
      destination: destination,
      deliveryMedium:
          deliveryMedium?.asDeliveryMedium ?? DeliveryMedium.unknown,
      attributeKey: attributeKey,
    );
  }
}

/// Bridging helpers for [DeliveryMediumType].
extension DeliveryMediumTypeBridge on DeliveryMediumType {
  /// The [DeliveryMedium] representation of `this`.
  DeliveryMedium get asDeliveryMedium => switch (this) {
        DeliveryMediumType.sms => DeliveryMedium.sms,
        DeliveryMediumType.email => DeliveryMedium.email,
        _ => DeliveryMedium.unknown,
      };
}

/// Bridging helpers for [AuthUserAttribute].
extension AuthUserAttributeBridge on AuthUserAttribute {
  /// This attribute as an [AttributeType].
  AttributeType get asAttributeType => AttributeType(
        name: userAttributeKey.key,
        value: value,
      );
}

/// Bridging helpers for [AttributeType].
extension AttributeTypeBridge on AttributeType {
  /// This attribute as an [AuthUserAttribute].
  AuthUserAttribute get asAuthUserAttribute {
    final key = CognitoUserAttributeKey.parse(name);
    return AuthUserAttribute(
      userAttributeKey: key,
      value: value ?? '',
    );
  }
}

/// Bridging helpers for [AuthenticationFlowType].
extension AuthenticationFlowTypeBridge on AuthenticationFlowType {
  /// The Cognito SDK value of `this`.
  AuthFlowType get sdkValue => switch (this) {
        AuthenticationFlowType.userSrpAuth => AuthFlowType.userSrpAuth,
        AuthenticationFlowType.customAuthWithSrp ||
        AuthenticationFlowType.customAuthWithoutSrp =>
          AuthFlowType.customAuth,
        AuthenticationFlowType.userPasswordAuth =>
          AuthFlowType.userPasswordAuth,
      };
}

/// {@template amplify_auth_cognito_dart.sdk.wrapped_cognito_identity_provider_client}
/// A wrapped [CognitoIdentityClient] which handles translation of exceptions
/// to Amplify types.
/// {@endtemplate}
class WrappedCognitoIdentityClient implements CognitoIdentityClient {
  /// {@macro amplify_auth_cognito_dart.sdk.wrapped_cognito_identity_provider_client}
  WrappedCognitoIdentityClient({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required DependencyManager dependencyManager,
  })  : _base = CognitoIdentityClient(
          region: region,
          credentialsProvider: credentialsProvider,
          requestInterceptors: const [
            WithHeader(AWSHeaders.cacheControl, 'no-store'),
          ],
        ),
        _dependencyManager = dependencyManager;

  final CognitoIdentityClient _base;
  final DependencyManager _dependencyManager;

  @override
  SmithyOperation<GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    GetCredentialsForIdentityInput input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.getCredentialsForIdentity(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<GetIdResponse> getId(
    GetIdInput input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.getId(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }
}

/// {@template amplify_auth_cognito_dart.sdk.wrapped_cognito_identity_provider_client}
/// A wrapped [CognitoIdentityProviderClient] which handles translation of
/// exceptions to Amplify types.
/// {@endtemplate}
class WrappedCognitoIdentityProviderClient
    implements CognitoIdentityProviderClient {
  /// {@macro amplify_auth_cognito_dart.sdk.wrapped_cognito_identity_provider_client}
  WrappedCognitoIdentityProviderClient({
    required String region,
    String? endpoint,
    required AWSCredentialsProvider credentialsProvider,
    required DependencyManager dependencyManager,
  })  : _base = CognitoIdentityProviderClient(
          region: region,
          credentialsProvider: credentialsProvider,
          baseUri: endpoint == null
              ? null
              : (endpoint.startsWith('http')
                  ? Uri.parse(endpoint)
                  : Uri.parse('https://$endpoint')),
          requestInterceptors: const [
            WithHeader(AWSHeaders.cacheControl, 'no-store'),
          ],
        ),
        _dependencyManager = dependencyManager;

  final DependencyManager _dependencyManager;
  final CognitoIdentityProviderClient _base;

  @override
  SmithyOperation<AssociateSoftwareTokenResponse> associateSoftwareToken(
    AssociateSoftwareTokenRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.associateSoftwareToken(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ChangePasswordResponse> changePassword(
    ChangePasswordRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.changePassword(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ConfirmDeviceResponse> confirmDevice(
    ConfirmDeviceRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.confirmDevice(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ConfirmForgotPasswordResponse> confirmForgotPassword(
    ConfirmForgotPasswordRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.confirmForgotPassword(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ConfirmSignUpResponse> confirmSignUp(
    ConfirmSignUpRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.confirmSignUp(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<void> deleteUser(
    DeleteUserRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.deleteUser(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) async {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<void> forgetDevice(
    ForgetDeviceRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.forgetDevice(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) async {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ForgotPasswordResponse> forgotPassword(
    ForgotPasswordRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.forgotPassword(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<GetDeviceResponse> getDevice(
    GetDeviceRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.getDevice(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<GetUserResponse> getUser(
    GetUserRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.getUser(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<GetUserAttributeVerificationCodeResponse>
      getUserAttributeVerificationCode(
    GetUserAttributeVerificationCodeRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.getUserAttributeVerificationCode(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<GlobalSignOutResponse> globalSignOut(
    GlobalSignOutRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.globalSignOut(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<InitiateAuthResponse> initiateAuth(
    InitiateAuthRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.initiateAuth(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ListDevicesResponse> listDevices(
    ListDevicesRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.listDevices(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<ResendConfirmationCodeResponse> resendConfirmationCode(
    ResendConfirmationCodeRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.resendConfirmationCode(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<RespondToAuthChallengeResponse> respondToAuthChallenge(
    RespondToAuthChallengeRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.respondToAuthChallenge(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<RevokeTokenResponse> revokeToken(
    RevokeTokenRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.revokeToken(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<SignUpResponse> signUp(
    SignUpRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.signUp(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<UpdateDeviceStatusResponse> updateDeviceStatus(
    UpdateDeviceStatusRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.updateDeviceStatus(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<UpdateUserAttributesResponse> updateUserAttributes(
    UpdateUserAttributesRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.updateUserAttributes(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<VerifySoftwareTokenResponse> verifySoftwareToken(
    VerifySoftwareTokenRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.verifySoftwareToken(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<VerifyUserAttributeResponse> verifyUserAttribute(
    VerifyUserAttributeRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.verifyUserAttribute(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }

  @override
  SmithyOperation<SetUserMfaPreferenceResponse> setUserMfaPreference(
    SetUserMfaPreferenceRequest input, {
    AWSHttpClient? client,
    AWSCredentialsProvider? credentialsProvider,
  }) {
    final operation = _base.setUserMfaPreference(
      input,
      client: client ?? _dependencyManager.getOrCreate<AmplifyHttpClient>(),
      credentialsProvider: credentialsProvider,
    );
    return SmithyOperation(
      operation.operation.then(
        (res) => res,
        onError: (e, st) {
          Error.throwWithStackTrace(transformSdkException(e), st);
        },
      ),
      operationName: operation.runtimeTypeName,
      requestProgress: operation.requestProgress,
      responseProgress: operation.responseProgress,
    );
  }
}

/// Get/set helpers for MFA settings.
extension MfaSettings on CognitoIdentityProviderClient {
  Future<UserMfaPreference> _getRawUserSettings({
    required String accessToken,
  }) async {
    final user = await getUser(
      GetUserRequest(accessToken: accessToken),
    ).result;
    final enabled = <MfaType>{
      ...?user.userMfaSettingList?.map((setting) => setting.mfaType),
    };
    return UserMfaPreference(
      enabled: enabled,
      preferred: user.preferredMfaSetting?.mfaType,
    );
  }

  /// Returns the current MFA settings of the user.
  Future<UserMfaPreference> getMfaSettings({
    required String accessToken,
  }) async {
    final UserMfaPreference(:enabled, :preferred) = await _getRawUserSettings(
      accessToken: accessToken,
    );
    return UserMfaPreference(
      enabled: enabled,
      // The user preference or the only option.
      //
      // When only one MFA type is enabled, it is logically the preferred option
      // since we take the preferred option to be the one which will be automatically
      // selected on login.
      preferred: preferred ?? enabled.singleOrNull,
    );
  }

  /// Sets the MFA settings for the user.
  Future<void> setMfaSettings({
    required String accessToken,
    MfaPreference? sms,
    MfaPreference? totp,
    MfaPreference? email,
  }) async {
    final UserMfaPreference(
      enabled: currentEnabled,
      preferred: currentPreference,
    ) = await _getRawUserSettings(accessToken: accessToken);

    var preferred =
        _getNewPreferredMethod(sms: sms, totp: totp, email: email) ??
            currentPreference;

    if (_isCurrentPreferenceDisabled(
      currentPreference,
      sms: sms,
      totp: totp,
      email: email,
    )) {
      preferred = null;
    }

    final smsMfaSettings = SmsMfaSettingsType(
      enabled: _isMfaEnabled(MfaType.sms, sms, currentEnabled),
      preferredMfa: preferred == MfaType.sms,
    );

    final softwareTokenSettings = SoftwareTokenMfaSettingsType(
      enabled: _isMfaEnabled(MfaType.totp, totp, currentEnabled),
      preferredMfa: preferred == MfaType.totp,
    );

    final emailMfaSettings = EmailMfaSettingsType(
      enabled: _isMfaEnabled(MfaType.email, email, currentEnabled),
      preferredMfa: preferred == MfaType.email,
    );

    await setUserMfaPreference(
      SetUserMfaPreferenceRequest(
        accessToken: accessToken,
        smsMfaSettings: smsMfaSettings,
        softwareTokenMfaSettings: softwareTokenSettings,
        emailMfaSettings: emailMfaSettings,
      ),
    ).result;
  }

  /// Making sure a maximum of one MFA method is set to preferred.
  MfaType? _getNewPreferredMethod({
    MfaPreference? sms,
    MfaPreference? totp,
    MfaPreference? email,
  }) {
    final preferredMethods = [
      if (sms == MfaPreference.preferred) MfaType.sms,
      if (totp == MfaPreference.preferred) MfaType.totp,
      if (email == MfaPreference.preferred) MfaType.email,
    ];

    if (preferredMethods.length > 1) {
      throw const InvalidParameterException(
        'Cannot assign multiple MFA methods as preferred',
      );
    }

    return preferredMethods.isNotEmpty ? preferredMethods.first : null;
  }

  /// Checks if the current preferred MFA method is being disabled or set to not preferred.
  bool _isCurrentPreferenceDisabled(
    MfaType? currentPreference, {
    MfaPreference? sms,
    MfaPreference? totp,
    MfaPreference? email,
  }) {
    switch (currentPreference) {
      case MfaType.sms:
        return sms == MfaPreference.disabled ||
            sms == MfaPreference.notPreferred;
      case MfaType.totp:
        return totp == MfaPreference.disabled ||
            totp == MfaPreference.notPreferred;
      case MfaType.email:
        return email == MfaPreference.disabled ||
            email == MfaPreference.notPreferred;
      default:
        return false;
    }
  }

  /// Determines if an MFA type should be enabled based on preferences and current settings.
  bool _isMfaEnabled(
    MfaType mfaType,
    MfaPreference? preference,
    Set<MfaType> currentEnabled,
  ) {
    if (preference == MfaPreference.disabled) return false;
    if (preference != null) return true;
    return currentEnabled.contains(mfaType);
  }
}

extension on String {
  /// The [MfaType] representing `this`.
  MfaType get mfaType => switch (this) {
        'SOFTWARE_TOKEN_MFA' => MfaType.totp,
        'SMS_MFA' => MfaType.sms,
        'EMAIL_OTP' => MfaType.email,
        final invalidType => throw StateError('Invalid MFA type: $invalidType'),
      };
}
