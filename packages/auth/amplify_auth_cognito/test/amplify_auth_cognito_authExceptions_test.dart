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
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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
    PlatformException exception =
        PlatformException(code: "AuthException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an AliasExistsException',
      () async {
    PlatformException exception =
        PlatformException(code: "AliasExistsException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<AliasExistsException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an CodeDeliveryFailureException',
      () async {
    PlatformException exception = PlatformException(
        code: "CodeDeliveryFailureException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<CodeDeliveryFailureException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an CodeExpiredException',
      () async {
    PlatformException exception =
        PlatformException(code: "CodeExpiredException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<CodeExpiredException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an CodeMismatchException',
      () async {
    PlatformException exception =
        PlatformException(code: "CodeMismatchException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<CodeMismatchException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test(
      'castAndThrowPlatformException returns an FailedAttemptsLimitExceededException',
      () async {
    PlatformException exception = PlatformException(
        code: "FailedAttemptsLimitExceededException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<FailedAttemptsLimitExceededException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an InvalidAccountTypeException',
      () async {
    PlatformException exception = PlatformException(
        code: "InvalidAccountTypeException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<InvalidAccountTypeException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an InvalidParameterException',
      () async {
    PlatformException exception =
        PlatformException(code: "InvalidParameterException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<InvalidParameterException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an InvalidPasswordException',
      () async {
    PlatformException exception =
        PlatformException(code: "InvalidPasswordException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<InvalidPasswordException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an LambdaException', () async {
    PlatformException exception =
        PlatformException(code: "LambdaException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<LambdaException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an MFAMethodNotFoundException',
      () async {
    PlatformException exception =
        PlatformException(code: "MFAMethodNotFoundException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<MFAMethodNotFoundException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an NotAuthorizedException',
      () async {
    PlatformException exception =
        PlatformException(code: "NotAuthorizedException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<NotAuthorizedException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test(
      'castAndThrowPlatformException returns an PasswordResetRequiredException',
      () async {
    PlatformException exception = PlatformException(
        code: "PasswordResetRequiredException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<PasswordResetRequiredException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an ResourceNotFoundException',
      () async {
    PlatformException exception =
        PlatformException(code: "ResourceNotFoundException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<ResourceNotFoundException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an SessionExpiredException',
      () async {
    PlatformException exception =
        PlatformException(code: "SessionExpiredException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<SessionExpiredException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test(
      'castAndThrowPlatformException returns an SessionUnavailableServiceException',
      () async {
    PlatformException exception = PlatformException(
        code: "SessionUnavailableServiceException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<SessionUnavailableServiceException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test(
      'castAndThrowPlatformException returns an SessionUnavailableOfflineException',
      () async {
    PlatformException exception = PlatformException(
        code: "SessionUnavailableOfflineException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<SessionUnavailableOfflineException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an SignedOutException', () async {
    PlatformException exception =
        PlatformException(code: "SignedOutException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<SignedOutException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test(
      'castAndThrowPlatformException returns an SoftwareTokenMFANotFoundException',
      () async {
    PlatformException exception = PlatformException(
        code: "SoftwareTokenMFANotFoundException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<SoftwareTokenMFANotFoundException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an TooManyRequestsException',
      () async {
    PlatformException exception =
        PlatformException(code: "TooManyRequestsException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<TooManyRequestsException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an UnknownException', () async {
    PlatformException exception =
        PlatformException(code: "UnknownException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<UnknownException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an UserCancelledException',
      () async {
    PlatformException exception =
        PlatformException(code: "UserCancelledException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<UserCancelledException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an UsernameExistsException',
      () async {
    PlatformException exception =
        PlatformException(code: "UsernameExistsException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<UsernameExistsException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an UserNotConfirmedException',
      () async {
    PlatformException exception =
        PlatformException(code: "UserNotConfirmedException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<UserNotConfirmedException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });

  test('castAndThrowPlatformException returns an UserNotFoundException',
      () async {
    PlatformException exception =
        PlatformException(code: "UserNotFoundException", details: details);
    try {
      throw castAndReturnPlatformException(exception);
    } on AmplifyException catch (e) {
      expect(e, isA<AmplifyException>());
      expect(e, isA<AuthException>());
      expect(e, isA<UserNotFoundException>());
      expect(e.message, message);
      expect(e.recoverySuggestion, recoverySuggestion);
      expect(e.underlyingException, underlyingException);
      return;
    }
  });
}
