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
import 'package:amplify_core/types/index.dart';
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
          'data2': request.serializeAsMap(),
        },
      );
      res = _formatSignUpResponse(data, "signUp");
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw e;
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
      res = _formatSignUpResponse(data, "confirmSignUp");
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
    }
    return res;
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode({ResendSignUpCodeRequest request}) async {
    ResendSignUpCodeResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'resendSignUpCode',
        <String, dynamic>{
          'data': request.serializeAsMap(),
        },
      );
      res = _formatResendSignUpResponse(data, "resendSignUpCode");
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
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
      res = _formatSignInResponse(data, "signIn");
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
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
      res = _formatSignInResponse(data, "confirmSignIn");
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
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
          'data': request != null ? request.serializeAsMap() : {},
        },
      );
      res = _formatSignOutResponse(data);
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
    }
    return res;
  }

  @override
  Future<UpdatePasswordResult> updatePassword({UpdatePasswordRequest request}) async {
    UpdatePasswordResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'updatePassword',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      res = _formatPasswordResponse(data);
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
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
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
    }
    return res;
  }

  @override
  Future<UpdatePasswordResult> confirmPassword({ConfirmPasswordRequest request}) async {
    UpdatePasswordResult res;
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
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
    }
    return res;
  }

  @override
  Future<AuthSession> fetchAuthSession({AuthSessionRequest request}) async {
    AuthSession res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'fetchAuthSession',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : {},
        },
      );
      res = _formatSessionResponse(data);
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException(e);
    } on Exception catch(e) {
      throw(e);
    }
    return res;
  }

  @override
  Future<AuthUser> getCurrentUser({AuthUserRequest request}) async {
    AuthUser res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'getCurrentUser',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : {},
        },
      );
      res = _formatAuthUserResponse(data);
      return res;
    } on PlatformException catch(e) {
      _castAndThrowPlatformException   (e);
    } on Exception catch(e) {
      throw(e);
    }
    return res;
  }

  @override
  Future<SignInResult> signInWithWebUI({SignInWithWebUIRequest request}) async {
   SignInResult res;
    try {
      final Map<String, dynamic> data =
      await _channel.invokeMapMethod<String, dynamic>(
        'signInWithWebUI',
        <String, dynamic>{
          'data': request != null ? request.serializeAsMap() : null,
        },
      );
      return _formatSignInResponse(data, "signIn");
    } on PlatformException catch(e) {
      _throwError(e);
    } on AuthError catch(e) {
      throw(e);
    }
    return res;
  }

  SignUpResult _formatSignUpResponse(Map<String, dynamic> res, method) {
    return CognitoSignUpResult(isSignUpComplete: res["isSignUpComplete"], nextStep: AuthNextSignUpStep(
      signUpStep: res["nextStep"]["signUpStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
    ));
  }

  ResendSignUpCodeResult _formatResendSignUpResponse(Map<String, dynamic> res, method) {
    return CognitoResendSignUpCodeResult(codeDeliveryDetails: res["codeDeliveryDetails"]);
  }

  SignInResult _formatSignInResponse(Map<String, dynamic> res, String method) {
    return CognitoSignInResult(isSignedIn: res["isSignedIn"], nextStep: AuthNextSignInStep(
      signInStep: res["nextStep"]["signInStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
    ));
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
      username: authUserResponse["username"]
    );
  }

  ResetPasswordResult _formatResetPasswordResponse(Map<String, dynamic> res) {
    return CognitoResetPasswordResult( isPasswordReset: res["isPasswordReset"], nextStep: ResetPasswordStep(
      updateStep: res["nextStep"]["resetPasswordStep"],
      codeDeliveryDetails: res["nextStep"]["codeDeliveryDetails"],
      additionalInfo: res["nextStep"]["additionalInfo"] is String ? jsonDecode(res["nextStep"]["additionalInfo"]) : {}
    ));
  }

  AuthSession _formatSessionResponse(Map<String, dynamic> res) {
    return CognitoAuthSession.init(sessionValues: res);
  }

  void _castAndThrowPlatformException(PlatformException e) {
    switch(e.code) {
      case "AliasExistsException": {
        throw AliasExistsException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "AmazonClientException": {
        throw AmazonClientException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "AmazonServiceException": {
        throw AmazonServiceException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "CodeDeliveryFailureException": {
        throw CodeDeliveryFailureException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "CodeExpiredException":
      case "CognitoCodeExpiredException": {
        throw CodeExpiredException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "CodeMismatchException": {
        throw CodeMismatchException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "FailedAttemptsLimitExceededException": {
        throw FailedAttemptsLimitExceededException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "InternalErrorException": {
        throw InternalErrorException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "InvalidAccountTypeException": {
        throw InvalidAccountTypeException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "InvalidLambdaResponseException": {
        throw InvalidLambdaResponseException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "InvalidParameterException": {
        throw InvalidParameterException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "InvalidPasswordException": {
        throw InvalidPasswordException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "LimitExceededException": {
        throw LimitExceededException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "MFAMethodNotFoundException": {
        throw MFAMethodNotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "NotAuthorizedException": {
        throw NotAuthorizedException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "PasswordResetRequiredException": {
        throw PasswordResetRequiredException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "ResourceNotFoundException": {
        throw ResourceNotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "SessionExpiredException": {
        throw SessionExpiredException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "SessionUnavailableOfflineException": {
        throw SessionUnavailableOfflineException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "SessionUnavailableServiceException": {
        throw SessionUnavailableServiceException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "SignedOutException": {
        throw SignedOutException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "SoftwareTokenMFANotFoundException": {
        throw SoftwareTokenMFANotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "TooManyFailedAttemptsException": {
        throw TooManyFailedAttemptsException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UnexpectedLambdaException": {
        throw UnexpectedLambdaException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UnknownException": {
        throw UnknownException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UnrecognizedAuthError": {
        throw UnrecognizedAuthError.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UserCancelledException": {
        throw UserCancelledException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UserLambdaValidationException": {
        throw UserLambdaValidationException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UsernameExistsException": {
        throw UsernameExistsException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UserNotConfirmedException": {
        throw UserNotConfirmedException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UserNotFoundException": {
        throw UserNotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "AuthException": {
        throw AuthException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "AmplifyException": {
        throw AmplifyException.fromMap(
            Map<String, String>.from(e.details));
      }
      default: {
        throw e;
      }
    }

  }
}