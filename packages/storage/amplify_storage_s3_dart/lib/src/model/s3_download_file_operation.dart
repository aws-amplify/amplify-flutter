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

// TODO(HuiSF): remove
// ignore_for_file: unused_field

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

// {@template storage.amplify_storage_s3.download_file_operation}
/// An operation created by calling the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
class S3DownloadFileOperation extends StorageDownloadFileOperation<
    StorageDownloadFileRequest<S3DownloadFileOptions>, S3DownloadFileResult> {
  /// {@macro storage.amplify_storage_s3.download_file_operation}
  S3DownloadFileOperation({
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
  // /// When using Amplify Storage S3 plugin in a Web App, this doesn't do
  // /// anything as the download is managed by browser.
  // @override
  // Future<void> resume() => _resume();

  // /// When using Amplify Storage S3 plugin in a Web App, this doesn't do
  // /// anything as the download is managed by browser.
  // @override
  // Future<void> pause() => _pause();

  // @override
  // Future<void> cancel() => _cancel();
}
