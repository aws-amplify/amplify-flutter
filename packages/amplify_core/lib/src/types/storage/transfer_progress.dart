// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_storage_s3.transfer_progress}
/// The progress of a storage transfer operation.
/// {@endtemplate}
class StorageTransferProgress {
  /// {@macro amplify_storage_s3.transfer_progress}
  const StorageTransferProgress({
    required this.transferredBytes,
    required this.totalBytes,
  });

  /// The current progress, in bytes, for the storage transfer operation.
  final int transferredBytes;

  /// The total number of bytes for the storage transfer operation.
  final int totalBytes;

  // TODO(HuiSF): Remove at GA.
  @Deprecated('Use transferredBytes instead')
  int get currentBytes => transferredBytes;

  /// The fractional progress of the storage transfer operation.
  ///
  /// 0 <= `fractionCompleted` <= 1
  double get fractionCompleted => transferredBytes / totalBytes;

  // TODO(HuiSF): Remove at GA
  @Deprecated('Use fractionCompleted instead')
  double getFractionCompleted() => fractionCompleted;
}
