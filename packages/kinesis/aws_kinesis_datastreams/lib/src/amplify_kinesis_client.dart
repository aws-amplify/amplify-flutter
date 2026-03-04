// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams/src/exception/amplify_kinesis_exception.dart'
    show KinesisLimitExceededException;
import 'package:aws_kinesis_datastreams/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_storage.dart';
import 'package:aws_kinesis_datastreams/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams/src/model/flush_data.dart';
import 'package:aws_kinesis_datastreams/src/sdk/kinesis.dart';

/// {@template aws_kinesis_datastreams.amplify_kinesis_client}
/// Client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// Provides offline-capable data streaming with:
/// - Local SQLite persistence for offline support
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 5MB per batch)
/// - Interval-based automatic flushing
///
/// ## Usage
///
/// ```dart
/// final client = AmplifyKinesisClient(
///   region: 'us-east-1',
///   credentialsProvider: myCredentialsProvider,
/// );
///
/// await client.record(
///   data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
///   partitionKey: 'user-123',
///   streamName: 'my-stream',
/// );
///
/// final flushResult = await client.flush();
/// print('Flushed ${flushResult.recordsFlushed} records');
///
/// await client.close();
/// ```
/// {@endtemplate}
class AmplifyKinesisClient {
  /// {@macro aws_kinesis_datastreams.amplify_kinesis_client}
  AmplifyKinesisClient({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AmplifyKinesisClientOptions? options,
    String? storagePath,
  }) : this._internal(
          region: region,
          credentialsProvider: credentialsProvider,
          options: options ?? AmplifyKinesisClientOptions(),
          storagePath: storagePath ?? 'kinesis_data_streams',
        );

  AmplifyKinesisClient._internal({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required AmplifyKinesisClientOptions options,
    required String storagePath,
  })  : _region = region,
        _options = options {
    final database = KinesisRecordDatabase(storagePath);
    final storage = RecordStorage(
      database: database,
      maxCacheBytes: options.cacheMaxBytes,
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
        strategy: options.flushStrategy,
        onFlush: () => recordClient.flush(),
      ),
      maxRetries: options.maxRetries,
      maxRecords: options.maxRecords,
    );

    _recordClient = recordClient;
    scheduler.start();
  }

  /// Creates a client with a pre-configured [RecordClient] (for testing).
  AmplifyKinesisClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyKinesisClientOptions? options,
  })  : _region = region,
        _options = options ?? AmplifyKinesisClientOptions(),
        _recordClient = recordClient;

  final String _region;
  final AmplifyKinesisClientOptions _options;
  late final RecordClient _recordClient;
  late final KinesisSender _kinesisSender;

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
  /// the default constructor (not [withRecordClient]).
  KinesisClient get kinesisClient => _kinesisSender.sdkClient;

  /// Records data to be sent to a Kinesis Data Stream.
  ///
  /// The record is persisted to local storage and will be sent during
  /// the next flush operation (automatic or manual).
  ///
  /// Throws [KinesisLimitExceededException] if the local cache is full.
  /// Records are silently ignored if the client is disabled.
  Future<void> record({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) async {
    final kinesisRecord = KinesisRecord.now(
      data: data,
      partitionKey: partitionKey,
      streamName: streamName,
    );
    await _recordClient.record(kinesisRecord);
  }

  /// Flushes all cached records to Kinesis Data Streams.
  ///
  /// Returns [FlushData] with the count of records successfully flushed.
  ///
  /// Does nothing if the client is disabled.
  Future<FlushData> flush() async {
    return _recordClient.flush();
  }

  /// Clears all cached records from local storage.
  ///
  /// Returns [ClearCacheData] with the count of records cleared.
  Future<ClearCacheData> clearCache() async {
    return _recordClient.clearCache();
  }

  /// Enables the client to accept and flush records.
  void enable() {
    _recordClient.enable();
  }

  /// Disables the client from accepting and flushing records.
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() {
    _recordClient.disable();
  }

  /// Enables automatic flush operations.
  void enableAutoFlush() {
    _recordClient.enableAutoFlush();
  }

  /// Disables automatic flush operations.
  void disableAutoFlush() {
    _recordClient.disableAutoFlush();
  }

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    await _recordClient.close();
  }
}

// ---------------------------------------------------------------------------
// Deprecated alias for backward compatibility
// ---------------------------------------------------------------------------

/// Deprecated: Use [AmplifyKinesisClient] instead.
@Deprecated('Use AmplifyKinesisClient instead')
typedef KinesisDataStreams = AmplifyKinesisClient;
