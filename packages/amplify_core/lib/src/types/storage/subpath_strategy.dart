// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.subpath_strategy}
/// Presents .. 
/// {@endtemplate}
class StorageSubpathStrategy {
  /// {@macro amplify_core.storage.subpath_strategy}
  const StorageSubpathStrategy({
    required this.path,
    this.options,
  });

  /// ..
  final StoragePath path;

  /// ..
  final StorageListOptions? options;
}
