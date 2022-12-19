// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';

/// {@template amplify_secure_storage_dart.unknown_exception}
/// Thrown when an unknown exception occurs when interacting with the
/// devices keychain.
/// {@endtemplate}
class UnknownException extends SecureStorageException {
  /// {@macro amplify_secure_storage_dart.unknown_exception}
  const UnknownException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
