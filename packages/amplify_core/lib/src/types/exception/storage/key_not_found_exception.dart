// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.key_not_found_exception}
/// Exception thrown when the key is not found in the storage service.
/// {@endtemplate}
class StorageKeyNotFoundException extends StorageException {
  /// {@macro amplify_core.storage.key_not_found_exception}
  const StorageKeyNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'StorageKeyNotFoundException';
}
