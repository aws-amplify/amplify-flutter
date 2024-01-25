// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/src/file_storage/file_storage.dart';

/// File storage implementation for saving and loading constraint locally
class FileStorageImpl implements FileStorage {
  /// File storage implementation for saving and loading constraint locally
  // ignore: avoid_unused_constructor_parameters
  FileStorageImpl(AppPathProvider pathProvider);

  static const _prefix = 'aws.cloudwatch';

  @override
  Future<String?> load(String fileName) async {
    return window.localStorage['$_prefix.$fileName'];
  }

  @override
  Future<void> save(String fileName, String content) async {
    window.localStorage['$_prefix.$fileName'] = content;
  }
}
