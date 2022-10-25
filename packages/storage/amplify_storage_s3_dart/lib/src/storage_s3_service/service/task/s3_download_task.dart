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

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;

/// {@template amplify_storage_s3_dart.download_task}
/// A task created to fulfill a download operation.
/// {@template}
@internal
class S3DownloadTask {
  /// {@macro amplify_storage_s3_dart.download_task}
  ///
  /// {@template amplify_storage_s3_dart.download_task.pre_start}
  /// [preStart] is a function to run before starting the download task,
  /// can be used as a precondition check. This function can throw exception
  /// to terminate the download task, the exception will be forwarded to the
  /// [result] Future.
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_progress}
  /// [onProgress] is a function to receive [S3TransferProgress].
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_receiving_bytes}
  /// [onData] is a function to receive bytes from download response
  /// body stream.
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_done}
  /// [onDone] is a function to run when the download response body stream is
  /// completed. This function can throw exception, which will be forwarded
  /// to the [result] future.
  /// {@endtemplate}
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_error}
  /// [onError] is a function to run when an error occurred during download.
  /// This function doesn't handle the actual error, but only serves as a job
  /// cleaner.
  /// {@endtemplate}
  S3DownloadTask({
    required s3.S3Client s3Client,
    required S3PrefixResolver prefixResolver,
    required String bucket,
    required String key,
    required S3DownloadDataOptions options,
    FutureOr<void> Function()? preStart,
    void Function(S3TransferProgress)? onProgress,
    void Function(List<int>)? onData,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
    required AWSLogger logger,
  })  : _downloadCompleter = Completer<S3Item>(),
        _s3Client = s3Client,
        _prefixResolver = prefixResolver,
        _bucket = bucket,
        _key = key,
        _downloadDataOptions = options,
        _preStart = preStart,
        _onProgress = onProgress,
        _onData = onData,
        _onDone = onDone,
        _onError = onError,
        _logger = logger,
        _downloadedBytesSize = 0;

  // the Completer to complete the final `result` Future.
  final Completer<S3Item> _downloadCompleter;

  final s3.S3Client _s3Client;
  final S3PrefixResolver _prefixResolver;
  final String _bucket;
  final String _key;
  final S3DownloadDataOptions _downloadDataOptions;
  final FutureOr<void> Function()? _preStart;
  final void Function(S3TransferProgress)? _onProgress;
  final void Function(List<int> bytes)? _onData;
  final FutureOr<void> Function()? _onDone;
  final FutureOr<void> Function()? _onError;
  final AWSLogger _logger;

  int _downloadedBytesSize;

  // the subscription to `S3Client.getObject` returned stream body.
  // It gets reassigned when pause/resume.
  late StreamSubscription<List<int>> _bytesSubscription;

  // The completer to ensure `pause`, `resume` and `cancel` to be executed
  // at correct moment.
  Completer<void>? _getObjectCompleter;
  Completer<void>? _pauseCompleter;

  late S3TransferState _state;
  late final String _resolvedKey;

  // Total bytes that need to be downloaded, this field is set when the
  // **very first** (without bytes range specified) `S3Client.getObject`
  // response returns, value is from the response header.
  late final int _totalBytes;

  Future<void>? get _getObjectInitiated => _getObjectCompleter?.future;
  Future<void>? get _pausedCompleted => _pauseCompleter?.future;

  /// The result of a download task.
  Future<S3Item> get result => _downloadCompleter.future;

  /// Starts the `S3DownloadTask`.
  @internal
  Future<void> start() async {
    _resetGetObjectCompleter();

    _state = S3TransferState.inProgress;

    try {
      await _preStart?.call();
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
      return;
    }

    final resolvedPrefix = await StorageS3Service.getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: _downloadDataOptions.accessLevel,
      identityId: _downloadDataOptions.targetIdentityId,
    );

    _resolvedKey = '$resolvedPrefix$_key';

    try {
      final getObjectOutput = await _getObject(
        bucket: _bucket,
        key: _resolvedKey,
        bytesRange: _downloadDataOptions.bytesRange,
      );

      final remoteSize = getObjectOutput.contentLength.toInt();

      _totalBytes = remoteSize;
      _listenToBytesSteam(getObjectOutput.body);
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
    }
  }

  /// Pauses the [S3DownloadTask].
  Future<void> pause() async {
    // ensure the task has actually started before pausing
    await _getObjectInitiated;

    if (_state != S3TransferState.inProgress) {
      return;
    }

    _resetPauseCompleter();

    // TODO(HuiSF): when it's ready, invoke `AWSHttpOperation.cancel` here
    //  to cancel the underlying http request
    await _bytesSubscription.cancel();
    _state = S3TransferState.paused;
    _emitTransferProgress();
    _pauseCompleter?.complete();
  }

  /// Resumes the [S3DownloadTask] from paused state.
  Future<void> resume() async {
    // ensure the task has actually been paused before resuming and all
    // stream listers were canceled.
    await _pausedCompleted;

    if (_state == S3TransferState.inProgress ||
        _state == S3TransferState.success ||
        _state == S3TransferState.failure) {
      return;
    }

    if (_state == S3TransferState.canceled) {
      // throws exception here as _downloadCompleter has completed by the
      // cancel
      throw S3Exception.resumeCanceledOperation();
    }

    _resetGetObjectCompleter();

    _state = S3TransferState.inProgress;

    _emitTransferProgress();

    final bytesRangeToDownload = S3DataBytesRange(
      start: _downloadedBytesSize,
      end: _totalBytes,
    );

    try {
      final getObjectOutput = await _getObject(
        bucket: _bucket,
        key: _resolvedKey,
        bytesRange: bytesRangeToDownload,
      );
      _listenToBytesSteam(getObjectOutput.body);
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
    }
  }

  /// Cancels the [S3DownloadTask], and throws a [S3Exception] to
  /// terminate.
  ///
  /// A canceled [S3DownloadTask] is not resumable.
  Future<void> cancel() async {
    if (_state == S3TransferState.canceled ||
        _state == S3TransferState.success ||
        _state == S3TransferState.failure) {
      return;
    }

    _state = S3TransferState.canceled;

    // TODO(HuiSF): when it's ready, invoke `AWSHttpOperation.cancel` here
    //  to cancel the underlying http request
    await _bytesSubscription.cancel();
    _emitTransferProgress();

    _downloadCompleter.completeError(
      S3Exception.controllableOperationCanceled(),
    );
  }

  void _emitTransferProgress() {
    _onProgress?.call(
      S3TransferProgress(
        totalBytes: _totalBytes,
        transferredBytes: _downloadedBytesSize,
        state: _state,
      ),
    );
  }

  void _resetGetObjectCompleter() {
    _getObjectCompleter = Completer();
  }

  void _resetPauseCompleter() {
    _pauseCompleter = Completer();
  }

  void _listenToBytesSteam(Stream<List<int>>? bytesStream) {
    if (bytesStream == null) {
      _completeDownloadWithError(S3Exception.unexpectedGetObjectBody());
      return;
    }

    _bytesSubscription = bytesStream.listen((bytes) {
      _downloadedBytesSize += bytes.length;
      _onData?.call(bytes);
      _emitTransferProgress();
    })
      ..onDone(() async {
        if (_downloadedBytesSize == _totalBytes) {
          _state = S3TransferState.success;
          try {
            await _onDone?.call();
            _emitTransferProgress();
            _downloadCompleter.complete(
              _downloadDataOptions.getProperties
                  ? S3Item.fromHeadObjectOutput(
                      await StorageS3Service.headObject(
                        s3client: _s3Client,
                        bucket: _bucket,
                        key: _resolvedKey,
                      ),
                      key: _key,
                    )
                  : S3Item(key: _key),
            );
          } on Exception catch (error, stackTrace) {
            await _completeDownloadWithError(error, stackTrace);
          }
        } else {
          await _completeDownloadWithError(
            S3Exception.incompleteDownload(),
          );
        }
      })
      ..onError(_completeDownloadWithError);

    // After setting up the body stream listener, we consider the task is fully
    // started, and can be paused etc.
    _getObjectCompleter?.complete();
  }

  Future<void> _completeDownloadWithError(
    Object error, [
    StackTrace? stackTrace,
  ]) async {
    _state = S3TransferState.failure;
    await _onError?.call();
    _emitTransferProgress();
    _downloadCompleter.completeError(error, stackTrace);
  }

  Future<s3.GetObjectOutput> _getObject({
    required String bucket,
    required String key,
    required S3DataBytesRange? bytesRange,
  }) async {
    final request = s3.GetObjectRequest.build((builder) {
      builder
        ..bucket = bucket
        ..key = key
        ..range = bytesRange?.headerString
        ..checksumMode = s3.ChecksumMode.enabled;
    });

    try {
      return await _s3Client.getObject(request);
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.getObject may return 403 error
      throw S3Exception.fromUnknownSmithyHttpException(error);
    } on s3.NoSuchKey catch (error) {
      // 404 error is wrapped by s3.NoSuchKey for getObject :/
      throw S3Exception.objectNotFoundByKey(error);
    }
  }
}
