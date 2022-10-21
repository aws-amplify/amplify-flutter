// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
