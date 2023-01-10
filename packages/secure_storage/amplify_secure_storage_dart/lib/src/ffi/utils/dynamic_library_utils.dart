// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ffi';

import 'package:amplify_secure_storage_dart/src/exception/not_available_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';

/// Opens a [DynamicLibrary] and throws a [SecureStorageException] if it fails.
DynamicLibrary openDynamicLibrary(String name, {String fileExtension = '.so'}) {
  try {
    return DynamicLibrary.open('$name$fileExtension');
  } on ArgumentError catch (e) {
    throw NotAvailableException(
      'Cannot open $name, likely because it is not installed.',
      recoverySuggestion:
          'For local development on Debian based linux distributions such as Ubuntu, '
          'this can be installed by running "sudo apt-get update && sudo apt-get install $name-dev"',
      underlyingException: e,
    );
  } on Object catch (e) {
    throw UnknownException(
      'An unknown exception occurred while trying to open $name.',
      recoverySuggestion: SecureStorageException.missingRecovery,
      underlyingException: e,
    );
  }
}
