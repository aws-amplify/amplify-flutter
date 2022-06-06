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

import 'dart:async';

/// Interface for Secure Storage in Amplify plugins.
abstract class SecureStorageInterface {
  const SecureStorageInterface();

  /// {@template amplify_secure_storage_dart.secure_storage_interface.init}
  /// Initializes the secure storage and performs any work which should be
  /// performed once before any secure storage operations.
  /// {@endtemplate}
  FutureOr<void> init() async {}

  /// {@template amplify_secure_storage_dart.secure_storage_interface.write}
  /// Write a key-value pair to storage.
  ///
  /// The [key] should be unique to the Amplify backend for which the
  /// [value] applies to.
  ///
  /// Adds a new key-value pair if the key does not currently exist,
  /// or updates the existing value if the key is present.
  /// {@endtemplate}
  FutureOr<void> write({required String key, required String value});

  /// {@template amplify_secure_storage_dart.secure_storage_interface.read}
  /// Read the value of a given key.
  ///
  /// Returns null if the key is not present.
  /// {@endtemplate}
  FutureOr<String?> read({required String key});

  /// {@template amplify_secure_storage_dart.secure_storage_interface.delete}
  /// Remove a key/value pair from storage.
  ///
  /// Has no effect if the key is not found.
  /// {@endtemplate}
  FutureOr<void> delete({required String key});
}
