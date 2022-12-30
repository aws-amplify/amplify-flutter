// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_controllable_operation.dart';
import 'base/storage_operation.dart';

/// {@template amplify_core.storage.upload_file_operation}
/// Presents a upload file operation.
/// {@endtemplate}
abstract class StorageUploadFileOperation<
        Request extends StorageUploadFileRequest,
        Result extends StorageUploadFileResult>
    extends StorageOperation<Request, Result>
    implements StorageResumableOperation, StorageCancelableOperation {
  /// {@macro amplify_core.storage.upload_file_operation}
  StorageUploadFileOperation({
    required super.request,
    required super.result,
  });
}
