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

/// {@template auth.failed_attempts_limit_exceeded_exception}
/// Exception thrown when too many failed attempts for a given action has been
/// made, such as sign-in.
/// {@endtemplate}
class FailedAttemptsLimitExceededException extends AuthException {
  /// {@macro auth.failed_attempts_limit_exceeded_exception}
  FailedAttemptsLimitExceededException(String message,
      {String? recoverySuggestion, String? underlyingException})
      : super(message,
            recoverySuggestion: recoverySuggestion,
            underlyingException: underlyingException);

  /// {@macro auth.exception_downcasting}
  FailedAttemptsLimitExceededException._private(AuthException exception)
      : super(exception.message,
            recoverySuggestion: exception.recoverySuggestion,
            underlyingException: exception.underlyingException);

  /// {@macro auth.exception_from_map}
  static FailedAttemptsLimitExceededException fromMap(
      Map<String, String> serializedException) {
    return FailedAttemptsLimitExceededException._private(
        AuthException.fromMap(serializedException));
  }
}
