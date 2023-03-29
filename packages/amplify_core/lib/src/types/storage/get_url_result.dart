// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/get_url_operation.dart';

/// {@template amplify_core.storage.get_url_result}
/// Presents the result of a [StorageGetUrlOperation].
/// {@endtemplate}
class StorageGetUrlResult {
  /// {@macro amplify_core.storage.get_url_result}
  const StorageGetUrlResult({
    required this.url,
  });

  /// The result [Uri] of the [StorageGetUrlOperation].
  final Uri url;
}
