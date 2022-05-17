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

/// {@template amplify_common.auth_exception}
/// Base class for Auth category exceptions.
/// {@endtemplate}
class AuthException extends AmplifyException {
  /// {@macro amplify_common.auth_exception}
  const AuthException(
    String message, {
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// Constructor for down casting an AmplifyException to this exception
  AuthException._private(AmplifyException exception)
      : super(
          exception.message,
          recoverySuggestion: exception.recoverySuggestion,
          underlyingException: exception.underlyingException,
        );

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AuthException fromMap(Map<String, String> serializedException) {
    return AuthException._private(
      AmplifyException.fromMap(serializedException),
    );
  }

  /// Creates an [AuthException] from [e].
  static AuthException fromException(Exception e) {
    if (e is AuthException) {
      return e;
    }
    if (e is AmplifyException) {
      return AuthException(
        e.message,
        recoverySuggestion: e.recoverySuggestion,
        underlyingException: e.underlyingException,
      );
    }
    // TODO: Unknown exception?
    return AuthException(e.toString());
  }
}
