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

import 'dart:collection';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'amplify_auth_cognito.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/auth_cognito');

/// An implementation of [AmplifyPlatform] that uses method channels.
class AmplifyAuthCognitoMethodChannel extends AmplifyAuthCognito {

  @override

  Future<SignUpResult> signUp({SignUpRequest request}) async {
    SignUpResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signUp',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatSignUpResponse(data);
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  @override
  Future<SignUpResult> confirmSignUp({ConfirmSignUpRequest request}) async {
    SignUpResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'confirmSignUp',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatSignUpResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }


  @override
  Future<SignInResult> signIn({SignInRequest request}) async {
    SignInResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signIn',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatSignInResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  @override
  Future<SignInResult> confirmSignIn({ConfirmSignInRequest request}) async {
    SignInResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'confirmSignIn',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatSignInResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest request}) async {
    SignOutResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signOut',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatSignOutResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  @override
  Future<ChangePasswordResult> changePassword({ChangePasswordRequest request}) async {
    ChangePasswordResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'changePassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatPasswordResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  @override
  Future<ResetPasswordResult> resetPassword({ResetPasswordRequest request}) async {
    ResetPasswordResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'resetPassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatResetPasswordResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  @override
  Future<ChangePasswordResult> confirmPassword({ConfirmPasswordRequest request}) async {
    ChangePasswordResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'confirmPassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatPasswordResponse(data);
      return res;
    } on PlatformException catch(e) {
      _throwError(e);
    }
    return res;
  }

  SignUpResult _formatSignUpResponse(Map<String, dynamic> res) {
    return CognitoSignUpResult(isSignUpComplete: res["isSignUpComplete"], nextStep: AuthNextSignUpStep(
      signUpStep: res["nextStep"]["signUpStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
    ));
  }

  SignInResult _formatSignInResponse(Map<String, dynamic> res) {
    return CognitoSignInResult(isSignedIn: res["isSignedIn"], nextStep: AuthNextSignInStep(
      signInStep: res["nextStep"]["signInStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
    ));
  }

  ChangePasswordResult _formatPasswordResponse(Map<String, dynamic> res) {
    return ChangePasswordResult();
  }

  SignOutResult _formatSignOutResponse(Map<String, dynamic> signOutResponse) {
    return SignOutResult();
  }

  ResetPasswordResult _formatResetPasswordResponse(Map<String, dynamic> res) {
    return CognitoResetPasswordResult( isPasswordReset: res["isPasswordReset"], nextStep: ResetPasswordStep(
      updateStep: res["nextStep"]["resetPasswordStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
    ));
  }

  void _throwError(PlatformException e) {
    LinkedHashMap eMap = new LinkedHashMap<String, dynamic>();
    e.details.forEach((k, v) => {
      if (cognitoExceptions.contains(k)) {
        eMap.putIfAbsent(k, () => v)
      } else {
        eMap.putIfAbsent("UNRECOGNIZED EXCEPTION", () => "See logs for details.")
      }
    });
    AuthError error = AuthError.init(cause: e.message, errorMap: eMap);
    throw(error);
  }
}

