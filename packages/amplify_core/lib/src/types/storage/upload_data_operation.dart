// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_controllable_operation.dart';
import 'base/storage_operation.dart';

/// {@template amplify_core.storage.upload_data_operation}
/// Presents a storage upload data operation.
/// {@endtemplate}
abstract class StorageUploadDataOperation<
        Request extends StorageUploadDataRequest,
        Result extends StorageUploadDataResult>
    extends StorageOperation<Request, Result>
    implements StorageCancelableOperation {
  /// {@macro amplify_core.storage.upload_data_operation}
  StorageUploadDataOperation({
    required super.request,
    required super.result,
  });
}
