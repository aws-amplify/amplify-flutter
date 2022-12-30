// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.unknown_exception}
/// Exception thrown when an unknown error from an underlying SDK or service is
/// encountered.
/// {@endtemplate}
class StorageUnknownException extends StorageException {
  /// {@macro amplify_core.storage.unknown_exception}
  const StorageUnknownException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageUnknownException';
}
