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

/// {@template auth.software_token_mfa_not_found_exception}
/// Exception thrown when the software token time-based one-time password (TOTP)
/// multi-factor authentication (MFA) isn't activated for the user pool.
/// {@endtemplate}
class SoftwareTokenMFANotFoundException extends AuthException {
  /// {@macro auth.software_token_mfa_not_found_exception}
  SoftwareTokenMFANotFoundException(String message,
      {String? recoverySuggestion, String? underlyingException})
      : super(message,
            recoverySuggestion: recoverySuggestion,
            underlyingException: underlyingException);

  /// {@macro auth.exception_downcasting}
  SoftwareTokenMFANotFoundException._private(AuthException exception)
      : super(exception.message,
            recoverySuggestion: exception.recoverySuggestion,
            underlyingException: exception.underlyingException);

  /// {@macro auth.exception_from_map}
  static SoftwareTokenMFANotFoundException fromMap(
      Map<String, String> serializedException) {
    return SoftwareTokenMFANotFoundException._private(
        AuthException.fromMap(serializedException));
  }
}
