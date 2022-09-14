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

/// Bridging extensions between Cognito SDK and Amplify Flutter types.
@internal
library amplify_auth_cognito.sdk.sdk_bridge;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide ConfirmSignUpRequest, SignUpRequest, UpdateUserAttributesRequest;
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_exception.dart';
import 'package:amplify_core/amplify_core.dart'
    show AWSHttpClient, AuthenticationFlowType, DependencyManager, Token;
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// Dependency token for Smithy HTTP clients.
const zSmithyHttpClientToken = Token<HttpClient>([
  Token<AWSHttpClient>(),
]);

/// Bridging helpers for [ChallengeNameType].
extension ChallengeNameTypeBridge on ChallengeNameType {
  /// The sign in step corresponding to this challenge.
  CognitoSignInStep get signInStep {
    switch (this) {
      case ChallengeNameType.customChallenge:
        return CognitoSignInStep.confirmSignInWithCustomChallenge;
      case ChallengeNameType.newPasswordRequired:
        return CognitoSignInStep.confirmSignInWithNewPassword;
      case ChallengeNameType.smsMfa:
        return CognitoSignInStep.confirmSignInWithSmsMfaCode;
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
      deliveryMedium: deliveryMedium?.value,
      attributeName: attributeName,
    );
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
      case AuthenticationFlowType.customAuth:
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
  })  : _base = CognitoIdentityClient(
          region: region,
          credentialsProvider: credentialsProvider,
        ),
        _dependencyManager = dependencyManager;

  final DependencyManager _dependencyManager;
  final CognitoIdentityClient _base;

  @override
  Future<GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    GetCredentialsForIdentityInput input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.getCredentialsForIdentity(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<GetIdResponse> getId(
    GetIdInput input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.getId(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
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
    required AWSCredentialsProvider credentialsProvider,
    required DependencyManager dependencyManager,
  })  : _base = CognitoIdentityProviderClient(
          region: region,
          credentialsProvider: credentialsProvider,
        ),
        _dependencyManager = dependencyManager;

  final DependencyManager _dependencyManager;
  final CognitoIdentityProviderClient _base;

  @override
  Future<AssociateSoftwareTokenResponse> associateSoftwareToken(
    AssociateSoftwareTokenRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.associateSoftwareToken(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ChangePasswordResponse> changePassword(
    ChangePasswordRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.changePassword(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ConfirmDeviceResponse> confirmDevice(
    ConfirmDeviceRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.confirmDevice(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ConfirmForgotPasswordResponse> confirmForgotPassword(
    ConfirmForgotPasswordRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.confirmForgotPassword(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ConfirmSignUpResponse> confirmSignUp(
    ConfirmSignUpRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.confirmSignUp(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<void> deleteUser(
    DeleteUserRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.deleteUser(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<void> forgetDevice(
    ForgetDeviceRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.forgetDevice(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ForgotPasswordResponse> forgotPassword(
    ForgotPasswordRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.forgotPassword(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<GetDeviceResponse> getDevice(
    GetDeviceRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.getDevice(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<GetUserResponse> getUser(
    GetUserRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.getUser(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<GetUserAttributeVerificationCodeResponse>
      getUserAttributeVerificationCode(
    GetUserAttributeVerificationCodeRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.getUserAttributeVerificationCode(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<GlobalSignOutResponse> globalSignOut(
    GlobalSignOutRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.globalSignOut(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<InitiateAuthResponse> initiateAuth(
    InitiateAuthRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.initiateAuth(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ListDevicesResponse> listDevices(
    ListDevicesRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.listDevices(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<ResendConfirmationCodeResponse> resendConfirmationCode(
    ResendConfirmationCodeRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.resendConfirmationCode(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<RespondToAuthChallengeResponse> respondToAuthChallenge(
    RespondToAuthChallengeRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.respondToAuthChallenge(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<RevokeTokenResponse> revokeToken(
    RevokeTokenRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.revokeToken(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<SignUpResponse> signUp(
    SignUpRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.signUp(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<UpdateDeviceStatusResponse> updateDeviceStatus(
    UpdateDeviceStatusRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.updateDeviceStatus(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<UpdateUserAttributesResponse> updateUserAttributes(
    UpdateUserAttributesRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.updateUserAttributes(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<VerifySoftwareTokenResponse> verifySoftwareToken(
    VerifySoftwareTokenRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.verifySoftwareToken(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }

  @override
  Future<VerifyUserAttributeResponse> verifyUserAttribute(
    VerifyUserAttributeRequest input, {
    HttpClient? client,
  }) async {
    try {
      return await _base.verifyUserAttribute(
        input,
        client:
            client ?? _dependencyManager.getOrCreate(zSmithyHttpClientToken),
      );
    } on Exception catch (e, st) {
      Error.throwWithStackTrace(
        transformSdkException(e),
        st,
      );
    }
  }
}
