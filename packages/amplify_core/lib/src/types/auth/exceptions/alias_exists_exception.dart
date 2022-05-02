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

/// {@template auth.alias_exists_exception}
/// Exception thrown when attempts are made to confirm the account with an email
/// or phone number that has already been supplied as an alias from a different
/// account. This exception indicates an account with this email or phone
/// already exists.
/// {@endtemplate}
class AliasExistsException extends AuthException {
  /// {@macro auth.alias_exists_exception}
  AliasExistsException(String message,
      {String? recoverySuggestion, String? underlyingException})
      : super(message,
            recoverySuggestion: recoverySuggestion,
            underlyingException: underlyingException);

  /// {@template auth.exception_downcasting}
  /// Internal named constructor for downcasting an `AuthException` to this
  /// exception
  /// {@endtemplate}
  AliasExistsException._private(AuthException exception)
      : super(exception.message,
            recoverySuggestion: exception.recoverySuggestion,
            underlyingException: exception.underlyingException);

  /// {@macro auth.exception_from_map}
  static AliasExistsException fromMap(Map<String, String> serializedException) {
    return AliasExistsException._private(
        AuthException.fromMap(serializedException));
  }
}
