// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  /// When using Amplify Storage S3 plugin in a Web App, this doesn't do
  /// anything as the download is managed by browser.
  @override
  Future<void> resume() => _resume();

  /// When using Amplify Storage S3 plugin in a Web App, this doesn't do
  /// anything as the download is managed by browser.
  @override
  Future<void> pause() => _pause();

  @override
  Future<void> cancel() => _cancel();
}
