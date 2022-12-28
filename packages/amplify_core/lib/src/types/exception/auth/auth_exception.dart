// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.auth_exception}
/// The base class for Auth category exceptions.
/// {@endtemplate}
abstract class AuthException extends AmplifyException with AWSDebuggable {
  /// {@macro amplify_core.auth.auth_exception}
  const AuthException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  static const _unknownMessage = 'An unknown error occurred';

  /// Creates an [AuthException] from [e].
  static AuthException fromException(Exception e) {
    if (e is AuthException) {
      return e;
    }
    if (e is AmplifyException) {
      return UnknownException(
        e.message,
        recoverySuggestion: e.recoverySuggestion,
        underlyingException: e.underlyingException,
      );
    }
    String message;
    try {
      message = (e as dynamic).message as String;
    } on Object {
      message = _unknownMessage;
    }
    return UnknownException(message, underlyingException: e);
  }
}
