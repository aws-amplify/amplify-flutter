// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/exception/s3_storage_exception.dart'
    as s3_exception;
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;
import 'package:smithy_aws/smithy_aws.dart' as smithy_aws;

/// {@template amplify_storage_s3_dart.download_task}
/// A task created to fulfill a download operation.
/// {@endtemplate}
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
    required smithy_aws.S3ClientConfig defaultS3ClientConfig,
    required S3PathResolver pathResolver,
    required String bucket,
    required StoragePath path,
    required StorageDownloadDataOptions options,
    FutureOr<void> Function()? preStart,
    void Function(S3TransferProgress)? onProgress,
    void Function(List<int>)? onData,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  })  : _downloadCompleter = Completer<S3Item>(),
        _s3Client = s3Client,
        _defaultS3ClientConfig = defaultS3ClientConfig,
        _pathResolver = pathResolver,
        _bucket = bucket,
        _path = path,
        _preStart = preStart,
        _onProgress = onProgress,
        _onData = onData,
        _onDone = onDone,
        _onError = onError,
        _downloadedBytesSize = 0,
        _s3PluginOptions =
            options.pluginOptions as S3DownloadDataPluginOptions? ??
                const S3DownloadDataPluginOptions();

  // the Completer to complete the final `result` Future.
  final Completer<S3Item> _downloadCompleter;

  final s3.S3Client _s3Client;
  final smithy_aws.S3ClientConfig _defaultS3ClientConfig;
  final S3PathResolver _pathResolver;
  final String _bucket;
  final StoragePath _path;
  final FutureOr<void> Function()? _preStart;
  final void Function(S3TransferProgress)? _onProgress;
  final void Function(List<int> bytes)? _onData;
  final FutureOr<void> Function()? _onDone;
  final FutureOr<void> Function()? _onError;
  final S3DownloadDataPluginOptions _s3PluginOptions;

  int _downloadedBytesSize;

  // the subscription to `S3Client.getObject` returned stream body.
  // It gets reassigned when pause/resume.
  StreamSubscription<List<int>>? _bytesSubscription;

  // The completer to ensure `pause`, `resume` and `cancel` to be executed
  // at correct moment.
  Completer<void>? _getObjectCompleter;
  Completer<void>? _pauseCompleter;

  late StorageTransferState _state;
  late final String _resolvedPath;
  late final S3Item _downloadedS3Item;

  // Total bytes that need to be downloaded, this field is set when the
  // **very first** (without bytes range specified) `S3Client.getObject`
  // response returns, value is from the response header.
  // Before the first response returns, the value remains -1 as "unknown".
  int _totalBytes = -1;

  Future<void>? get _getObjectInitiated => _getObjectCompleter?.future;
  Future<void>? get _pausedCompleted => _pauseCompleter?.future;

  /// The result of a download task.
  Future<S3Item> get result => _downloadCompleter.future;

  /// Starts the `S3DownloadTask`.
  @internal
  Future<void> start() async {
    _resetGetObjectCompleter();

    _state = StorageTransferState.inProgress;

    if (_s3PluginOptions.useAccelerateEndpoint &&
        _defaultS3ClientConfig.usePathStyle) {
      await _completeDownloadWithError(s3_exception.accelerateEndpointUnusable);
      return;
    }

    try {
      await _preStart?.call();
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
      return;
    }

    _resolvedPath = await _pathResolver.resolvePath(path: _path);

    try {
      final getObjectOutput = await _getObject(
        bucket: _bucket,
        key: _resolvedPath,
        bytesRange: _s3PluginOptions.bytesRange,
      );

      final remoteSize = getObjectOutput.contentLength?.toInt();
      if (remoteSize == null) {
        await _completeDownloadWithError(
          const UnknownException(
            '`contentLength` property is null in GetObjectOutput.',
            recoverySuggestion:
                AmplifyExceptionMessages.missingExceptionMessage,
          ),
        );
        return;
      }

      _totalBytes = remoteSize;
      _listenToBytesSteam(getObjectOutput.body);
      _downloadedS3Item =
          S3Item.fromGetObjectOutput(getObjectOutput, path: _resolvedPath);
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
    }
  }

  /// Pauses the [S3DownloadTask].
  Future<void> pause() async {
    // ensure the task has actually started before pausing
    await _getObjectInitiated;

    if (_state != StorageTransferState.inProgress) {
      return;
    }

    _resetPauseCompleter();

    // Calling cancel of the SmithyOperation returned by getObject cannot
    // cancel the underlying HTTP request, cancel on the body stream instead.
    await _bytesSubscription?.cancel();
    _bytesSubscription = null;

    _state = StorageTransferState.paused;
    _emitTransferProgress();
    _pauseCompleter?.complete();
  }

  /// Resumes the [S3DownloadTask] from paused state.
  Future<void> resume() async {
    // ensure the task has actually been paused before resuming and all
    // stream listers were canceled.
    await _pausedCompleted;

    if (_state != StorageTransferState.paused) {
      return;
    }

    _resetGetObjectCompleter();

    _state = StorageTransferState.inProgress;

    _emitTransferProgress();

    final bytesRangeToDownload = S3DataBytesRange(
      start: _downloadedBytesSize,
      end: _totalBytes,
    );

    try {
      final getObjectOutput = await _getObject(
        bucket: _bucket,
        key: _resolvedPath,
        bytesRange: bytesRangeToDownload,
      );
      _listenToBytesSteam(getObjectOutput.body);
    } on Exception catch (error, stackTrace) {
      await _completeDownloadWithError(error, stackTrace);
    }
  }

  /// Cancels the [S3DownloadTask], and throws a
  /// [StorageOperationCanceledException] to terminate.
  ///
  /// A canceled [S3DownloadTask] is not resumable.
  Future<void> cancel() async {
    if (_state == StorageTransferState.canceled ||
        _state == StorageTransferState.success ||
        _state == StorageTransferState.failure) {
      return;
    }

    _state = StorageTransferState.canceled;

    // Calling cancel of the SmithyOperation returned by getObject cannot
    // cancel the underlying HTTP request, cancel on the body stream instead.
    await _bytesSubscription?.cancel();
    _bytesSubscription = null;

    _emitTransferProgress();
    _downloadCompleter.completeError(
      s3_exception.s3ControllableOperationCanceledException,
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
      _completeDownloadWithError(
        const UnknownException(
          '`body` is null in GetObjectOutput.',
          recoverySuggestion: AmplifyExceptionMessages.missingExceptionMessage,
        ),
      );
      return;
    }

    _bytesSubscription = bytesStream.listen((bytes) {
      _downloadedBytesSize += bytes.length;
      _onData?.call(bytes);
      _emitTransferProgress();
    })
      ..onDone(() async {
        if (_downloadedBytesSize == _totalBytes) {
          _state = StorageTransferState.success;
          try {
            await _onDone?.call();
            _emitTransferProgress();
            _downloadCompleter.complete(
              // On VM, download operation gets object metadata directly
              // from the underlying `GetObject` call.
              // On Web, download operation is done by browser download from
              // object presigned URL, where object metadata needs to be
              // retrieve via a separate `HeadObject` call.
              // To unify the behavior on `downloadOptions.getProperties`
              // we hide the metadata from the result on VM if this parameter
              // is set to `false`.
              _s3PluginOptions.getProperties
                  ? _downloadedS3Item
                  : S3Item(path: _downloadedS3Item.path),
            );
          } on Exception catch (error, stackTrace) {
            await _completeDownloadWithError(error, stackTrace);
          }
        } else {
          await _completeDownloadWithError(
            const UnknownException(
              'The download operation was completed, but only a portion of the data was downloaded.',
              recoverySuggestion:
                  AmplifyExceptionMessages.missingExceptionMessage,
            ),
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
    _state = StorageTransferState.failure;
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
      return await _s3Client
          .getObject(
            request,
            s3ClientConfig: _defaultS3ClientConfig.copyWith(
              useAcceleration: _s3PluginOptions.useAccelerateEndpoint,
            ),
          )
          .result;
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.getObject may return 403 error
      throw error.toStorageException();
    } on s3.NoSuchKey catch (error) {
      // 404 error is wrapped by s3.NoSuchKey for getObject :/
      throw error.toStorageNotFoundException();
    } on AWSHttpException catch (error) {
      throw error.toNetworkException();
    }
  }
}
