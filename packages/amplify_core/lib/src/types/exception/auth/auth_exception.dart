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

/// {@template amplify_core.auth.auth_exception}
/// The base class for Auth category exceptions.
/// {@endtemplate}
class AuthException extends AmplifyException {
  /// {@macro amplify_core.auth.auth_exception}
  const AuthException(
    String message, {
    String? recoverySuggestion,
    String? underlyingException,
  }) : super(
          message,
          recoverySuggestion: recoverySuggestion,
          underlyingException: underlyingException,
        );

  /// {@template amplify_core.auth.exception_downcasting}
  /// Internal named constructor for downcasting an [AuthException] to this
  /// exception.
  /// {@endtemplate}
  AuthException._private(AmplifyException exception)
      : super(
          exception.message,
          recoverySuggestion: exception.recoverySuggestion,
          underlyingException: exception.underlyingException,
        );

  /// {@template amplify_core.auth.exception_from_map}
  /// Returns a new instance of this exception constructed from the serialized
  /// exception data.
  /// {@endtemplate}
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
    // TODO(dnys1): Unknown exception?
    return AuthException(e.toString());
  }
}
