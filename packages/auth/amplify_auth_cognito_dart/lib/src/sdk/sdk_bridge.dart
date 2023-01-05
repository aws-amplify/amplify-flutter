// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Bridging extensions between Cognito SDK and Amplify Flutter types.
@internal
library amplify_auth_cognito.sdk.sdk_bridge;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:amplify_core/amplify_core.dart'
    show AuthenticationFlowType, DependencyManager;
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// Bridging helpers for [ChallengeNameType].
extension ChallengeNameTypeBridge on ChallengeNameType {
  /// The sign in step corresponding to this challenge.
  AuthSignInStep get signInStep {
    switch (this) {
      case ChallengeNameType.customChallenge:
        return AuthSignInStep.confirmSignInWithCustomChallenge;
      case ChallengeNameType.newPasswordRequired:
        return AuthSignInStep.confirmSignInWithNewPassword;
      case ChallengeNameType.smsMfa:
        return AuthSignInStep.confirmSignInWithSmsMfaCode;
      case ChallengeNameType.adminNoSrpAuth:
      case ChallengeNameType.selectMfaType:
      case ChallengeNameType.passwordVerifier:
      case ChallengeNameType.devicePasswordVerifier:
      case ChallengeNameType.deviceSrpAuth:
      case ChallengeNameType.mfaSetup:
      case ChallengeNameType.softwareTokenMfa:
        break;
    }
    throw InvalidStateException('Unrecognized challenge type: $this');
  }
}

/// Bridging helpers for [CodeDeliveryDetailsType].
extension CodeDeliveryDetailsBridge on CodeDeliveryDetailsType {
  /// The [AuthCodeDeliveryDetails] representation of `this`.
  AuthCodeDeliveryDetails get asAuthCodeDeliveryDetails {
    return AuthCodeDeliveryDetails(
      destination: destination,
      deliveryMedium:
          deliveryMedium?.asDeliveryMedium ?? DeliveryMedium.unknown,
      attributeKey: attributeName,
    );
  }
}

/// Bridging helpers for [DeliveryMediumType].
extension DeliveryMediumTypeBridge on DeliveryMediumType {
  /// The [DeliveryMedium] representation of `this`.
  DeliveryMedium get asDeliveryMedium {
    switch (this) {
      case DeliveryMediumType.sms:
        return DeliveryMedium.sms;
      case DeliveryMediumType.email:
        return DeliveryMedium.email;
    }
    throw StateError('Unknown delivery medium: $this');
  }
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
  AuthUserAttribute<CognitoUserAttributeKey> get asAuthUserAttribute {
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
  AuthFlowType get sdkValue {
    switch (this) {
      case AuthenticationFlowType.userSrpAuth:
        return AuthFlowType.userSrpAuth;
      // ignore: deprecated_member_use
      case AuthenticationFlowType.customAuth:
      case AuthenticationFlowType.customAuthWithSrp:
      case AuthenticationFlowType.customAuthWithoutSrp:
        return AuthFlowType.customAuth;
      case AuthenticationFlowType.userPasswordAuth:
        return AuthFlowType.userPasswordAuth;
    }
  }
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
  }) : _base = CognitoIdentityClient(
          region: region,
          credentialsProvider: credentialsProvider,
          client: dependencyManager.getOrCreate(),
          requestInterceptors: const [
            WithHeader(AWSHeaders.cacheControl, 'no-store'),
          ],
        );

  final CognitoIdentityClient _base;

  @override
  SmithyOperation<GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    GetCredentialsForIdentityInput input, {
    AWSHttpClient? client,
  }) {
    final operation = _base.getCredentialsForIdentity(
      input,
      client: client,
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
  }) {
    final operation = _base.getId(
      input,
      client: client,
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
  }) : _base = CognitoIdentityProviderClient(
          region: region,
          credentialsProvider: credentialsProvider,
          client: dependencyManager.getOrCreate(),
          baseUri: endpoint == null
              ? null
              : (endpoint.startsWith('http')
                  ? Uri.parse(endpoint)
                  : Uri.parse('https://$endpoint')),
          requestInterceptors: const [
            WithHeader(AWSHeaders.cacheControl, 'no-store'),
          ],
        );

  final CognitoIdentityProviderClient _base;

  @override
  SmithyOperation<AssociateSoftwareTokenResponse> associateSoftwareToken(
    AssociateSoftwareTokenRequest input, {
    AWSHttpClient? client,
  }) {
    final operation = _base.associateSoftwareToken(
      input,
      client: client,
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
  }) {
    final operation = _base.changePassword(
      input,
      client: client,
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
  }) {
    final operation = _base.confirmDevice(
      input,
      client: client,
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
  }) {
    final operation = _base.confirmForgotPassword(
      input,
      client: client,
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
  }) {
    final operation = _base.confirmSignUp(
      input,
      client: client,
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
  }) {
    final operation = _base.deleteUser(
      input,
      client: client,
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
  }) {
    final operation = _base.forgetDevice(
      input,
      client: client,
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
  }) {
    final operation = _base.forgotPassword(
      input,
      client: client,
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
  }) {
    final operation = _base.getDevice(
      input,
      client: client,
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
  }) {
    final operation = _base.getUser(
      input,
      client: client,
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
  }) {
    final operation = _base.getUserAttributeVerificationCode(
      input,
      client: client,
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
  }) {
    final operation = _base.globalSignOut(
      input,
      client: client,
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
  }) {
    final operation = _base.initiateAuth(
      input,
      client: client,
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
  }) {
    final operation = _base.listDevices(
      input,
      client: client,
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
  }) {
    final operation = _base.resendConfirmationCode(
      input,
      client: client,
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
  }) {
    final operation = _base.respondToAuthChallenge(
      input,
      client: client,
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
  }) {
    final operation = _base.revokeToken(
      input,
      client: client,
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
  }) {
    final operation = _base.signUp(
      input,
      client: client,
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
  }) {
    final operation = _base.updateDeviceStatus(
      input,
      client: client,
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
  }) {
    final operation = _base.updateUserAttributes(
      input,
      client: client,
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
  }) {
    final operation = _base.verifySoftwareToken(
      input,
      client: client,
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
  }) {
    final operation = _base.verifyUserAttribute(
      input,
      client: client,
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
