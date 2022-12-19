// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_operation.dart';

/// {@template amplify_core.storage.get_url_operation}
/// Presents a storage get url operation.
/// {@endtemplate}
class StorageGetUrlOperation<Request extends StorageGetUrlRequest,
        Result extends StorageGetUrlResult>
    extends StorageOperation<Request, Result> {
  /// {@macro amplify_core.storage.get_url_operation}
  StorageGetUrlOperation({
    required super.request,
    required super.result,
  });
}
