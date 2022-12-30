// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:meta/meta.dart';

/// Extensions for the secure storage interface.
@internal
extension SecureStorageInterfaceX on SecureStorageInterface {
  /// Delete all key-value pairs from storage
  Future<void> deleteMany(Iterable<String> keys) {
    return Future.wait(
      keys.map(
        (key) async => delete(key: key),
      ),
    );
  }
}
