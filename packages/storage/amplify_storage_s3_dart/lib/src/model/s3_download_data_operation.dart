// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(HuiSF): remove
// ignore_for_file: unused_field

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.download_data_operation}
/// An operation created by calling the Storage S3 plugin `downloadData` API.
/// {@endtemplate}
class S3DownloadDataOperation extends StorageDownloadDataOperation<
    StorageDownloadDataRequest<S3DownloadDataOptions>, S3DownloadDataResult> {
  /// {@macro storage.amplify_storage_s3.download_data_operation}
  S3DownloadDataOperation({
    required super.request,
    required super.result,
    required Future<void> Function() resume,
    required Future<void> Function() pause,
    required Future<void> Function() cancel,
  })  : _resume = resume,
        _pause = pause,
        _cancel = cancel;

  final Future<void> Function() _resume;
  final Future<void> Function() _pause;
  final Future<void> Function() _cancel;

  // TODO(HuiSF): re-enable controllable APIs when SmithyOperation.cancel
  // can cancel underlying http request.
  // @override
  // Future<void> resume() => _resume();

  // @override
  // Future<void> pause() => _pause();

  // @override
  // Future<void> cancel() => _cancel();
}
