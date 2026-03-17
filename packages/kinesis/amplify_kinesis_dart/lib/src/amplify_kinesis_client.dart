// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show packageVersion;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    hide packageVersion;
import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
import 'package:amplify_kinesis_dart/src/amplify_kinesis_client_options.dart';
import 'package:amplify_kinesis_dart/src/exception/amplify_kinesis_exception.dart';
import 'package:amplify_kinesis_dart/src/flush_strategy/flush_strategy.dart';
import 'package:amplify_kinesis_dart/src/impl/auto_flush_scheduler.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_sender.dart';
import 'package:amplify_kinesis_dart/src/impl/record_client.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/platform/record_storage_platform.dart';
import 'package:amplify_kinesis_dart/src/model/clear_cache_data.dart';
import 'package:amplify_kinesis_dart/src/model/flush_data.dart';
import 'package:amplify_kinesis_dart/src/model/record_data.dart';
import 'package:amplify_kinesis_dart/src/sdk/kinesis.dart';
import 'package:amplify_kinesis_dart/src/version.dart';
import 'package:smithy/smithy.dart' show WithUserAgent;

/// User agent component identifying this library.
const _userAgentComponent =
    'md/amplify-kinesis#$packageVersion lib/amplify-flutter#${foundation.packageVersion}';

/// {@template amplify_kinesis.amplify_kinesis_client}
/// Client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on VM, IndexedDB on web)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 5MB per batch)
/// - Interval-based automatic flushing
///
/// This is the Dart-only implementation. For Flutter apps, use the
/// `amplify_kinesis` package which resolves the storage path
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

  /// {@macro amplify_kinesis.amplify_kinesis_client}
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
      FlushInterval(:final interval) => AutoFlushScheduler(
        interval: interval,
        client: recordClient,
      )..start(),
      FlushNone() => null,
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
  /// Returns [Result.ok] with [RecordData] on success, or [Result.error] with:
  /// - [KinesisValidationException] for invalid input (e.g. oversized record,
  ///   empty or too-long partition key)
  /// - [KinesisLimitExceededException] if the cache is full
  /// - [KinesisStorageException] for database errors
  ///
  /// Returns [Result.ok] silently if the client is disabled.
  Future<Result<RecordData>> record({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) async {
    if (_closed) return const Result.error(ClientClosedException());
    if (!isEnabled) {
      _logger.debug('Record collection is disabled, dropping record');
      return const Result.ok(RecordData());
    }
    _logger.verbose('Recording to stream: $streamName');
    final kinesisRecord = RecordInput.now(
      data: data,
      partitionKey: partitionKey,
      streamName: streamName,
    );
    return _wrapError(() => _recordClient.record(kinesisRecord));
  }

  /// Flushes cached records to their respective Kinesis streams.
  ///
  /// Each invocation sends at most one batch per stream, limited by the Kinesis
  /// `PutRecords` constraints (up to 500 records or 5 MB per stream). If the
  /// cache contains more records than a single batch can hold, the remaining
  /// records are sent on subsequent flush invocations — either manually or via
  /// the auto-flush scheduler.
  ///
  /// Records that fail within a batch are marked for retry on the next flush.
  /// Records that exceed [AmplifyKinesisClientOptions.maxRetries] are removed
  /// from the cache.
  ///
  /// SDK Kinesis errors (throttling, invalid stream, etc.) are logged and
  /// skipped so other streams can still flush. Non-SDK errors (e.g. network,
  /// storage) abort the flush and are returned as [Result.error].
  ///
  /// If a flush is already in progress, the call returns immediately with
  /// `FlushData(recordsFlushed: 0, flushInProgress: true)`.
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
  /// records cleared, or [Result.error] with:
  /// - [KinesisStorageException] for database errors
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

  /// Disables record collection and automatic flushing.
  ///
  /// Records submitted while disabled are silently dropped. Already-cached
  /// records remain in storage and will be sent on the next flush after
  /// re-enabling.
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
