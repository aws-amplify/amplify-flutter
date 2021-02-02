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

import 'package:amplify_auth_cognito/amplify_auth_error_handling.dart';
import 'package:amplify_core/types/exception/AmplifyException.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

void main() {
  String message = "I_am_a_message";
  String recoverySuggestion = "I_am_a_recovery_suggestion";
  String underlyingException = "I_am_an_underlyingException";
  Map<String, String> details = Map.from({
    "message": message,
    "recoverySuggestion": recoverySuggestion,
    "underlyingException": underlyingException
  });

  setUp(() {});

  tearDown(() {});


  test('castAndThrowPlatformException returns an AuthException', () async {
    PlatformException exception = PlatformException(code: "AuthException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an AliasExistsException', () async {
    PlatformException exception = PlatformException(code: "AliasExistsException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<AliasExistsException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an CodeDeliveryFailureException', () async {
    PlatformException exception = PlatformException(code: "CodeDeliveryFailureException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<CodeDeliveryFailureException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an CodeExpiredException', () async {
    PlatformException exception = PlatformException(code: "CodeExpiredException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<CodeExpiredException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an CodeMismatchException', () async {
    PlatformException exception = PlatformException(code: "CodeMismatchException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<CodeMismatchException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an FailedAttemptsLimitExceededException', () async {
    PlatformException exception = PlatformException(code: "FailedAttemptsLimitExceededException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<FailedAttemptsLimitExceededException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an InvalidAccountTypeException', () async {
    PlatformException exception = PlatformException(code: "InvalidAccountTypeException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<InvalidAccountTypeException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an InvalidParameterException', () async {
    PlatformException exception = PlatformException(code: "InvalidParameterException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<InvalidParameterException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an InvalidPasswordException', () async {
    PlatformException exception = PlatformException(code: "InvalidPasswordException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<InvalidPasswordException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an LambdaException', () async {
    PlatformException exception = PlatformException(code: "LambdaException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<LambdaException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an MFAMethodNotFoundException', () async {
    PlatformException exception = PlatformException(code: "MFAMethodNotFoundException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<MFAMethodNotFoundException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an NotAuthorizedException', () async {
    PlatformException exception = PlatformException(code: "NotAuthorizedException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<NotAuthorizedException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an PasswordResetRequiredException', () async {
    PlatformException exception = PlatformException(code: "PasswordResetRequiredException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<PasswordResetRequiredException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an ResourceNotFoundException', () async {
    PlatformException exception = PlatformException(code: "ResourceNotFoundException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<ResourceNotFoundException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an SessionExpiredException', () async {
    PlatformException exception = PlatformException(code: "SessionExpiredException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<SessionExpiredException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an SessionUnavailableServiceException', () async {
    PlatformException exception = PlatformException(code: "SessionUnavailableServiceException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<SessionUnavailableServiceException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an SessionUnavailableOfflineException', () async {
    PlatformException exception = PlatformException(code: "SessionUnavailableOfflineException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<SessionUnavailableOfflineException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an SignedOutException', () async {
    PlatformException exception = PlatformException(code: "SignedOutException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<SignedOutException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an SoftwareTokenMFANotFoundException', () async {
    PlatformException exception = PlatformException(code: "SoftwareTokenMFANotFoundException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<SoftwareTokenMFANotFoundException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an TooManyRequestsException', () async {
    PlatformException exception = PlatformException(code: "TooManyRequestsException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<TooManyRequestsException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an UnknownException', () async {
    PlatformException exception = PlatformException(code: "UnknownException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<UnknownException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an UserCancelledException', () async {
    PlatformException exception = PlatformException(code: "UserCancelledException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<UserCancelledException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an UsernameExistsException', () async {
    PlatformException exception = PlatformException(code: "UsernameExistsException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<UsernameExistsException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an UserNotConfirmedException', () async {
    PlatformException exception = PlatformException(code: "UserNotConfirmedException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<UserNotConfirmedException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });

  test('castAndThrowPlatformException returns an UserNotFoundException', () async {
    PlatformException exception = PlatformException(code: "UserNotFoundException", details: details);
    AmplifyException amplifyException;
    try {
      await castAndThrowPlatformException(exception);
    } catch (e) {
      amplifyException = e;
    }
    expect(amplifyException, isInstanceOf<AmplifyException>());
    expect(amplifyException, isInstanceOf<AuthException>());
    expect(amplifyException, isInstanceOf<UserNotFoundException>());
    expect(amplifyException.message, message);
    expect(amplifyException.recoverySuggestion, recoverySuggestion);
    expect(amplifyException.underlyingException, underlyingException);
  });
}
