/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

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
