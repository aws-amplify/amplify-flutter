// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.get_url_request}
/// Presents a storage get url request.
/// {@endtemplate}
class StorageGetUrlRequest<Options extends StorageGetUrlOptions> {
  /// {@macro amplify_core.storage.get_url_request}
  const StorageGetUrlRequest({
    required this.key,
    this.options,
  });

  /// Key of the object to get url for.
  final String key;

  /// Configurable options of the get url request.
  final Options? options;
}
