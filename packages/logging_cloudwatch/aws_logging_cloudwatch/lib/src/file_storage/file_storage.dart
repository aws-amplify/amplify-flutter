// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'file_storage_stub.dart'
    if (dart.library.io) 'file_storage_vm.dart'
    if (dart.library.html) 'file_storage_web.dart';

/// File storage interface for saving and loading constraint locally
abstract interface class FileStorage {
  factory FileStorage(AppPathProvider pathProvider) = FileStorageImpl;

  /// Save constraint locally to file
  Future<void> save(String fileName, String data);

  /// Load constraint from file
  Future<String?> load(String filename);
}
