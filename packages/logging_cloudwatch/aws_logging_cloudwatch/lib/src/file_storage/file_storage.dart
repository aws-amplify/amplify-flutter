// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

export 'file_storage.vm.dart' if (dart.library.html) 'file_storage.web.dart';

/// File storage interface for saving and loading constraint locally
abstract interface class FileStorage {
  /// Save constraint locally to file
  Future<void> saveConstraintLocally(String filename, String data);

  /// Load constraint from file
  Future<String?> loadConstraint(String filename);
}
