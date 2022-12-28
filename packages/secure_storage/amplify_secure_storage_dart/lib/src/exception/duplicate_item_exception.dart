// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';

/// {@template amplify_secure_storage_dart.duplicate_item_exception}
/// Thrown when an attempt is made to add an item that already exists.
/// {@endtemplate}
class DuplicateItemException extends SecureStorageException {
  /// {@macro amplify_secure_storage_dart.duplicate_item_exception}
  const DuplicateItemException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
