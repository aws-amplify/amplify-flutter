// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// Interface for Secure Storage in Amplify plugins.
abstract class SecureStorageInterface {
  const SecureStorageInterface();

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
