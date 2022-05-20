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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

/// Converts MethodChannel error data to Dart AuthException subclass
Exception castAndReturnPlatformException(PlatformException e) {
  switch (e.code) {
    case "AliasExistsException":
      {
        return AliasExistsException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "CodeDeliveryFailureException":
      {
        return CodeDeliveryFailureException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "CodeExpiredException":
    case "CognitoCodeExpiredException":
      {
        return CodeExpiredException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "CodeMismatchException":
      {
        return CodeMismatchException.fromMap(
            Map<String, String>.from(e.details));
      }
    case 'ConfigurationException':
      return InvalidUserPoolConfigurationException.fromMap(e.details as Map);
    case 'DeviceNotTrackedException':
      return DeviceNotTrackedException.fromMap(e.details as Map);
    case "FailedAttemptsLimitExceededException":
      {
        return FailedAttemptsLimitExceededException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "InternalErrorException":
      {
        return InternalErrorException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "InvalidAccountTypeException":
      {
        return InvalidAccountTypeException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "InvalidParameterException":
      {
        return InvalidParameterException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "InvalidPasswordException":
      {
        return InvalidPasswordException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "InvalidStateException":
      {
        return InvalidStateException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "LambdaException":
      {
        return LambdaException.fromMap(Map<String, String>.from(e.details));
      }
    case "LimitExceededException":
      {
        return LimitExceededException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "MFAMethodNotFoundException":
      {
        return MFAMethodNotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "NotAuthorizedException":
      {
        return NotAuthorizedException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "PasswordResetRequiredException":
      {
        return PasswordResetRequiredException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "ResourceNotFoundException":
      {
        return ResourceNotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "SessionExpiredException":
      {
        return SessionExpiredException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "SessionUnavailableOfflineException":
      {
        return SessionUnavailableOfflineException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "SessionUnavailableServiceException":
      {
        return SessionUnavailableServiceException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "SignedOutException":
      {
        return SignedOutException.fromMap(Map<String, String>.from(e.details));
      }
    case "SoftwareTokenMFANotFoundException":
      {
        return SoftwareTokenMFANotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "TooManyFailedAttemptsException":
      {
        return TooManyFailedAttemptsException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "TooManyRequestsException":
      {
        return TooManyRequestsException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "UnknownException":
      {
        return UnknownException.fromMap(Map<String, String>.from(e.details));
      }
    case "UserCancelledException":
      {
        return UserCancelledException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "UsernameExistsException":
      {
        return UsernameExistsException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "UserNotConfirmedException":
      {
        return UserNotConfirmedException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "UserNotFoundException":
      {
        return UserNotFoundException.fromMap(
            Map<String, String>.from(e.details));
      }
    case "AuthException":
      {
        return AuthException.fromMap(Map<String, String>.from(e.details));
      }
    case "AmplifyException":
      {
        return AmplifyException.fromMap(Map<String, String>.from(e.details));
      }
    default:
      {
        return e;
      }
  }
}

/// Transforms exceptions related to the Devices API.
Exception transformDeviceException(PlatformException e) {
  final parsedException = castAndReturnPlatformException(e);
  // Translate Android error to common exception.
  if (parsedException is ResourceNotFoundException) {
    return DeviceNotTrackedException(
      recoverySuggestion: parsedException.recoverySuggestion,
      underlyingException: parsedException.underlyingException,
    );
  }
  return parsedException;
}
