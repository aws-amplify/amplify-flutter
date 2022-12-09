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

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:aws_common/aws_common.dart';
import 'package:smithy/src/operation.dart';

SmithyOperation<T> mockSmithyOperation<T>(FutureOr<T> Function() fn) =>
    SmithyOperation(
      CancelableOperation.fromFuture(
        Future.value(fn()),
      ),
      operationName: '',
      requestProgress: const Stream.empty(),
      responseProgress: const Stream.empty(),
    );

SmithyOperation<T> _mockIfProvided<T>(FutureOr<T> Function()? fn) {
  if (fn == null) {
    throw UnimplementedError();
  }
  return mockSmithyOperation(fn);
}

class MockCognitoIdentityProviderClient
    implements CognitoIdentityProviderClient {
  MockCognitoIdentityProviderClient({
    Future<AssociateSoftwareTokenResponse> Function()? associateSoftwareToken,
    Future<ChangePasswordResponse> Function()? changePassword,
    Future<ConfirmDeviceResponse> Function()? confirmDevice,
    Future<ConfirmForgotPasswordResponse> Function()? confirmForgotPassword,
    Future<ConfirmSignUpResponse> Function()? confirmSignUp,
    Future<void> Function()? deleteUser,
    Future<void> Function()? forgetDevice,
    Future<ForgotPasswordResponse> Function()? forgotPassword,
    Future<GetDeviceResponse> Function()? getDevice,
    Future<GetUserResponse> Function()? getUser,
    Future<GetUserAttributeVerificationCodeResponse> Function()?
        getUserAttributeVerificationCode,
    Future<GlobalSignOutResponse> Function()? globalSignOut,
    Future<InitiateAuthResponse> Function()? initiateAuth,
    Future<ListDevicesResponse> Function()? listDevices,
    Future<ResendConfirmationCodeResponse> Function()? resendConfirmationCode,
    Future<RespondToAuthChallengeResponse> Function()? respondToAuthChallenge,
    Future<RevokeTokenResponse> Function()? revokeToken,
    Future<SignUpResponse> Function()? signUp,
    Future<UpdateDeviceStatusResponse> Function()? updateDeviceStatus,
    Future<UpdateUserAttributesResponse> Function()? updateUserAttributes,
    Future<VerifySoftwareTokenResponse> Function()? verifySoftwareToken,
    Future<VerifyUserAttributeResponse> Function()? verifyUserAttribute,
  })  : _associateSoftwareToken = associateSoftwareToken,
        _changePassword = changePassword,
        _confirmDevice = confirmDevice,
        _confirmForgotPassword = confirmForgotPassword,
        _confirmSignUp = confirmSignUp,
        _deleteUser = deleteUser,
        _forgetDevice = forgetDevice,
        _forgotPassword = forgotPassword,
        _getDevice = getDevice,
        _getUser = getUser,
        _getUserAttributeVerificationCode = getUserAttributeVerificationCode,
        _globalSignOut = globalSignOut,
        _initiateAuth = initiateAuth,
        _listDevices = listDevices,
        _resendConfirmationCode = resendConfirmationCode,
        _respondToAuthChallenge = respondToAuthChallenge,
        _revokeToken = revokeToken,
        _signUp = signUp,
        _updateDeviceStatus = updateDeviceStatus,
        _updateUserAttributes = updateUserAttributes,
        _verifySoftwareToken = verifySoftwareToken,
        _verifyUserAttribute = verifyUserAttribute;

  final Future<AssociateSoftwareTokenResponse> Function()?
      _associateSoftwareToken;
  final Future<ChangePasswordResponse> Function()? _changePassword;
  final Future<ConfirmDeviceResponse> Function()? _confirmDevice;
  final Future<ConfirmForgotPasswordResponse> Function()?
      _confirmForgotPassword;
  final Future<ConfirmSignUpResponse> Function()? _confirmSignUp;
  final Future<void> Function()? _deleteUser;
  final Future<void> Function()? _forgetDevice;
  final Future<ForgotPasswordResponse> Function()? _forgotPassword;
  final Future<GetDeviceResponse> Function()? _getDevice;
  final Future<GetUserResponse> Function()? _getUser;
  final Future<GetUserAttributeVerificationCodeResponse> Function()?
      _getUserAttributeVerificationCode;
  final Future<GlobalSignOutResponse> Function()? _globalSignOut;
  final Future<InitiateAuthResponse> Function()? _initiateAuth;
  final Future<ListDevicesResponse> Function()? _listDevices;
  final Future<ResendConfirmationCodeResponse> Function()?
      _resendConfirmationCode;
  final Future<RespondToAuthChallengeResponse> Function()?
      _respondToAuthChallenge;
  final Future<RevokeTokenResponse> Function()? _revokeToken;
  final Future<SignUpResponse> Function()? _signUp;
  final Future<UpdateDeviceStatusResponse> Function()? _updateDeviceStatus;
  final Future<UpdateUserAttributesResponse> Function()? _updateUserAttributes;
  final Future<VerifySoftwareTokenResponse> Function()? _verifySoftwareToken;
  final Future<VerifyUserAttributeResponse> Function()? _verifyUserAttribute;

  @override
  SmithyOperation<AssociateSoftwareTokenResponse> associateSoftwareToken(
    AssociateSoftwareTokenRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_associateSoftwareToken);

  @override
  SmithyOperation<ChangePasswordResponse> changePassword(
    ChangePasswordRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_changePassword);

  @override
  SmithyOperation<ConfirmDeviceResponse> confirmDevice(
    ConfirmDeviceRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_confirmDevice);

  @override
  SmithyOperation<ConfirmForgotPasswordResponse> confirmForgotPassword(
    ConfirmForgotPasswordRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_confirmForgotPassword);

  @override
  SmithyOperation<ConfirmSignUpResponse> confirmSignUp(
    ConfirmSignUpRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_confirmSignUp);

  @override
  SmithyOperation<void> deleteUser(
    DeleteUserRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_deleteUser);

  @override
  SmithyOperation<void> forgetDevice(
    ForgetDeviceRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_forgetDevice);

  @override
  SmithyOperation<ForgotPasswordResponse> forgotPassword(
    ForgotPasswordRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_forgotPassword);

  @override
  SmithyOperation<GetDeviceResponse> getDevice(
    GetDeviceRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_getDevice);

  @override
  SmithyOperation<GetUserResponse> getUser(
    GetUserRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_getUser);

  @override
  SmithyOperation<GetUserAttributeVerificationCodeResponse>
      getUserAttributeVerificationCode(
    GetUserAttributeVerificationCodeRequest input, {
    AWSHttpClient? client,
  }) =>
          _mockIfProvided(_getUserAttributeVerificationCode);

  @override
  SmithyOperation<GlobalSignOutResponse> globalSignOut(
    GlobalSignOutRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_globalSignOut);

  @override
  SmithyOperation<InitiateAuthResponse> initiateAuth(
    InitiateAuthRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_initiateAuth);

  @override
  SmithyOperation<ListDevicesResponse> listDevices(
    ListDevicesRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_listDevices);

  @override
  SmithyOperation<ResendConfirmationCodeResponse> resendConfirmationCode(
    ResendConfirmationCodeRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_resendConfirmationCode);

  @override
  SmithyOperation<RespondToAuthChallengeResponse> respondToAuthChallenge(
    RespondToAuthChallengeRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_respondToAuthChallenge);

  @override
  SmithyOperation<RevokeTokenResponse> revokeToken(
    RevokeTokenRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_revokeToken);

  @override
  SmithyOperation<SignUpResponse> signUp(
    SignUpRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_signUp);

  @override
  SmithyOperation<UpdateDeviceStatusResponse> updateDeviceStatus(
    UpdateDeviceStatusRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_updateDeviceStatus);

  @override
  SmithyOperation<UpdateUserAttributesResponse> updateUserAttributes(
    UpdateUserAttributesRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_updateUserAttributes);

  @override
  SmithyOperation<VerifySoftwareTokenResponse> verifySoftwareToken(
    VerifySoftwareTokenRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_verifySoftwareToken);

  @override
  SmithyOperation<VerifyUserAttributeResponse> verifyUserAttribute(
    VerifyUserAttributeRequest input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_verifyUserAttribute);
}

class MockCognitoIdentityClient implements CognitoIdentityClient {
  MockCognitoIdentityClient({
    Future<GetCredentialsForIdentityResponse> Function()?
        getCredentialsForIdentity,
    Future<GetIdResponse> Function()? getId,
  })  : _getCredentialsForIdentity = getCredentialsForIdentity,
        _getId = getId;

  final Future<GetCredentialsForIdentityResponse> Function()?
      _getCredentialsForIdentity;
  final Future<GetIdResponse> Function()? _getId;

  @override
  SmithyOperation<GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    GetCredentialsForIdentityInput input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_getCredentialsForIdentity);

  @override
  SmithyOperation<GetIdResponse> getId(
    GetIdInput input, {
    AWSHttpClient? client,
  }) =>
      _mockIfProvided(_getId);
}
