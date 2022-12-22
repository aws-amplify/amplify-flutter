// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.access_denied_exception}
/// Exception thrown when the service request receives access denied error.
/// {@endtemplate}
class StorageAccessDeniedException extends StorageException {
  /// {@macro amplify_core.storage.access_denied_exception}
  const StorageAccessDeniedException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageAccessDeniedException';
}
