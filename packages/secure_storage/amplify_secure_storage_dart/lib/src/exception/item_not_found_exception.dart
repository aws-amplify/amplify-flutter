// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';

/// {@template amplify_secure_storage_dart.item_not_found_exception}
/// Thrown when an attempt is made to retrieve and item that does not exist.
/// {@endtemplate}
class ItemNotFoundException extends SecureStorageException {
  /// {@macro amplify_secure_storage_dart.item_not_found_exception}
  const ItemNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
