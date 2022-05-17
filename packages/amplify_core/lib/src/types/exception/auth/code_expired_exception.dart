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

/// {@template amplify_common.code_expired_exception}
/// Thrown when Amplify could not perform the action because confirmation code
/// has expired.
/// {@endtemplate}
class CodeExpiredException extends AuthException {
  /// {@macro amplify_common.code_expired_exception}
  const CodeExpiredException(
    String message, {
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// Constructor for down casting an AuthException to this exception
  CodeExpiredException._private(AuthException exception)
      : super(exception.message,
            recoverySuggestion: exception.recoverySuggestion,
            underlyingException: exception.underlyingException);

  /// Instantiates and return a new `AuthException` from the
  /// serialized exception data
  static CodeExpiredException fromMap(Map<String, String> serializedException) {
    return CodeExpiredException._private(
        AuthException.fromMap(serializedException));
  }
}
