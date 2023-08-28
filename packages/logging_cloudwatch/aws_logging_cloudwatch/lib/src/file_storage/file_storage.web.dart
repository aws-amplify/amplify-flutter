// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_logging_cloudwatch/src/file_storage/file_storage.dart';

/// File storage implementation for saving and loading constraint locally
final class FileStorageImpl implements FileStorage {
  /// File storage implementation for saving and loading constraint locally
  // ignore: avoid_unused_constructor_parameters
  FileStorageImpl(AppPathProvider pathProvider);

  static const _prefix = 'aws.cloudwatch';

  @override
  Future<String?> loadConstraint(String fileName) async {
    return window.localStorage['$_prefix.$fileName'];
  }

  @override
  Future<void> saveConstraintLocally(String fileName, String content) async {
    window.localStorage['$_prefix.$fileName'] = content;
  }
}
