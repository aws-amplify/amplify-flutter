// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_storage_s3_dart.transfer_state}
/// State of a download task.
/// {@endtemplate}
enum S3TransferState {
  /// The download task is in progress.
  inProgress,

  /// The download task is paused.
  paused,

  /// The download task is canceled.
  canceled,

  /// The download task completed successfully.
  success,

  /// The download task failed.
  failure,
}

/// {@template storage.amplify_storage_s3.transfer_progress}
/// The transfer progress.
///
/// In a [S3TransferProgress] emitted by a upload data operation , the field
/// [totalBytes] always has value `-1`, as the file size is unknown when upload
/// was initiated.
/// {@endtemplate}
class S3TransferProgress extends StorageTransferProgress {
  /// {@macro storage.amplify_storage_s3.transfer_progress}
  const S3TransferProgress({
    required super.totalBytes,
    required super.transferredBytes,
    required this.state,
  });

  /// The state of a transfer process.
  final S3TransferState state;
}
