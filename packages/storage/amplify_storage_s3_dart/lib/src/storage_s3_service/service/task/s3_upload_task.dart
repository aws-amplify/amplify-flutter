// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:math';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/service/task/part_size_util.dart'
    as part_size_util;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/transfer.dart'
    as transfer;
import 'package:async/async.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;
import 'package:smithy_aws/smithy_aws.dart' as smithy_aws;

/// The fallback contentType.
// https://www.iana.org/assignments/media-types/application/octet-stream
const fallbackContentType = 'application/octet-stream';

/// {@template amplify_storage_s3_dart.upload_task}
/// A task created to fulfill an upload operation.
///
/// Supports upload of a [S3DataPayload] or a [AWSFile].
///
/// When uploading a [S3DataPayload], where the size of uploaded data is
/// unknown, it uploads via [s3.S3Client.putObject].
///
/// When uploading an [AWSFile], if the size of the file is unknown or is less
/// than or equal to 5MB, it uploads via [s3.S3Client.putObject]. If the size
/// of the file is greater than 5MB, it initiates multipart upload backed by the
/// S3 service.
///
/// As background operation is not yet supported, in order to avoid incomplete
/// multipart uploads (caused by App process being killed) from occupying
/// storage space, [s3.AbortMultipartUploadRequest]s are sent for each multipart
/// upload id stored in the [transfer.TransferDatabase] to remove uploaded parts
/// upon [StorageS3Service] initiation.
/// {@endtemplate}
@internal
class S3UploadTask {
  S3UploadTask._({
    required s3.S3Client s3Client,
    required smithy_aws.S3ClientConfig defaultS3ClientConfig,
    required S3PrefixResolver prefixResolver,
    required String bucket,
    required String key,
    required S3UploadDataOptions options,
    S3DataPayload? dataPayload,
    AWSFile? localFile,
    void Function(S3TransferProgress)? onProgress,
    required AWSLogger logger,
    required transfer.TransferDatabase transferDatabase,
  })  : _s3Client = s3Client,
        _defaultS3ClientConfig = defaultS3ClientConfig,
        _prefixResolver = prefixResolver,
        _bucket = bucket,
        _key = key,
        _options = options,
        _dataPayload = dataPayload,
        _localFile = localFile,
        _onProgress = onProgress,
        _logger = logger,
        _transferDatabase = transferDatabase;

  /// Initiates an upload task for a [S3DataPayload].
  ///
  /// {@template amplify_storage_s3_dart.download_task.on_progress}
  /// [onProgress] is a function to receive [S3TransferProgress].
  /// {@endtemplate}
  S3UploadTask.fromDataPayload(
    S3DataPayload dataPayload, {
    required s3.S3Client s3Client,
    required smithy_aws.S3ClientConfig defaultS3ClientConfig,
    required S3PrefixResolver prefixResolver,
    required String bucket,
    required String key,
    required S3UploadDataOptions options,
    void Function(S3TransferProgress)? onProgress,
    required AWSLogger logger,
    required transfer.TransferDatabase transferDatabase,
  }) : this._(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: prefixResolver,
          bucket: bucket,
          key: key,
          dataPayload: dataPayload,
          options: options,
          onProgress: onProgress,
          logger: logger,
          transferDatabase: transferDatabase,
        );

  /// Initiates an upload task for a [AWSFile].
  ///
  /// {@macro amplify_storage_s3_dart.download_task.on_progress}
  S3UploadTask.fromAWSFile(
    AWSFile localFile, {
    required s3.S3Client s3Client,
    required smithy_aws.S3ClientConfig defaultS3ClientConfig,
    required S3PrefixResolver prefixResolver,
    required String bucket,
    required String key,
    required S3UploadDataOptions options,
    void Function(S3TransferProgress)? onProgress,
    required AWSLogger logger,
    required transfer.TransferDatabase transferDatabase,
  }) : this._(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: prefixResolver,
          bucket: bucket,
          key: key,
          localFile: localFile,
          options: options,
          onProgress: onProgress,
          logger: logger,
          transferDatabase: transferDatabase,
        );

  // Took reference from amplify-js
  static const _maxNumParallelTasks = 4;

  final Completer<S3Item> _uploadCompleter = Completer();

  final s3.S3Client _s3Client;
  final smithy_aws.S3ClientConfig _defaultS3ClientConfig;
  final S3PrefixResolver _prefixResolver;
  final String _bucket;
  final String _key;
  final S3UploadDataOptions _options;
  final void Function(S3TransferProgress)? _onProgress;
  final AWSLogger _logger;
  final transfer.TransferDatabase _transferDatabase;

  S3DataPayload? _dataPayload;
  AWSFile? _localFile;
  bool _isMultipartUpload = false;

  late S3TransferState _state;
  late final String _resolvedKey;

  // fields used to manage the single upload process
  smithy.SmithyOperation<s3.PutObjectOutput>? _putObjectOperation;

  // fields used to manage the multipart upload process
  bool _isAWSFileStream = false;
  late final ChunkedStreamReader<int> _fileReader;
  late final StreamController<_CompletedSubtask> _subtasksStreamController;
  late final StreamSubscription<_CompletedSubtask> _subtasksStreamSubscription;
  late final int _lastPartSize;
  late final int _optimalPartSize;
  late final String _multipartUploadId;
  late final int _expectedNumOfSubtasks;
  final _ongoingSubtasks = <int, _OngoingSubtask>{};
  final _ongoingUploadPartHttpOperations = <int, _OngoingUploadPartOperation>{};
  final _completedSubtasks = <_CompletedSubtask>[];
  int _fileSize = -1;
  int _transferredBytes = 0;
  int _currentSubTaskId = 0;
  final Completer<void> _determineUploadModeCompleter = Completer();
  Completer<void>? _uploadPartBatchingCompleter;
  Completer<void>? _abortMultipartUploadCompleter;

  FutureOr<void> get _uploadModelDetermined =>
      _determineUploadModeCompleter.future;
  FutureOr<void> get _uploadPartBatchingCompleted =>
      _uploadPartBatchingCompleter?.future;
  FutureOr<void> get _abortMultipartUploadCompleted =>
      _abortMultipartUploadCompleter?.future;

  int get _numOfOngoingSubtasks => _ongoingSubtasks.length;
  int get _numOfCompletedSubtasks => _completedSubtasks.length;

  /// The Future of the [S3UploadTask]
  Future<S3Item> get result => _uploadCompleter.future;

  /// Starts the [S3UploadTask].
  ///
  /// Should be used only internally.
  Future<void> start() async {
    try {
      await _setResolvedKey();
    } on Exception catch (error, stackTrace) {
      _completeUploadWithError(error, stackTrace);
      return;
    }

    final dataPayload = _dataPayload;
    // size is unknown when uploading a stream of bytes and we cannot
    // determine whether to use multipart upload, so use putObject
    if (dataPayload != null) {
      _fileSize = -1;
      unawaited(_startPutObject(dataPayload));
      return;
    }

    final localFile = _localFile;
    if (localFile != null) {
      try {
        _fileSize = await localFile.size;
      } on Exception catch (error, stackTrace) {
        _completeUploadWithError(error, stackTrace);
      }

      if (_fileSize > part_size_util.maxSingleObjectSize) {
        _completeUploadWithError(S3Exception.uploadSourceIsTooLarge());
        return;
      }

      if (_fileSize < part_size_util.minPartSize) {
        unawaited(
          _startPutObject(
            S3DataPayload.streaming(
              localFile.stream,
              contentType: await localFile.contentType,
            ),
          ),
        );
        return;
      }

      unawaited(_startMultipartUpload(localFile));
    }
  }

  /// Pauses the [S3UploadTask] that is in a [S3TransferState.inProgress] state.
  ///
  /// For single putObject, this doesn't take any effect.
  /// For multipart upload, this pauses scheduling next part upload
  /// but it doesn't cancel any ongoing parts upload (as AWSHttpOperation is
  /// currently not returned from S3Client APIs).
  Future<void> pause() async {
    // can pause when upload is actually started
    await _uploadModelDetermined;
    if (!_isMultipartUpload || _state != S3TransferState.inProgress) {
      return;
    }

    await _uploadPartBatchingCompleted;

    _subtasksStreamSubscription.pause();
  }

  /// Resumes the [S3UploadTask] that is in a [S3TransferState.paused] state.
  ///
  /// For single putObject, resume doesn't take any effect.
  /// For multipart upload, resume reschedules remaining subtasks.
  Future<void> resume() async {
    // can resume when upload is actually started
    await _uploadModelDetermined;
    if (!_isMultipartUpload ||
        _state == S3TransferState.inProgress ||
        _state == S3TransferState.failure ||
        _state == S3TransferState.success) {
      return;
    }
    await _uploadPartBatchingCompleted;

    _subtasksStreamSubscription.resume();
  }

  /// Cancels the [S3UploadTask].
  ///
  /// For single putObject, this cancels putObject initiated HTTP request.
  /// For multipart upload, this cancels any ongoing uploadPart initiated
  /// HTTP requests and then terminates multipart upload.
  ///
  /// NOTE: this is not working as expected as AWSHttpOperation is
  /// currently not returned from S3Client APIs
  Future<void> cancel() async {
    // can cancel when upload mode is determined
    await _uploadModelDetermined;
    if (_state == S3TransferState.canceled ||
        _state == S3TransferState.success ||
        _state == S3TransferState.failure) {
      return;
    }

    if (_isMultipartUpload) {
      await _subtasksStreamSubscription.cancel();
    } else {
      await _putObjectOperation?.cancel();
    }
  }

  Future<void> _setResolvedKey() async {
    final resolvedPrefix = await StorageS3Service.getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: _options.accessLevel,
    );

    _resolvedKey = '$resolvedPrefix$_key';
  }

  Future<void> _startPutObject(S3DataPayload body) async {
    _determineUploadModeCompleter.complete();
    _state = S3TransferState.inProgress;

    final putObjectRequest = s3.PutObjectRequest.build((builder) {
      builder
        ..bucket = _bucket
        ..body = body
        ..contentType = body.contentType ?? fallbackContentType
        ..key = _resolvedKey
        ..metadata.addAll(_options.metadata ?? const {});
    });

    try {
      _putObjectOperation = _s3Client.putObject(
        putObjectRequest,
        s3ClientConfig: _defaultS3ClientConfig.copyWith(
          useAcceleration: _options.useAccelerateEndpoint,
        ),
      );

      _putObjectOperation!.requestProgress.listen((bytesSent) {
        _transferredBytes = bytesSent;
        _emitTransferProgress();
      });

      await _putObjectOperation!.result;

      _uploadCompleter.complete(
        _options.getProperties
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

      _state = S3TransferState.success;
      _emitTransferProgress();
    } on CancellationException {
      _logger.debug('PutObject HTTP operation has been canceled.');
      _state = S3TransferState.canceled;
      _uploadCompleter
          .completeError(S3Exception.controllableOperationCanceled());
      _emitTransferProgress();
    } on smithy.UnknownSmithyHttpException catch (error, stackTrace) {
      _completeUploadWithError(
        S3Exception.fromUnknownSmithyHttpException(error),
        stackTrace,
      );
      _emitTransferProgress();
    }
  }

  Future<void> _startMultipartUpload(
    AWSFile localFile,
  ) async {
    // 1. check if can initiate multipart upload with the given file size
    // and create a multipart upload and set its id to _multipartUploadId
    try {
      _isMultipartUpload = true;
      _optimalPartSize = part_size_util.calculateOptimalPartSize(_fileSize);
      _expectedNumOfSubtasks = (_fileSize / _optimalPartSize).ceil();
      _lastPartSize =
          _fileSize - _optimalPartSize * (_fileSize / _optimalPartSize).floor();

      await _checkIfAWSFileStream(localFile);
      await _createMultiPartUpload(localFile);
    } on Exception catch (error, stackTrace) {
      _completeUploadWithError(error, stackTrace);
      return;
    }

    // 2. setup subtasks management
    _subtasksStreamController = StreamController(
      onListen: () {
        // 3. start the multipart uploading
        _state = S3TransferState.inProgress;
        unawaited(_startNextUploadPartsBatch());
        _emitTransferProgress();
        _determineUploadModeCompleter.complete();
      },
      onPause: () async {
        _state = S3TransferState.paused;
        _cancelOngoingUploadPartOperations(cancelingOnPause: true);
        _emitTransferProgress();
      },
      onResume: () async {
        unawaited(_startNextUploadPartsBatch(resumingFromPause: true));
        _state = S3TransferState.inProgress;
        _emitTransferProgress();
      },
      onCancel: () async {
        // _streamController.close triggers this callback but we don't
        // need to emit canceled state as the upload has completed
        if (_state == S3TransferState.canceled ||
            _numOfCompletedSubtasks == _expectedNumOfSubtasks) {
          return;
        }
        _cancelOngoingUploadPartOperations();
        await _terminateMultipartUploadOnError(
          S3Exception.controllableOperationCanceled(),
          isCancel: true,
        );

        _emitTransferProgress();
      },
    );

    _subtasksStreamSubscription =
        _subtasksStreamController.stream.listen((completedSubtask) {
      _completedSubtasks.add(completedSubtask);
      _transferredBytes += completedSubtask.transferredBytes;
      _emitTransferProgress();
      _ongoingSubtasks.remove(completedSubtask.partNumber);

      // close the stream if all subtasks are done
      if (_numOfCompletedSubtasks == _expectedNumOfSubtasks) {
        _subtasksStreamController.close();
        return;
      }

      // start next part upload if there are more parts to upload
      if (_state == S3TransferState.inProgress) {
        _startNextUploadPartsBatch();
      }
    })
          ..onDone(() async {
            try {
              await _completeMultipartUpload();
              _uploadCompleter.complete(
                _options.getProperties
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
              _state = S3TransferState.success;
              _emitTransferProgress();
            } on Exception catch (error, stackTrace) {
              _completeUploadWithError(error, stackTrace);
            }
          });
  }

  Future<void> _createMultiPartUpload(AWSFile localFile) async {
    final contentType = await localFile.contentType;
    final request = s3.CreateMultipartUploadRequest.build((builder) {
      builder
        ..bucket = _bucket
        ..contentType = contentType ?? fallbackContentType
        ..key = _resolvedKey
        ..metadata.addAll(_options.metadata ?? const {});
    });

    try {
      final output = await _s3Client.createMultipartUpload(request).result;
      final uploadId = output.uploadId;

      if (uploadId == null) {
        throw S3Exception.unexpectedMultipartUploadId();
      } else {
        await _transferDatabase.insertTransferRecord(
          TransferRecord(
            uploadId: uploadId,
            objectKey: _resolvedKey,
            createdAt: DateTime.now(),
          ),
        );
        _multipartUploadId = uploadId;
      }
    } on smithy.UnknownSmithyHttpException catch (error) {
      throw S3Exception.fromUnknownSmithyHttpException(error);
    }
  }

  void _emitTransferProgress() {
    _onProgress?.call(
      S3TransferProgress(
        totalBytes: _fileSize,
        transferredBytes: _transferredBytes,
        state: _state,
      ),
    );
  }

  Future<void> _completeMultipartUpload() async {
    final request = s3.CompleteMultipartUploadRequest.build((builder) {
      builder
        ..bucket = _bucket
        ..key = _resolvedKey
        ..uploadId = _multipartUploadId
        ..multipartUpload = s3.CompletedMultipartUpload(
          parts: (_completedSubtasks
                ..sort(
                  (a, b) => a.partNumber.compareTo(b.partNumber),
                ))
              .map((e) => e.completedPart)
              .toList(),
        ).toBuilder();
    });

    try {
      await _s3Client.completeMultipartUpload(request).result;
      await _transferDatabase.deleteTransferRecords(_multipartUploadId);
    } on smithy.UnknownSmithyHttpException catch (error) {
      // TODO(HuiSF): verify if s3Client sdk throws different exception type
      //  wrapping errors extracted from a 200 response.
      throw S3Exception.fromUnknownSmithyHttpException(error);
    }
  }

  Future<void> _startNextUploadPartsBatch({
    bool resumingFromPause = false,
  }) async {
    // await for previous batching to complete (if any)
    await _uploadPartBatchingCompleted;

    if (_state != S3TransferState.inProgress) {
      return;
    }

    // create a new batching Completer to start the current batching
    _uploadPartBatchingCompleter = Completer();

    // If the AWSFile is backed by a stream, and the optimal part size is
    // greater than 5MiB, upload chunks one by one.
    // Otherwise maximum 4 parts of the file can uploaded in parallel.
    final numToBatch =
        _isAWSFileStream && _optimalPartSize > part_size_util.minPartSize
            ? 1
            : min(
                _maxNumParallelTasks - _numOfOngoingSubtasks,
                _expectedNumOfSubtasks -
                    (_numOfCompletedSubtasks + _numOfOngoingSubtasks),
              );

    _state = S3TransferState.inProgress;

    if (resumingFromPause && _ongoingSubtasks.isNotEmpty) {
      // resume canceled subtask on pause if any
      for (final ongoingSubtask in _ongoingSubtasks.values) {
        // update to the latest request
        _ongoingSubtasks[ongoingSubtask.partNumber] = ongoingSubtask.copyWith(
          request: _handleUploadPart(
            partNumber: ongoingSubtask.partNumber,
            uploadPartRequest: _uploadPart(
              partBody: ongoingSubtask.partBody,
              partNumber: ongoingSubtask.partNumber,
            ),
          ),
        );
      }
    } else {
      var count = 1;
      while (count++ <= numToBatch) {
        // part number starts from 1 up to 10_000
        _currentSubTaskId += 1;
        await _startNextUploadPart(partNumber: _currentSubTaskId);
      }
    }

    // Complete current batching
    _uploadPartBatchingCompleter?.complete();
  }

  Future<void> _startNextUploadPart({
    required int partNumber,
  }) async {
    late Stream<List<int>> Function() chunkGetter;

    // If the AWSFile is backed by a stream of bytes, read chunks one by one
    // using the chunked stream reader
    if (_isAWSFileStream) {
      final chunk = await _fileReader.readChunk(_optimalPartSize);
      chunkGetter = () => Stream.value(chunk);
    }
    // otherwise allow reading parts in parallel
    else {
      chunkGetter = () => _localFile!.openRead(
            (partNumber - 1) * _optimalPartSize,
            partNumber == _expectedNumOfSubtasks
                ? _fileSize
                : partNumber * _optimalPartSize,
          );
    }

    _ongoingSubtasks[partNumber] = _OngoingSubtask(
      partBodyGetter: chunkGetter,
      partNumber: partNumber,
      request: _handleUploadPart(
        partNumber: partNumber,
        uploadPartRequest: _uploadPart(
          partBody: chunkGetter(),
          partNumber: partNumber,
        ),
      ),
    );
  }

  Future<_CompletedSubtask> _uploadPart({
    required Stream<List<int>> partBody,
    required int partNumber,
  }) async {
    final request = s3.UploadPartRequest.build((builder) {
      builder
        ..bucket = _bucket
        ..body = partBody
        ..key = _resolvedKey
        ..partNumber = partNumber
        ..uploadId = _multipartUploadId;
    });

    try {
      final operation = _s3Client.uploadPart(
        request,
        s3ClientConfig: _defaultS3ClientConfig.copyWith(
          useAcceleration: _options.useAccelerateEndpoint,
        ),
      );
      _ongoingUploadPartHttpOperations[partNumber] =
          _OngoingUploadPartOperation(
        partNumber: partNumber,
        smithyOperation: operation,
      );

      final result = await operation.result;
      _ongoingUploadPartHttpOperations.remove(partNumber);

      final eTag = result.eTag;

      if (eTag == null) {
        throw S3Exception.unexpectedETagFromService();
      }

      return _CompletedSubtask(
        partNumber: partNumber,
        transferredBytes: partNumber == _expectedNumOfSubtasks
            ? _lastPartSize
            : _optimalPartSize,
        eTag: eTag,
      );
    } on smithy.UnknownSmithyHttpException catch (error) {
      throw S3Exception.fromUnknownSmithyHttpException(error);
    } on s3.NoSuchUpload catch (error) {
      throw S3Exception.fromS3NoSuchUpload(error);
    }
  }

  Future<void> _handleUploadPart({
    required int partNumber,
    required Future<_CompletedSubtask> uploadPartRequest,
  }) async {
    try {
      final completedSubtask = await uploadPartRequest;
      _subtasksStreamController.add(completedSubtask);
    } on CancellationException {
      _logger
          .debug('Part $partNumber upload HTTP operation has been canceled.');
    } on Exception catch (error) {
      unawaited(_terminateMultipartUploadOnError(error, isCancel: false));
    }
  }

  void _cancelOngoingUploadPartOperations({
    bool cancelingOnPause = false,
  }) {
    for (final operation in _ongoingUploadPartHttpOperations.values) {
      operation.smithyOperation.cancel();
      if (!cancelingOnPause) {
        _ongoingSubtasks.remove(operation.partNumber);
      }
    }
  }

  Future<void> _terminateMultipartUploadOnError(
    Object error, {
    bool isCancel = false,
  }) async {
    // in parallel part upload failures will all invoke this function
    // use this to avoid invoking AbortMultipartUploadRequest multiple times
    await _abortMultipartUploadCompleted;
    if (_state == S3TransferState.canceled ||
        _state == S3TransferState.failure) {
      return;
    }

    _abortMultipartUploadCompleter = Completer();

    final request = s3.AbortMultipartUploadRequest.build((builder) {
      builder
        ..bucket = _bucket
        ..key = _resolvedKey
        ..uploadId = _multipartUploadId;
    });

    await _s3Client.abortMultipartUpload(request).result;

    if (isCancel) {
      _uploadCompleter.completeError(error);
    } else {
      _completeUploadWithError(
        S3Exception.multipartUploadAborted(error),
      );
    }

    _abortMultipartUploadCompleter?.complete();
  }

  void _completeUploadWithError(
    Object error, [
    StackTrace? stackTrace,
  ]) {
    _state = S3TransferState.failure;
    _emitTransferProgress();
    _uploadCompleter.completeError(error, stackTrace);
  }

  Future<void> _checkIfAWSFileStream(AWSFile file) async {
    try {
      file.openRead(0, 1);
    } on InvalidFileException {
      _isAWSFileStream = true;
      _fileReader = file.getChunkedStreamReader();
    }
  }
}

class _CompletedSubtask {
  _CompletedSubtask({
    required this.partNumber,
    required this.eTag,
    required this.transferredBytes,
  }) : completedPart = s3.CompletedPart(eTag: eTag, partNumber: partNumber);

  final int transferredBytes;
  final int partNumber;
  final String eTag;
  final s3.CompletedPart completedPart;
}

class _OngoingSubtask {
  _OngoingSubtask({
    required Stream<List<int>> Function() partBodyGetter,
    required this.partNumber,
    required this.request,
  }) : _partBodyGetter = partBodyGetter;

  final Stream<List<int>> Function() _partBodyGetter;
  final int partNumber;
  final Future<void> request;

  Stream<List<int>> get partBody => _partBodyGetter();

  _OngoingSubtask copyWith({
    int? partNumber,
    Future<void>? request,
  }) {
    return _OngoingSubtask(
      partBodyGetter: _partBodyGetter,
      partNumber: partNumber ?? this.partNumber,
      request: request ?? this.request,
    );
  }
}

class _OngoingUploadPartOperation {
  _OngoingUploadPartOperation({
    required this.partNumber,
    required this.smithyOperation,
  });

  final int partNumber;
  final smithy.SmithyOperation<s3.UploadPartOutput> smithyOperation;
}
