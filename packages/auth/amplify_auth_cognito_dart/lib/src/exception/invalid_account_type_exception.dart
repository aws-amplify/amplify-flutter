// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.invalid_account_type_exception}
/// Exception thrown when the configuration of the signed in account does not
/// support the requested operation.
/// {@endtemplate}
class InvalidAccountTypeException extends AuthException {
  /// {@macro amplify_core.auth.invalid_account_type_exception}
  const InvalidAccountTypeException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Thrown when no identity pool is available, but an identity pool operation
  /// was explicitly requested.
  const InvalidAccountTypeException.noIdentityPool({
    String recoverySuggestion = 'Register an identity pool using the CLI',
  }) : this(
          'No identity pool registered for this account',
          recoverySuggestion: recoverySuggestion,
        );

  @override
  String get runtimeTypeName => 'InvalidAccountTypeException';
}
