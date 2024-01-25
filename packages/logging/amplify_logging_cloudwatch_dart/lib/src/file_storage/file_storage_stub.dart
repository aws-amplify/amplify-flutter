// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/src/file_storage/file_storage.dart';

/// File storage implementation for saving and loading constraint locally
class FileStorageImpl implements FileStorage {
  /// File storage implementation for saving and loading constraint locally
  FileStorageImpl(this.pathProvider);

  /// Path provider to get the application support path
  final AppPathProvider pathProvider;

  @override
  Future<String?> load(String fileName) async {
    throw UnimplementedError();
  }

  @override
  Future<void> save(String fileName, String content) async {
    throw UnimplementedError();
  }
}
