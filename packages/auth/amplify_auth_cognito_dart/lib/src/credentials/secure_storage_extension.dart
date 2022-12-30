// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:meta/meta.dart';

/// Extensions for the secure storage interface.
@internal
extension SecureStorageInterfaceX on SecureStorageInterface {
  /// Write all key-value pairs to storage
  Future<void> writeMany(Map<String, String> items) {
    return Future.wait(
      items.entries.map(
        (entry) async => write(key: entry.key, value: entry.value),
      ),
    );
  }

  /// Delete all key-value pairs from storage
  Future<void> deleteMany(Iterable<String> keys) {
    return Future.wait(
      keys.map(
        (key) async => delete(key: key),
      ),
    );
  }
}
