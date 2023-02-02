// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/storage/base/storage_controllable_operation.dart';

import 'base/storage_operation.dart';

/// {@template amplify_core.storage.download_data_operation}
/// A storage download data operation interface.
/// {@endtemplate}
abstract class StorageDownloadDataOperation<
        Request extends StorageDownloadDataRequest,
        Result extends StorageDownloadDataResult>
    extends StorageOperation<Request, Result>
    implements StorageResumableOperation, StorageCancelableOperation {
  /// {@macro amplify_core.storage.download_data_operation}
  StorageDownloadDataOperation({
    required super.request,
    required super.result,
  });
}
