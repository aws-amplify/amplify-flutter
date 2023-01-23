// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.signed_out_exception}
/// Exception thrown when the requested operation can't be performed due to the
/// user being signed out.
/// {@endtemplate}
class SignedOutException extends AuthException {
  /// {@macro amplify_core.auth.signed_out_exception}
  const SignedOutException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Thrown when no user is currently signed in.
  const SignedOutException.noUserSignedIn({
    String? recoverySuggestion = 'Call Amplify.Auth.signIn()',
  }) : this(
          'No user is currently signed in',
          recoverySuggestion: recoverySuggestion,
        );

  @override
  String get runtimeTypeName => 'SignedOutException';
}
