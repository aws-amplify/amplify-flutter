// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.invalid_state_exception}
/// Exception thrown when the requested operation is not valid in the current
/// Amplity Auth state.
/// {@endtemplate}
class InvalidStateException extends AuthException {
  /// {@macro amplify_core.auth.invalid_state_exception}
  const InvalidStateException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Thrown when trying to access user pool methods while federated to an
  /// identity pool.
  const InvalidStateException.federatedToIdentityPool()
      : this(
          'Users federated to Identity Pools do not have User Pool access.',
          recoverySuggestion: 'Call `clearFederationToIdentityPool`, '
              'then sign in normally to access User Pool data.',
        );

  @override
  String get runtimeTypeName => 'InvalidStateException';
}
