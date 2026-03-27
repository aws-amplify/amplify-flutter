// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_firehose_dart/src/amplify_firehose_client_options.dart';
import 'package:amplify_firehose_dart/src/exception/amplify_firehose_exception.dart';
import 'package:amplify_firehose_dart/src/firehose_limits.dart' as limits;
import 'package:amplify_firehose_dart/src/impl/firehose_sender.dart';
import 'package:amplify_firehose_dart/src/sdk/firehose.dart' as sdk;
import 'package:amplify_firehose_dart/src/version.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show packageVersion;
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    hide packageVersion;
import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:smithy/smithy.dart' show WithUserAgent;

/// User agent component identifying this library.
const _userAgentComponent =
    'md/amplify-firehose#$packageVersion '
    'lib/amplify-flutter#${foundation.packageVersion}';

/// {@template amplify_firehose.amplify_firehose_client}
/// Client for recording and streaming data to Amazon Data Firehose.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on VM, IndexedDB on web)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 4 MB per batch)
/// - Interval-based automatic flushing
///
/// This is the Dart-only implementation. For Flutter apps, use the
/// `amplify_firehose` package which resolves the storage path
/// automatically via `path_provider`.
/// {@endtemplate}
class AmplifyFirehoseClient {
  AmplifyFirehoseClient._({
    required String region,
    required AmplifyFirehoseClientOptions options,
    required RecordClient recordClient,
    required sdk.FirehoseClient firehoseClient,
    AutoFlushScheduler? scheduler,
  }) : _region = region,
       _options = options,
       _recordClient = recordClient,
       _firehoseClient = firehoseClient,
       _scheduler = scheduler,
       _logger = AmplifyLogging.logger('AmplifyFirehoseClient');

  /// Creates a client with a pre-configured [RecordClient] (for testing).
  AmplifyFirehoseClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyFirehoseClientOptions? options,
  }) : _region = region,
       _options = options ?? const AmplifyFirehoseClientOptions(),
       _recordClient = recordClient,
       _firehoseClient = null,
       _scheduler = null,
       _logger = AmplifyLogging.logger('AmplifyFirehoseClient');

  /// {@macro amplify_firehose.amplify_firehose_client}
  static Future<AmplifyFirehoseClient> create({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required FutureOr<String>? storagePath,
    AmplifyFirehoseClientOptions? options,
  }) async {
    final opts = options ?? const AmplifyFirehoseClientOptions();

    final storage = await createPlatformRecordStorage(
      identifier: region,
      storagePath: storagePath,
      maxCacheBytes: opts.cacheMaxBytes,
      maxRecordsPerBatch: limits.maxRecordsPerBatch,
      maxBytesPerBatch: limits.maxBatchSizeBytes,
      maxRecordSizeBytes: limits.maxRecordSizeBytes,
      dbPrefix: 'firehose_records',
      storeName: 'firehose_records',
    );

    final firehoseClient = sdk.FirehoseClient(
      region: region,
      credentialsProvider: SmithyCredentialsProviderBridge(credentialsProvider),
      requestInterceptors: [const WithUserAgent(_userAgentComponent)],
    );

    final recordClient = RecordClient(
      storage: storage,
      sender: FirehoseSender(
        firehoseClient: firehoseClient,
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

    return AmplifyFirehoseClient._(
      region: region,
      options: opts,
      recordClient: recordClient,
      firehoseClient: firehoseClient,
      scheduler: scheduler,
    );
  }

  final String _region;
  final AmplifyFirehoseClientOptions _options;
  final RecordClient _recordClient;
  final sdk.FirehoseClient? _firehoseClient;
  final Logger _logger;
  final AutoFlushScheduler? _scheduler;
  bool _enabled = true;
  bool _closed = false;

  /// The AWS region for this client.
  String get region => _region;

  /// The configuration options for this client.
  AmplifyFirehoseClientOptions get options => _options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Direct access to the underlying Firehose SDK client.
  sdk.FirehoseClient get firehoseClient {
    final client = _firehoseClient;
    if (client == null) {
      throw StateError(
        'firehoseClient is not available on clients created with '
        'withRecordClient.',
      );
    }
    return client;
  }

  /// Records data to be sent to a Firehose delivery stream.
  ///
  /// Returns [Result.ok] with [RecordData] on success, or [Result.error] with:
  /// - [FirehoseValidationException] for invalid input (e.g. oversized record)
  /// - [FirehoseLimitExceededException] if the cache is full
  /// - [FirehoseStorageException] for database errors
  Future<Result<RecordData>> record({
    required Uint8List data,
    required String streamName,
  }) async {
    if (_closed) return const Result.error(FirehoseClientClosedException());
    if (!isEnabled) {
      _logger.debug('Record collection is disabled, dropping record');
      return const Result.ok(RecordData());
    }
    _logger.verbose('Recording to stream: $streamName');
    final input = RecordInput.now(
      data: data,
      streamName: streamName,
      dataSize: data.length,
    );
    return _wrapError(() => _recordClient.record(input));
  }

  /// Flushes cached records to their respective Firehose streams.
  Future<Result<FlushData>> flush() async {
    if (_closed) return const Result.error(FirehoseClientClosedException());
    _logger.verbose('Starting flush');
    return _wrapError(_recordClient.flush);
  }

  /// Clears all cached records from local storage.
  Future<Result<ClearCacheData>> clearCache() async {
    if (_closed) return const Result.error(FirehoseClientClosedException());
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
  void disable() {
    _logger.info('Disabling record collection and automatic flushing');
    _enabled = false;
    _scheduler?.stop();
  }

  /// Closes the client and releases all resources.
  Future<void> close() async {
    _closed = true;
    _scheduler?.stop();
    await _recordClient.close();
  }

  Future<Result<T>> _wrapError<T>(Future<T> Function() operation) async {
    try {
      final value = await operation();
      return Result.ok(value);
    } on Object catch (e) {
      final wrapped = AmplifyFirehoseException.from(e);
      _logger.warn('Operation failed: ${wrapped.message}', e);
      return Result.error(wrapped);
    }
  }
}
