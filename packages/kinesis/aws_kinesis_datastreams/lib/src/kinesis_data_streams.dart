// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_storage.dart';
import 'package:aws_kinesis_datastreams/src/kinesis_data_streams_options.dart';

/// {@template aws_kinesis_datastreams.kinesis_data_streams}
/// The main client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// This client provides offline-capable data streaming with:
/// - Local SQLite persistence for offline support
/// - Automatic retry mechanisms for failed records
/// - Configurable batching strategies (500 records or 5MB per batch)
/// - Interval-based automatic flushing
///
/// ## Basic Usage
///
/// ```dart
/// import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart';
///
/// final client = KinesisDataStreams(
///   region: 'us-east-1',
///   credentialsProvider: AWSCredentialsProvider(
///     AWSCredentials('accessKeyId', 'secretAccessKey'),
///   ),
/// );
///
/// // Record data
/// await client.record(
///   data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
///   partitionKey: 'user-123',
///   streamName: 'my-stream',
/// );
///
/// // Flush and close when done
/// await client.flush();
/// await client.close();
/// ```
///
/// ## Security Considerations
///
/// **Unencrypted Storage**: Records are stored in an unencrypted SQLite
/// database on the device. Do not store sensitive data (PII, credentials,
/// etc.) without additional encryption.
///
/// **Credential Handling**: Credentials are resolved on-demand before each
/// API request and are never persisted to disk or logged.
///
/// ## Lifecycle
///
/// 1. Create the client with [KinesisDataStreams.new]
/// 2. Record data with [record]
/// 3. Data is automatically flushed at intervals, or manually with [flush]
/// 4. Close the client with [close] when done
///
/// The client cannot be reused after calling [close].
/// {@endtemplate}
class KinesisDataStreams {
  /// {@macro aws_kinesis_datastreams.kinesis_data_streams}
  ///
  /// Creates a new KinesisDataStreams client.
  ///
  /// - [region]: The AWS region where the Kinesis streams are located.
  /// - [credentialsProvider]: Provider for AWS credentials used to authenticate requests.
  /// - [options]: Optional configuration for cache size, retries, and flush strategy.
  /// - [storagePath]: Optional path for the SQLite database. Defaults to the application's
  ///   documents directory.
  KinesisDataStreams({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    KinesisDataStreamsOptions options = const KinesisDataStreamsOptions(),
    String? storagePath,
  }) : this._internal(
          region: region,
          credentialsProvider: credentialsProvider,
          options: options,
          storagePath: storagePath ?? 'kinesis_data_streams',
        );

  KinesisDataStreams._internal({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required KinesisDataStreamsOptions options,
    required String storagePath,
  })  : _region = region,
        _options = options {
    final database = KinesisRecordDatabase(storagePath);
    final storage = RecordStorage(
      database: database,
      maxCacheBytes: options.cacheMaxBytes,
    );
    final sender = KinesisSender(
      region: region,
      credentialsProvider: credentialsProvider,
    );

    late final AutoFlushScheduler scheduler;
    late final RecordClient recordClient;

    recordClient = RecordClient(
      storage: storage,
      sender: sender,
      scheduler: scheduler = AutoFlushScheduler(
        strategy: options.flushStrategy,
        onFlush: () => recordClient.flush(),
      ),
      maxRetries: options.maxRetries,
    );

    _recordClient = recordClient;
    scheduler.start();
  }

  /// Creates a KinesisDataStreams client with a pre-configured RecordClient.
  ///
  /// This constructor is intended for testing purposes.
  KinesisDataStreams.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    KinesisDataStreamsOptions options = const KinesisDataStreamsOptions(),
  })  : _region = region,
        _options = options,
        _recordClient = recordClient;

  final String _region;
  final KinesisDataStreamsOptions _options;
  late final RecordClient _recordClient;

  /// The AWS region for this client.
  String get region => _region;

  /// The configuration options for this client.
  KinesisDataStreamsOptions get options => _options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _recordClient.isEnabled;

  /// Whether the client has been closed.
  bool get isClosed => _recordClient.isClosed;

  /// Records data to be sent to a Kinesis Data Stream.
  ///
  /// The record is persisted to local storage and will be sent to Kinesis
  /// during the next flush operation (automatic or manual).
  ///
  /// - [data]: The data blob to send to Kinesis.
  /// - [partitionKey]: The partition key used to determine which shard receives the record.
  /// - [streamName]: The name of the Kinesis Data Stream.
  ///
  /// Throws `CacheFullException` if the local cache is full.
  /// Records are silently ignored if the client is disabled.
  Future<void> record({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) async {
    final kinesisRecord = KinesisRecord(
      data: data,
      partitionKey: partitionKey,
      streamName: streamName,
    );
    await _recordClient.record(kinesisRecord);
  }

  /// Flushes all cached records to Kinesis Data Streams.
  ///
  /// Records are batched by stream name and sent in batches respecting
  /// Kinesis limits (500 records, 5MB per batch).
  ///
  /// Successful records are removed from the cache.
  /// Failed records with retryable errors are retained for the next flush.
  /// Records exceeding the maximum retry count are removed.
  ///
  /// Does nothing if the client is disabled.
  Future<void> flush() async {
    await _recordClient.flush();
  }

  /// Clears all cached records from local storage.
  ///
  /// This permanently removes all pending records that have not been
  /// sent to Kinesis.
  Future<void> clearCache() async {
    await _recordClient.clearCache();
  }

  /// Enables the client to accept and flush records.
  ///
  /// When enabled:
  /// - New records will be accepted and persisted
  /// - Automatic flush operations will resume
  /// - Manual flush operations will send records
  void enable() {
    _recordClient.enable();
  }

  /// Disables the client from accepting and flushing records.
  ///
  /// When disabled:
  /// - New records will be silently ignored
  /// - Automatic flush operations will be skipped
  /// - Manual flush operations will do nothing
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() {
    _recordClient.disable();
  }

  /// Closes the client and releases all resources.
  ///
  /// After closing:
  /// - No new records can be recorded
  /// - No flush operations will occur
  /// - The database connection is closed
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    await _recordClient.close();
  }
}
