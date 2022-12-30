// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';

/// {@template amplify_secure_storage_dart.not_available_exception}
/// Thrown when the underlying platform dependencies or storage mechanisms
/// are not available.
/// {@endtemplate}
class NotAvailableException extends SecureStorageException {
  /// {@macro amplify_secure_storage_dart.not_available_exception}
  const NotAvailableException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
