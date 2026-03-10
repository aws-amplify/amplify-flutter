// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams/aws_kinesis_datastreams.dart'
    show KinesisPartitionKeyInvalidException, KinesisRecordTooLargeException;
import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams/src/exception/amplify_kinesis_exception.dart'
    show KinesisPartitionKeyInvalidException, KinesisRecordTooLargeException;
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
/// ## Storage Path
///
/// The `storagePath` parameter is required and must point to a writable
/// directory where the SQLite database will be stored.
///
/// On Flutter (Android/iOS), use the `path_provider` package:
/// ```dart
/// import 'package:path_provider/path_provider.dart';
///
/// final dir = await getApplicationSupportDirectory();
/// final client = AmplifyKinesisClient(
///   storagePath: dir.path,
///   // ...
/// );
/// ```
///
/// On pure Dart (CLI/server), any writable path works:
/// ```dart
/// final client = AmplifyKinesisClient(
///   storagePath: '/tmp/kinesis',
///   // ...
/// );
/// ```
///
/// ## Usage
///
/// ```dart
/// final dir = await getApplicationSupportDirectory();
/// final client = AmplifyKinesisClient(
///   region: 'us-east-1',
///   credentialsProvider: myCredentialsProvider,
///   storagePath: dir.path,
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
  factory AmplifyKinesisClient({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    required String storagePath,
    AmplifyKinesisClientOptions? options,
  }) {
    final opts = options ?? AmplifyKinesisClientOptions();

    final database = KinesisRecordDatabase(storagePath);
    final storage = RecordStorage(
      database: database,
      maxCacheBytes: opts.cacheMaxBytes,
    );
    final kinesisSender = KinesisSender(
      region: region,
      credentialsProvider: credentialsProvider,
    );

    late final RecordClient recordClient;
    late final AutoFlushScheduler scheduler;

    scheduler = AutoFlushScheduler(
      strategy: opts.flushStrategy,
      onFlush: () => recordClient.flush(),
      logger: opts.logger,
    );

    recordClient = RecordClient(
      storage: storage,
      sender: kinesisSender,
      scheduler: scheduler,
      maxRetries: opts.maxRetries,
      maxRecords: opts.maxRecords,
    );

    scheduler.start();

    return AmplifyKinesisClient._(
      region: region,
      options: opts,
      recordClient: recordClient,
      kinesisSender: kinesisSender,
    );
  }

  /// Creates a client with a pre-configured [RecordClient] (for testing).
  AmplifyKinesisClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyKinesisClientOptions? options,
  }) : _region = region,
       _options = options ?? AmplifyKinesisClientOptions(),
       _recordClient = recordClient,
       _kinesisSender = null;

  AmplifyKinesisClient._({
    required String region,
    required AmplifyKinesisClientOptions options,
    required RecordClient recordClient,
    required KinesisSender kinesisSender,
  }) : _region = region,
       _options = options,
       _recordClient = recordClient,
       _kinesisSender = kinesisSender;

  final String _region;
  final AmplifyKinesisClientOptions _options;
  final RecordClient _recordClient;
  final KinesisSender? _kinesisSender;

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
  KinesisClient get kinesisClient => _kinesisSender!.sdkClient;

  /// Records data to be sent to a Kinesis Data Stream.
  ///
  /// The record is persisted to local storage and will be sent during
  /// the next flush operation (automatic or manual).
  ///
  /// Returns [Result.ok] on success, or [Result.error] if the local cache
  /// is full or a storage error occurs.
  ///
  /// Throws [KinesisPartitionKeyInvalidException] or
  /// [KinesisRecordTooLargeException] for invalid input (programmer errors).
  /// Records are silently accepted (returning [Result.ok]) if the client
  /// is disabled.
  Future<Result<void>> record({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) async {
    final kinesisRecord = KinesisRecord.now(
      data: data,
      partitionKey: partitionKey,
      streamName: streamName,
    );
    return _recordClient.record(kinesisRecord);
  }

  /// Flushes all cached records to Kinesis Data Streams.
  ///
  /// Returns [Result.ok] with [FlushData] containing the count of records
  /// successfully flushed, or [Result.error] if a storage or network error
  /// occurs.
  ///
  /// Returns [Result.ok] with zero records if the client is disabled.
  Future<Result<FlushData>> flush() async {
    return _recordClient.flush();
  }

  /// Clears all cached records from local storage.
  ///
  /// Returns [Result.ok] with [ClearCacheData] containing the count of
  /// records cleared, or [Result.error] if a storage error occurs.
  Future<Result<ClearCacheData>> clearCache() async {
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

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    await _recordClient.close();
  }
}
