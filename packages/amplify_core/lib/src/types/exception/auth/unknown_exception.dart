// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.auth.unknown_exception}
/// Exception thrown when an unknown error from an underlying SDK or service is
/// encountered.
/// {@endtemplate}
class UnknownException extends AuthException {
  /// {@macro amplify_core.auth.unknown_exception}
  const UnknownException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnknownException';
}
