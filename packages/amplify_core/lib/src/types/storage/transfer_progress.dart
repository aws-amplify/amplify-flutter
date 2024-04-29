// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.storage.transfer_state}
/// State of a download task.
/// {@endtemplate}
enum StorageTransferState {
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

/// {@template amplify_core.storage.transfer_progress}
/// The progress of a storage transfer operation.
/// {@endtemplate}
class StorageTransferProgress {
  /// {@macro amplify_core.transfer_progress}
  const StorageTransferProgress({
    required this.transferredBytes,
    required this.totalBytes,
    required this.state,
  });

  /// The current progress, in bytes, for the storage transfer operation.
  final int transferredBytes;

  /// The total number of bytes for the storage transfer operation.
  ///
  /// In an upload operation, the value may be `-1` if the upload source size
  /// cannot be determined.
  final int totalBytes;

  /// The [StorageTransferState] of the [StorageTransferProgress].
  final StorageTransferState state;

  /// The fractional progress of the storage transfer operation.
  ///
  /// fractionCompleted will be between 0 and 1, unless the upload source size
  /// cannot be determined in which case the fractionCompleted will be -1.
  double get fractionCompleted =>
      totalBytes == -1 ? -1 : transferredBytes / totalBytes;
}
