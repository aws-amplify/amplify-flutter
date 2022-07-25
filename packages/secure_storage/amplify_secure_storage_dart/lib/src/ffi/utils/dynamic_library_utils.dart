// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
