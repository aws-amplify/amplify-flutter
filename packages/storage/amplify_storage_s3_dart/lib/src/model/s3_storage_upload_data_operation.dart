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

// ignore_for_file: unused_field

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.upload_data_operation}
/// An operation created by calling the Storage S3 plugin `uploadData` API.
/// {@endtemplate}
class S3StorageUploadDataOperation extends StorageUploadDataOperation<
    StorageUploadDataRequest<S3StorageUploadDataOptions>,
    S3StorageUploadDataResult> {
  /// {@macro storage.amplify_storage_s3.upload_data_operation}
  S3StorageUploadDataOperation({
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

  // TODO(HuiSF): enable controllable operation APIs when AWSHttpOperation
  //  is returned from S3Client APIs.
  // /// Resumes the operation that is in paused state.
  // @override
  // Future<void> resume() => _resume();

  // /// Pauses the operation that is in progress.
  // @override
  // Future<void> pause() => _pause();

  // /// Cancels the operation.
  // ///
  // /// A cancelled operation cannot be resumed.
  // @override
  // Future<void> cancel() => _cancel();
}
