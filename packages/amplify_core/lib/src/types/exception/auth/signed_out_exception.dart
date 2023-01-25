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

  @override
  String get runtimeTypeName => 'SignedOutException';
}
