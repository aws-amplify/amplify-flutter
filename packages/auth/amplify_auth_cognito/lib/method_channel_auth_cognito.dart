/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'dart:convert';
import 'dart:io' show Platform;

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'amplify_auth_cognito.dart';
import 'amplify_auth_error_handling.dart';

const MethodChannel _channel =
    MethodChannel('com.amazonaws.amplify/auth_cognito');

/// An implementation of [AmplifyAuthCognito] that uses method channels.
class AmplifyAuthCognitoMethodChannel extends AmplifyAuthCognito {
  // Throws if the user attempts to update a user attribute key which is not a
  // Cognito attribute or which is set to read-only.
  void _checkUserAttributeKey(UserAttributeKey? userAttributeKey) {
    if (userAttributeKey is! CognitoUserAttributeKey ||
        userAttributeKey.readOnly) {
      throw InvalidParameterException(
        'Invalid Cognito attribute key: "$userAttributeKey". '
        'Values must be one of the standard CognitoUserAttributeKey values '
        'or a custom attribute created with CognitoUserAttributeKey.custom.',
      );
    }
  }

  @override
  Future<void> addPlugin() async {
    try {
      return await _channel.invokeMethod('addPlugin');
    } on PlatformException catch (e) {
      if (e.code == "AmplifyAlreadyConfiguredException") {
        throw AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion);
      } else {
        throw AmplifyException.fromMap(Map<String, String>.from(e.details));
      }
    }
  }

  @override
  Future<SignUpResult> signUp({required SignUpRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'signUp',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSignUpResponse(data, "signUp");
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<SignUpResult> confirmSignUp(
      {required ConfirmSignUpRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'confirmSignUp',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSignUpResponse(data, "confirmSignUp");
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(
      {required ResendSignUpCodeRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'resendSignUpCode',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatResendSignUpResponse(data, "resendSignUpCode");
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<SignInResult> signIn({required SignInRequest request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'signIn',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSignInResponse(data, "signIn");
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<SignInResult> confirmSignIn({ConfirmSignInRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'confirmSignIn',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSignInResponse(data, "confirmSignIn");
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'signOut',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : {},
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSignOutResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<UpdatePasswordResult> updatePassword(
      {UpdatePasswordRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'updatePassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatPasswordResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<ResetPasswordResult> resetPassword(
      {ResetPasswordRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'resetPassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatResetPasswordResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<UpdatePasswordResult> confirmResetPassword(
      {ConfirmResetPasswordRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'confirmResetPassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatPasswordResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<AuthSession> fetchAuthSession({AuthSessionRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'fetchAuthSession',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : {},
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSessionResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<AuthUser> getCurrentUser({AuthUserRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'getCurrentUser',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : {},
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatAuthUserResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes(
      {FetchUserAttributesRequest? request}) async {
    try {
      final List<Map<dynamic, dynamic>>? data =
          (await (_channel.invokeListMethod(
        'fetchUserAttributes',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : {},
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return formatFetchAttributesResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<SignInResult> signInWithWebUI(
      {SignInWithWebUIRequest? request}) async {
    try {
      final Map<String, dynamic>? data =
          (await (_channel.invokeMapMethod<String, dynamic>(
        'signInWithWebUI',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      )));
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatSignInResponse(data, "signIn");
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute({
    UpdateUserAttributeRequest? request,
  }) async {
    var userAttributeKey = request?.attribute.userAttributeKey;
    _checkUserAttributeKey(userAttributeKey);
    try {
      final Map<String, dynamic>? data =
          await _channel.invokeMapMethod<String, dynamic>(
        'updateUserAttribute',
        <String, dynamic>{
          'data': request?.serializeAsMap(),
        },
      );
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatUpdateUserAttributeResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>> updateUserAttributes(
      {required UpdateUserAttributesRequest request}) async {
    for (var attribute in request.attributes) {
      _checkUserAttributeKey(attribute.userAttributeKey);
    }
    try {
      final Map<String, dynamic>? data =
          await _channel.invokeMapMethod<String, dynamic>(
        'updateUserAttributes',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      if (data == null) {
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      }
      return _formatUpdateUserAttributesResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute(
      {ConfirmUserAttributeRequest? request}) async {
    var userAttributeKey = request?.userAttributeKey;
    _checkUserAttributeKey(userAttributeKey);
    try {
      await _channel.invokeMapMethod<String, dynamic>(
        'confirmUserAttribute',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      return _formatConfirmUserAttributeResponse();
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    ResendUserAttributeConfirmationCodeRequest? request,
  }) async {
    var userAttributeKey = request?.userAttributeKey;
    _checkUserAttributeKey(userAttributeKey);
    try {
      final Map<String, dynamic>? data =
          await _channel.invokeMapMethod<String, dynamic>(
        'resendUserAttributeConfirmationCode',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      if (data == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return _formatResendUserAttributeConfirmationCodeResponse(data);
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }

  SignUpResult _formatSignUpResponse(Map<String, dynamic> res, method) {
    var codeDeliveryDetails = res["nextStep"]["codeDeliveryDetails"];
    var additionalInfo = res["nextStep"]["additionalInfo"] ?? null;

    return CognitoSignUpResult(
      isSignUpComplete: res["isSignUpComplete"],
      nextStep: AuthNextSignUpStep(
        signUpStep: res["nextStep"]["signUpStep"],
        codeDeliveryDetails: codeDeliveryDetails != null
            ? AuthCodeDeliveryDetails(
                attributeName: codeDeliveryDetails["attributeName"],
                deliveryMedium: codeDeliveryDetails["deliveryMedium"],
                destination: codeDeliveryDetails["destination"])
            : null,
        additionalInfo: res["nextStep"]["additionalInfo"] is String
            ? jsonDecode(res["nextStep"]["additionalInfo"])
            : additionalInfo,
      ),
    );
  }

  ResendSignUpCodeResult _formatResendSignUpResponse(
      Map<String, dynamic> res, method) {
    return CognitoResendSignUpCodeResult(AuthCodeDeliveryDetails(
        attributeName: res["codeDeliveryDetails"]["attributeName"] ?? null,
        deliveryMedium: res["codeDeliveryDetails"]["deliveryMedium"],
        destination: res["codeDeliveryDetails"]["destination"]));
  }

  SignInResult _formatSignInResponse(Map<String, dynamic> res, String method) {
    var codeDeliveryDetails = res["nextStep"]["codeDeliveryDetails"];
    var additionalInfo = res["nextStep"]["additionalInfo"] ?? null;
    return CognitoSignInResult(
      isSignedIn: res["isSignedIn"],
      nextStep: AuthNextSignInStep(
        signInStep: res["nextStep"]["signInStep"],
        codeDeliveryDetails: codeDeliveryDetails != null
            ? AuthCodeDeliveryDetails(
                attributeName: codeDeliveryDetails["attributeName"],
                deliveryMedium: codeDeliveryDetails["deliveryMedium"],
                destination: codeDeliveryDetails["destination"])
            : null,
        additionalInfo: res["nextStep"]["additionalInfo"] is String
            ? jsonDecode(res["nextStep"]["additionalInfo"])
            : additionalInfo,
      ),
    );
  }

  UpdatePasswordResult _formatPasswordResponse(Map<String, dynamic> res) {
    return UpdatePasswordResult();
  }

  SignOutResult _formatSignOutResponse(Map<String, dynamic> signOutResponse) {
    return SignOutResult();
  }

  AuthUser _formatAuthUserResponse(Map<String, dynamic> authUserResponse) {
    return AuthUser(
        userId: authUserResponse["userId"],
        username: authUserResponse["username"]);
  }

  List<AuthUserAttribute> formatFetchAttributesResponse(
      List<Map<dynamic, dynamic>> attributeResponse) {
    List<AuthUserAttribute> attributes = [];
    attributeResponse.forEach((element) {
      attributes.add(AuthUserAttribute(
        userAttributeKey: CognitoUserAttributeKey.parse(element["key"]),
        value: element["value"],
      ));
    });
    return attributes;
  }

  ResetPasswordResult _formatResetPasswordResponse(Map<String, dynamic> res) {
    var codeDeliveryDetails = res["nextStep"]["codeDeliveryDetails"];
    var additionalInfo = res["nextStep"]["additionalInfo"] ?? null;

    return CognitoResetPasswordResult(
      isPasswordReset: res["isPasswordReset"],
      nextStep: ResetPasswordStep(
        updateStep: res["nextStep"]["resetPasswordStep"],
        codeDeliveryDetails: codeDeliveryDetails != null
            ? AuthCodeDeliveryDetails(
                attributeName: codeDeliveryDetails["attributeName"] ?? null,
                deliveryMedium: codeDeliveryDetails["deliveryMedium"] ?? null,
                destination: codeDeliveryDetails["destination"])
            : null,
        additionalInfo: res["nextStep"]["additionalInfo"] is String
            ? jsonDecode(res["nextStep"]["additionalInfo"])
            : additionalInfo,
      ),
    );
  }

  AuthSession _formatSessionResponse(Map<String, dynamic> res) {
    return CognitoAuthSession.init(sessionValues: res);
  }

  UpdateUserAttributeResult _formatUpdateUserAttributeResponse(
      Map<String, dynamic> res) {
    var codeDeliveryDetails = res["nextStep"]["codeDeliveryDetails"];
    var additionalInfo = res["nextStep"]["additionalInfo"] ?? {};

    return UpdateUserAttributeResult(
      isUpdated: res["isUpdated"],
      nextStep: AuthNextUpdateAttributeStep(
        updateAttributeStep: res["nextStep"]["updateAttributeStep"],
        codeDeliveryDetails: codeDeliveryDetails != null
            ? AuthCodeDeliveryDetails(
                attributeName: codeDeliveryDetails["attributeName"] ?? null,
                deliveryMedium: codeDeliveryDetails["deliveryMedium"] ?? null,
                destination: codeDeliveryDetails["destination"])
            : null,
        additionalInfo: res["nextStep"]["additionalInfo"] is String
            ? jsonDecode(res["nextStep"]["additionalInfo"])
            : additionalInfo,
      ),
    );
  }

  Map<UserAttributeKey, UpdateUserAttributeResult>
      _formatUpdateUserAttributesResponse(Map<String, dynamic> res) {
    return res.map((key, value) => MapEntry(CognitoUserAttributeKey.parse(key),
        _formatUpdateUserAttributeResponse(Map<String, dynamic>.from(value))));
  }

  ConfirmUserAttributeResult _formatConfirmUserAttributeResponse() {
    return ConfirmUserAttributeResult();
  }

  ResendUserAttributeConfirmationCodeResult
      _formatResendUserAttributeConfirmationCodeResponse(
          Map<String, dynamic> res) {
    return ResendUserAttributeConfirmationCodeResult(
        codeDeliveryDetails: res["codeDeliveryDetails"]);
  }

  @override
  Future<void> rememberDevice() async {
    try {
      await _channel.invokeMethod<void>('rememberDevice');
    } on PlatformException catch (e) {
      throw transformDeviceException(e);
    }
  }

  @override
  Future<void> forgetDevice([AuthDevice? device]) async {
    try {
      await _channel.invokeMethod<void>('forgetDevice', device?.toJson());
    } on PlatformException catch (e) {
      throw transformDeviceException(e);
    }
  }

  @override
  Future<List<CognitoDevice>> fetchDevices() async {
    try {
      final devicesJson = await _channel.invokeListMethod<Map>('fetchDevices');
      return devicesJson?.map((e) => CognitoDevice.fromJson(e)).toList() ?? [];
    } on PlatformException catch (e) {
      throw transformDeviceException(e);
    }
  }

  @override
  Future<void> deleteUser() async {
    try {
      await _channel.invokeMethod('deleteUser');
    } on PlatformException catch (e) {
      throw castAndReturnPlatformException(e);
    }
  }
}
