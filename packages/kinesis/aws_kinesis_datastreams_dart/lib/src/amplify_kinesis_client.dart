// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams_dart/src/exception/amplify_kinesis_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/platform/record_storage_platform.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/flush_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/sdk/kinesis.dart';

/// {@template aws_kinesis_datastreams.amplify_kinesis_client}
/// Client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on VM, IndexedDB on web)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 5MB per batch)
/// - Interval-based automatic flushing
///
/// This is the Dart-only implementation. For Flutter apps, use the
/// `aws_kinesis_datastreams` package which resolves the storage path
/// automatically via `path_provider`.
///
/// ## Usage
///
/// ```dart
/// final client = AmplifyKinesisClient(
///   region: 'us-east-1',
///   credentialsProvider: myCredentialsProvider,
///   storagePath: '/path/to/app/support',
/// );
///
/// await client.record(
///   data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
///   partitionKey: 'user-123',
///   streamName: 'my-stream',
/// );
///
/// switch (await client.flush()) {
///   case Ok(:final value):
///     print('Flushed ${value.recordsFlushed} records');
///   case Error(:final error):
///     print('Flush failed: $error');
/// }
///
/// await client.close();
/// ```
/// {@endtemplate}
class AmplifyKinesisClient {
  /// {@macro aws_kinesis_datastreams.amplify_kinesis_client}
  ///
  /// [storagePath] is the directory path for the database file on IO
  /// platforms. On web, pass `null` (the path is unused; IndexedDB storage
  /// is used instead, with an in-memory fallback).
  /// The [region] is used as the database identifier to namespace
  /// the database file (e.g. `kinesis_records_us-east-1`).
  AmplifyKinesisClient({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required FutureOr<String>? storagePath,
    AmplifyKinesisClientOptions? options,
  }) : _region = region,
       _options = options ?? AmplifyKinesisClientOptions() {
    _logger = AmplifyLogging.logger('AmplifyKinesisClient');

    final storage = createPlatformRecordStorage(
      identifier: region,
      storagePath: storagePath,
      maxCacheBytes: _options.cacheMaxBytes,
    );
    _kinesisSender = KinesisSender(
      region: region,
      credentialsProvider: credentialsProvider,
    );

    late final AutoFlushScheduler scheduler;
    late final RecordClient recordClient;

    recordClient = RecordClient(
      storage: storage,
      sender: _kinesisSender,
      scheduler: scheduler = AutoFlushScheduler(
        strategy: _options.flushStrategy,
        onFlush: () => recordClient.flush(),
      ),
      maxRetries: _options.maxRetries,
      maxRecords: _options.maxRecords,
    );

    _recordClient = recordClient;
    scheduler.start();
  }

  /// Creates a client with a pre-configured [RecordClient] (for testing).
  AmplifyKinesisClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyKinesisClientOptions? options,
  }) : _region = region,
       _options = options ?? AmplifyKinesisClientOptions(),
       _recordClient = recordClient {
    _logger = AmplifyLogging.logger('AmplifyKinesisClient');
  }

  final String _region;
  final AmplifyKinesisClientOptions _options;
  late final RecordClient _recordClient;
  late final KinesisSender _kinesisSender;
  late final Logger _logger;

  /// The AWS region for this client.
  String get region => _region;

  /// The configuration options for this client.
  AmplifyKinesisClientOptions get options => _options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _recordClient.isEnabled;

  /// Whether the client has been closed.
  bool get isClosed => _recordClient.isClosed;

  /// Direct access to the underlying Kinesis SDK client.
  ///
  /// Use this for advanced operations not covered by this client's API.
  ///
  /// Note: This getter is only available when the client was created with
  /// the default constructor (not [AmplifyKinesisClient.withRecordClient]).
  KinesisClient get kinesisClient => _kinesisSender.sdkClient;

  /// Records data to be sent to a Kinesis Data Stream.
  ///
  /// The record is persisted to local storage and will be sent during
  /// the next flush operation (automatic or manual).
  ///
  /// Returns [Result.ok] on success, or [Result.error] with the appropriate
  /// [AmplifyKinesisException] subtype on failure.
  ///
  /// Returns [Result.ok] silently if the client is disabled.
  Future<Result<void>> record({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) async {
    if (!isEnabled) {
      _logger.debug('Record collection is disabled, dropping record');
      return const Result.ok(null);
    }
    _logger.verbose('Recording to stream: $streamName');
    final kinesisRecord = RecordInput.now(
      data: data,
      partitionKey: partitionKey,
      streamName: streamName,
    );
    return _wrapError(() async {
      await _recordClient.record(kinesisRecord);
    });
  }

  /// Flushes all cached records to Kinesis Data Streams.
  ///
  /// Returns [Result.ok] with [FlushData] containing the count of records
  /// successfully flushed, or [Result.error] if a storage or network error
  /// occurs.
  ///
  /// Returns [Result.ok] with zero records if the client is disabled.
  Future<Result<FlushData>> flush() async {
    if (!isEnabled) {
      _logger.debug('Flush skipped — client is disabled');
      return const Result.ok(FlushData());
    }
    _logger.verbose('Starting flush');
    return _wrapError(() => _recordClient.flush());
  }

  /// Clears all cached records from local storage.
  ///
  /// Returns [Result.ok] with [ClearCacheData] containing the count of
  /// records cleared, or [Result.error] if a storage error occurs.
  Future<Result<ClearCacheData>> clearCache() async {
    _logger.verbose('Clearing cache');
    return _wrapError(() => _recordClient.clearCache());
  }

  /// Enables the client to accept and flush records.
  void enable() {
    _logger.info('Enabling record collection and automatic flushing');
    _recordClient.enable();
  }

  /// Disables the client from accepting and flushing records.
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() {
    _logger.info('Disabling record collection and automatic flushing');
    _recordClient.disable();
  }

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    await _recordClient.close();
  }

  /// Wraps an async operation, catching any exceptions and returning them
  /// as [Result.error] with the appropriate [AmplifyKinesisException]
  /// subtype. [ClientClosedException] is rethrown directly since it
  /// represents a programmer error.
  Future<Result<T>> _wrapError<T>(Future<T> Function() operation) async {
    try {
      final value = await operation();
      return Result.ok(value);
    } on AmplifyKinesisException {
      rethrow;
    } on Object catch (e) {
      final wrapped = AmplifyKinesisException.from(e);
      _logger.warn('Operation failed: ${wrapped.message}', e);
      return Result.error(wrapped);
    }
  }
}
