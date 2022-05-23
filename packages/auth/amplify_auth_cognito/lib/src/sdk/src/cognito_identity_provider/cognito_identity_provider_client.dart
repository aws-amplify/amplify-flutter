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

library amplify_auth_cognito.cognito_identity_provider.cognito_identity_provider_client;

import 'dart:async' as _i2;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/associate_software_token_request.dart'
    as _i4;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/associate_software_token_response.dart'
    as _i3;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/change_password_request.dart'
    as _i8;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/change_password_response.dart'
    as _i7;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart'
    as _i11;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_device_response.dart'
    as _i10;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_request.dart'
    as _i14;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_forgot_password_response.dart'
    as _i13;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_request.dart'
    as _i17;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/confirm_sign_up_response.dart'
    as _i16;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/delete_user_request.dart'
    as _i19;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/forget_device_request.dart'
    as _i21;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/forgot_password_request.dart'
    as _i24;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/forgot_password_response.dart'
    as _i23;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_device_request.dart'
    as _i27;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_device_response.dart'
    as _i26;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_request.dart'
    as _i33;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_attribute_verification_code_response.dart'
    as _i32;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_request.dart'
    as _i30;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/get_user_response.dart'
    as _i29;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/global_sign_out_request.dart'
    as _i36;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/global_sign_out_response.dart'
    as _i35;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/initiate_auth_request.dart'
    as _i39;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/initiate_auth_response.dart'
    as _i38;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/list_devices_request.dart'
    as _i42;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/list_devices_response.dart'
    as _i41;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_request.dart'
    as _i45;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/resend_confirmation_code_response.dart'
    as _i44;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_request.dart'
    as _i48;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/respond_to_auth_challenge_response.dart'
    as _i47;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/revoke_token_request.dart'
    as _i51;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/revoke_token_response.dart'
    as _i50;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/sign_up_request.dart'
    as _i54;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/sign_up_response.dart'
    as _i53;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_device_status_request.dart'
    as _i57;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_device_status_response.dart'
    as _i56;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_user_attributes_request.dart'
    as _i60;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/update_user_attributes_response.dart'
    as _i59;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_software_token_request.dart'
    as _i63;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_software_token_response.dart'
    as _i62;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_request.dart'
    as _i66;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/verify_user_attribute_response.dart'
    as _i65;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/associate_software_token_operation.dart'
    as _i6;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/change_password_operation.dart'
    as _i9;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/confirm_device_operation.dart'
    as _i12;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/confirm_forgot_password_operation.dart'
    as _i15;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/confirm_sign_up_operation.dart'
    as _i18;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/delete_user_operation.dart'
    as _i20;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/forget_device_operation.dart'
    as _i22;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/forgot_password_operation.dart'
    as _i25;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/get_device_operation.dart'
    as _i28;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/get_user_attribute_verification_code_operation.dart'
    as _i34;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/get_user_operation.dart'
    as _i31;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/global_sign_out_operation.dart'
    as _i37;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/initiate_auth_operation.dart'
    as _i40;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/list_devices_operation.dart'
    as _i43;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/resend_confirmation_code_operation.dart'
    as _i46;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/respond_to_auth_challenge_operation.dart'
    as _i49;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/revoke_token_operation.dart'
    as _i52;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/sign_up_operation.dart'
    as _i55;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/update_device_status_operation.dart'
    as _i58;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/update_user_attributes_operation.dart'
    as _i61;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/verify_software_token_operation.dart'
    as _i64;
import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/operation/verify_user_attribute_operation.dart'
    as _i67;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i1;
import 'package:smithy/smithy.dart' as _i5;

/// Using the Amazon Cognito User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.
///
/// This API reference provides information about user pools in Amazon Cognito User Pools.
///
/// For more information, see the [Amazon Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
class CognitoIdentityProviderClient {
  /// Using the Amazon Cognito User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.
  ///
  /// This API reference provides information about user pools in Amazon Cognito User Pools.
  ///
  /// For more information, see the [Amazon Cognito Documentation](https://docs.aws.amazon.com/cognito/latest/developerguide/what-is-amazon-cognito.html).
  const CognitoIdentityProviderClient(
      {required String region,
      Uri? baseUri,
      required _i1.AWSCredentialsProvider credentialsProvider})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final String _region;

  final Uri? _baseUri;

  final _i1.AWSCredentialsProvider _credentialsProvider;

  /// Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.
  ///
  /// Calling AssociateSoftwareToken immediately disassociates the existing software token from the user account. If the user doesn't subsequently verify the software token, their account is essentially set up to authenticate without MFA. If MFA config is set to Optional at the user pool level, the user can then login without MFA. However, if MFA is set to Required for the user pool, the user will be asked to setup a new software token MFA during sign in.
  _i2.Future<_i3.AssociateSoftwareTokenResponse> associateSoftwareToken(
      _i4.AssociateSoftwareTokenRequest input,
      {_i5.HttpClient? client}) {
    return _i6.AssociateSoftwareTokenOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Changes the password for a specified user in a user pool.
  _i2.Future<_i7.ChangePasswordResponse> changePassword(
      _i8.ChangePasswordRequest input,
      {_i5.HttpClient? client}) {
    return _i9.ChangePasswordOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Confirms tracking of the device. This API call is the call that begins device tracking.
  _i2.Future<_i10.ConfirmDeviceResponse> confirmDevice(
      _i11.ConfirmDeviceRequest input,
      {_i5.HttpClient? client}) {
    return _i12.ConfirmDeviceOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Allows a user to enter a confirmation code to reset a forgotten password.
  _i2.Future<_i13.ConfirmForgotPasswordResponse> confirmForgotPassword(
      _i14.ConfirmForgotPasswordRequest input,
      {_i5.HttpClient? client}) {
    return _i15.ConfirmForgotPasswordOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Confirms registration of a user and handles the existing alias from a previous user.
  _i2.Future<_i16.ConfirmSignUpResponse> confirmSignUp(
      _i17.ConfirmSignUpRequest input,
      {_i5.HttpClient? client}) {
    return _i18.ConfirmSignUpOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Allows a user to delete himself or herself.
  _i2.Future<void> deleteUser(_i19.DeleteUserRequest input,
      {_i5.HttpClient? client}) {
    return _i20.DeleteUserOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Forgets the specified device.
  _i2.Future<void> forgetDevice(_i21.ForgetDeviceRequest input,
      {_i5.HttpClient? client}) {
    return _i22.ForgetDeviceOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the `Username` parameter, you can use the username or user alias. The method used to send the confirmation code is sent according to the specified AccountRecoverySetting. For more information, see [Recovering User Accounts](https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html) in the _Amazon Cognito Developer Guide_. If neither a verified phone number nor a verified email exists, an `InvalidParameterException` is thrown. To use the confirmation code for resetting the password, call [ConfirmForgotPassword](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html).
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i23.ForgotPasswordResponse> forgotPassword(
      _i24.ForgotPasswordRequest input,
      {_i5.HttpClient? client}) {
    return _i25.ForgotPasswordOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Gets the device.
  _i2.Future<_i26.GetDeviceResponse> getDevice(_i27.GetDeviceRequest input,
      {_i5.HttpClient? client}) {
    return _i28.GetDeviceOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Gets the user attributes and metadata for a user.
  _i2.Future<_i29.GetUserResponse> getUser(_i30.GetUserRequest input,
      {_i5.HttpClient? client}) {
    return _i31.GetUserOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Gets the user attribute verification code for the specified attribute name.
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i32.GetUserAttributeVerificationCodeResponse>
      getUserAttributeVerificationCode(
          _i33.GetUserAttributeVerificationCodeRequest input,
          {_i5.HttpClient? client}) {
    return _i34.GetUserAttributeVerificationCodeOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Signs out users from all devices. It also invalidates all refresh tokens issued to a user. The user's current access and Id tokens remain valid until their expiry. Access and Id tokens expire one hour after they are issued.
  _i2.Future<_i35.GlobalSignOutResponse> globalSignOut(
      _i36.GlobalSignOutRequest input,
      {_i5.HttpClient? client}) {
    return _i37.GlobalSignOutOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Initiates the authentication flow.
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i38.InitiateAuthResponse> initiateAuth(
      _i39.InitiateAuthRequest input,
      {_i5.HttpClient? client}) {
    return _i40.InitiateAuthOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Lists the devices.
  _i2.Future<_i41.ListDevicesResponse> listDevices(
      _i42.ListDevicesRequest input,
      {_i5.HttpClient? client}) {
    return _i43.ListDevicesOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Resends the confirmation (for confirmation of registration) to a specific user in the user pool.
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i44.ResendConfirmationCodeResponse> resendConfirmationCode(
      _i45.ResendConfirmationCodeRequest input,
      {_i5.HttpClient? client}) {
    return _i46.ResendConfirmationCodeOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Responds to the authentication challenge.
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i47.RespondToAuthChallengeResponse> respondToAuthChallenge(
      _i48.RespondToAuthChallengeRequest input,
      {_i5.HttpClient? client}) {
    return _i49.RespondToAuthChallengeOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Revokes all of the access tokens generated by the specified refresh token. After the token is revoked, you can not use the revoked token to access Cognito authenticated APIs.
  _i2.Future<_i50.RevokeTokenResponse> revokeToken(
      _i51.RevokeTokenRequest input,
      {_i5.HttpClient? client}) {
    return _i52.RevokeTokenOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Registers the user in the specified user pool and creates a user name, password, and user attributes.
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i53.SignUpResponse> signUp(_i54.SignUpRequest input,
      {_i5.HttpClient? client}) {
    return _i55.SignUpOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Updates the device status.
  _i2.Future<_i56.UpdateDeviceStatusResponse> updateDeviceStatus(
      _i57.UpdateDeviceStatusRequest input,
      {_i5.HttpClient? client}) {
    return _i58.UpdateDeviceStatusOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Allows a user to update a specific attribute (one at a time).
  ///
  /// This action might generate an SMS text message. Starting June 1, 2021, U.S. telecom carriers require that you register an origination phone number before you can send SMS messages to U.S. phone numbers. If you use SMS text messages in Amazon Cognito, you must register a phone number with [Amazon Pinpoint](https://console.aws.amazon.com/pinpoint/home/). Cognito will use the the registered number automatically. Otherwise, Cognito users that must receive SMS messages might be unable to sign up, activate their accounts, or sign in.
  ///
  /// If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Service, Amazon SNS might place your account in SMS sandbox. In _[sandbox mode](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)_ , you’ll have limitations, such as sending messages to only verified phone numbers. After testing in the sandbox environment, you can move out of the SMS sandbox and into production. For more information, see [SMS message settings for Cognito User Pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html) in the _Amazon Cognito Developer Guide_.
  _i2.Future<_i59.UpdateUserAttributesResponse> updateUserAttributes(
      _i60.UpdateUserAttributesRequest input,
      {_i5.HttpClient? client}) {
    return _i61.UpdateUserAttributesOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.
  _i2.Future<_i62.VerifySoftwareTokenResponse> verifySoftwareToken(
      _i63.VerifySoftwareTokenRequest input,
      {_i5.HttpClient? client}) {
    return _i64.VerifySoftwareTokenOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }

  /// Verifies the specified user attributes in the user pool.
  _i2.Future<_i65.VerifyUserAttributeResponse> verifyUserAttribute(
      _i66.VerifyUserAttributeRequest input,
      {_i5.HttpClient? client}) {
    return _i67.VerifyUserAttributeOperation(
            region: _region,
            baseUri: _baseUri,
            credentialsProvider: _credentialsProvider)
        .run(input, client: client);
  }
}
