// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.auth_exception}
/// Exception thrown when the an operation cannot be authorized.
/// {@endtemplate}
class StorageAuthException extends StorageException {
  /// {@macro amplify_core.storage.auth_exception}
  const StorageAuthException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageAuthException';
}
