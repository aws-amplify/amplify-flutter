// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';

/// {@template amplify_secure_storage_dart.access_denied_exception}
/// Thrown when access to the devices keychain is denied, possibly
/// due to an incorrect password or the user dismissing the prompt
/// for password entry.
/// {@endtemplate}
class AccessDeniedException extends SecureStorageException {
  /// {@macro amplify_secure_storage_dart.access_denied_exception}
  const AccessDeniedException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
