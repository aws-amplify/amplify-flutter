// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_operation.dart';

/// {@template amplify_core.storage.copy_operation}
/// Presents a storage copy operation.
/// {@endtemplate}
class StorageCopyOperation<Request extends StorageCopyRequest,
        Result extends StorageCopyResult>
    extends StorageOperation<Request, Result> {
  /// {@macro amplify_core.storage.copy_operation}
  StorageCopyOperation({
    required super.request,
    required super.result,
  });
}
