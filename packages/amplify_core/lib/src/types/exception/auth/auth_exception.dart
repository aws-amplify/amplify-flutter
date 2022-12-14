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
