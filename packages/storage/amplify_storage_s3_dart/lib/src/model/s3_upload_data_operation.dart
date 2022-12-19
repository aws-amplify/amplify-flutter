// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.upload_data_operation}
/// An operation created by calling the Storage S3 plugin `uploadData` API.
/// {@endtemplate}
class S3UploadDataOperation extends StorageUploadDataOperation<
    StorageUploadDataRequest<S3UploadDataOptions>, S3UploadDataResult> {
  /// {@macro storage.amplify_storage_s3.upload_data_operation}
  S3UploadDataOperation({
    required super.request,
    required super.result,
    required Future<void> Function() cancel,
  }) : _cancel = cancel;

  final Future<void> Function() _cancel;

  @override
  Future<void> cancel() => _cancel();
}
