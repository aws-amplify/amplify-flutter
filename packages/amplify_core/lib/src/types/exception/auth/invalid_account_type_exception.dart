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
}
