// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.get_url_request}
/// Presents a storage get url request.
/// {@endtemplate}
class StorageGetUrlRequest {
  /// {@macro amplify_core.storage.get_url_request}
  const StorageGetUrlRequest({
    this.key,
    this.path,
    this.options,
  });

  /// Key of the object to get url for.
  final String? key;

  final StoragePath? path;

  /// Configurable options of the [StorageGetUrlRequest].
  final StorageGetUrlOptions? options;
}
