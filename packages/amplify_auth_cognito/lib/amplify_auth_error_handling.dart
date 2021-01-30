/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/types/index.dart';
import 'package:flutter/services.dart';
import 'amplify_auth_cognito.dart';

/// Converts MethodChannel error data to Dart AuthException subclass
void castAndThrowPlatformException(PlatformException e) {
    switch(e.code) {
      case "AliasExistsException": {
        throw AliasExistsException.fromMap(
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
      case "InvalidParameterException": {
        throw InvalidParameterException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "InvalidPasswordException": {
        throw InvalidPasswordException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "LambdaException": {
        throw LambdaException.fromMap(
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
      case "TooManyRequestsException": {
        throw TooManyRequestsException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UnknownException": {
        throw UnknownException.fromMap(
            Map<String, String>.from(e.details));
      }
      case "UserCancelledException": {
        throw UserCancelledException.fromMap(
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
