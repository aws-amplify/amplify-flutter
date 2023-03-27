// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.missing_auth_exception}
/// Exception thrown when auth is missing.
/// {@endtemplate}
class MissingAuthException extends StorageException {
  /// {@macro amplify_core.missing_auth_exception}
  const MissingAuthException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'MissingAuthException';
}
