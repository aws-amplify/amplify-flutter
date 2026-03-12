// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
import 'package:aws_kinesis_datastreams_dart/src/exception/amplify_kinesis_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/platform/record_storage_platform.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/flush_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/sdk/kinesis.dart';
import 'package:aws_kinesis_datastreams_dart/src/version.dart';
import 'package:smithy/smithy.dart' show WithUserAgent;

/// User agent component identifying this library.
const _userAgentComponent =
    'md/amplify-kinesis#$packageVersion lib/amplify-flutter#$packageVersion';

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
/// final client = await AmplifyKinesisClient.create(
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
  /// Private constructor — use [create] or
  /// [AmplifyKinesisClient.withRecordClient] instead.
  AmplifyKinesisClient._({
    required String region,
    required AmplifyKinesisClientOptions options,
    required RecordClient recordClient,
    required KinesisClient kinesisClient,
    AutoFlushScheduler? scheduler,
  }) : _region = region,
       _options = options,
       _recordClient = recordClient,
       _kinesisClient = kinesisClient,
       _scheduler = scheduler,
       _logger = AmplifyLogging.logger('AmplifyKinesisClient');

  /// Creates a client with a pre-configured [RecordClient] (for testing).
  AmplifyKinesisClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyKinesisClientOptions? options,
  }) : _region = region,
       _options = options ?? const AmplifyKinesisClientOptions(),
       _recordClient = recordClient,
       _kinesisClient = null,
       _scheduler = null,
       _logger = AmplifyLogging.logger('AmplifyKinesisClient');

  /// {@macro aws_kinesis_datastreams.amplify_kinesis_client}
  ///
  /// [storagePath] is the directory path for the database file on IO
  /// platforms. On web, pass `null` (the path is unused; IndexedDB storage
  /// is used instead, with an in-memory fallback).
  /// The [region] is used as the database identifier to namespace
  /// the database file (e.g. `kinesis_records_us-east-1`).
  static Future<AmplifyKinesisClient> create({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required FutureOr<String>? storagePath,
    AmplifyKinesisClientOptions? options,
  }) async {
    final opts = options ?? const AmplifyKinesisClientOptions();

    final storage = await createPlatformRecordStorage(
      identifier: region,
      storagePath: storagePath,
      maxCacheBytes: opts.cacheMaxBytes,
    );

    final kinesisClient = KinesisClient(
      region: region,
      credentialsProvider: SmithyCredentialsProviderBridge(credentialsProvider),
      requestInterceptors: [const WithUserAgent(_userAgentComponent)],
    );

    final recordClient = RecordClient(
      storage: storage,
      sender: KinesisSender(
        kinesisClient: kinesisClient,
        maxRetries: opts.maxRetries,
      ),
      maxRetries: opts.maxRetries,
    );

    final scheduler = switch (opts.flushStrategy) {
      KinesisDataStreamsInterval(:final interval) => AutoFlushScheduler(
        interval: interval,
        client: recordClient,
      )..start(),
      KinesisDataStreamsNone() => null,
    };

    return AmplifyKinesisClient._(
      region: region,
      options: opts,
      recordClient: recordClient,
      kinesisClient: kinesisClient,
      scheduler: scheduler,
    );
  }

  final String _region;
  final AmplifyKinesisClientOptions _options;
  final RecordClient _recordClient;
  final KinesisClient? _kinesisClient;
  final Logger _logger;
  final AutoFlushScheduler? _scheduler;
  bool _enabled = true;
  bool _closed = false;

  /// The AWS region for this client.
  String get region => _region;

  /// The configuration options for this client.
  AmplifyKinesisClientOptions get options => _options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Direct access to the underlying Kinesis SDK client.
  ///
  /// Use this for advanced operations not covered by this client's API.
  ///
  /// Note: This getter is only available when the client was created with
  /// [create] (not [AmplifyKinesisClient.withRecordClient]).
  KinesisClient get kinesisClient {
    final client = _kinesisClient;
    if (client == null) {
      throw StateError(
        'kinesisClient is not available on clients created with '
        'withRecordClient.',
      );
    }
    return client;
  }

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
    if (_closed) return const Result.error(ClientClosedException());
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
  /// Manual flushes are allowed even when the client is disabled, so that
  /// callers can drain cached records without re-enabling collection.
  /// Only the automatic flush scheduler is paused when disabled.
  Future<Result<FlushData>> flush() async {
    if (_closed) return const Result.error(ClientClosedException());
    _logger.verbose('Starting flush');
    return _wrapError(_recordClient.flush);
  }

  /// Clears all cached records from local storage.
  ///
  /// Returns [Result.ok] with [ClearCacheData] containing the count of
  /// records cleared, or [Result.error] if a storage error occurs.
  Future<Result<ClearCacheData>> clearCache() async {
    if (_closed) return const Result.error(ClientClosedException());
    _logger.verbose('Clearing cache');
    return _wrapError(_recordClient.clearCache);
  }

  /// Enables the client to accept and flush records.
  void enable() {
    _logger.info('Enabling record collection and automatic flushing');
    _enabled = true;
    _scheduler?.start();
  }

  /// Disables the client from accepting and flushing records.
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() {
    _logger.info('Disabling record collection and automatic flushing');
    _enabled = false;
    _scheduler?.stop();
  }

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    _closed = true;
    _scheduler?.stop();
    await _recordClient.close();
  }

  /// Wraps an async operation, catching any exceptions and returning them
  /// as [Result.error] with the appropriate [AmplifyKinesisException]
  /// subtype.
  Future<Result<T>> _wrapError<T>(Future<T> Function() operation) async {
    try {
      final value = await operation();
      return Result.ok(value);
    } on Object catch (e) {
      final wrapped = AmplifyKinesisException.from(e);
      _logger.warn('Operation failed: ${wrapped.message}', e);
      return Result.error(wrapped);
    }
  }
}
