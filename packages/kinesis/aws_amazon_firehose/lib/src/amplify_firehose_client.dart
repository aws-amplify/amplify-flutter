// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_amazon_firehose/src/amazon_data_firehose_options.dart';
import 'package:aws_amazon_firehose/src/db/firehose_record_database.dart';
import 'package:aws_amazon_firehose/src/impl/auto_flush_scheduler.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_record.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_sender.dart';
import 'package:aws_amazon_firehose/src/impl/record_client.dart';
import 'package:aws_amazon_firehose/src/impl/record_storage.dart';
import 'package:aws_amazon_firehose/src/model/clear_cache_data.dart';
import 'package:aws_amazon_firehose/src/model/flush_data.dart';
import 'package:aws_amazon_firehose/src/sdk/firehose.dart';

/// {@template aws_amazon_firehose.amplify_firehose_client}
/// Client for recording and streaming data to Amazon Data Firehose.
///
/// Provides offline-capable data streaming with:
/// - Local SQLite persistence for offline support
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 4MB per batch)
/// - Interval-based automatic flushing
///
/// ## Usage
///
/// ```dart
/// final client = AmplifyFirehoseClient(
///   region: 'us-east-1',
///   credentialsProvider: myCredentialsProvider,
/// );
///
/// await client.record(
///   data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
///   deliveryStreamName: 'my-delivery-stream',
/// );
///
/// final flushResult = await client.flush();
/// print('Flushed ${flushResult.recordsFlushed} records');
///
/// await client.close();
/// ```
/// {@endtemplate}
class AmplifyFirehoseClient {
  /// {@macro aws_amazon_firehose.amplify_firehose_client}
  AmplifyFirehoseClient({
    required String region,
    required AWSCredentialsProvider<AWSCredentials> credentialsProvider,
    AmplifyFirehoseClientOptions options = const AmplifyFirehoseClientOptions(),
    String? storagePath,
  }) : this._internal(
          region: region,
          credentialsProvider: credentialsProvider,
          options: options,
          storagePath: storagePath ?? 'amazon_data_firehose',
        );

  AmplifyFirehoseClient._internal({
    required String region,
    required AWSCredentialsProvider<AWSCredentials> credentialsProvider,
    required AmplifyFirehoseClientOptions options,
    required String storagePath,
  })  : _region = region,
        _options = options {
    final database = FirehoseRecordDatabase(storagePath);
    final storage = RecordStorage(
      database: database,
      maxCacheBytes: options.cacheMaxBytes,
    );
    _firehoseSender = FirehoseSender(
      region: region,
      credentialsProvider: credentialsProvider,
    );

    late final AutoFlushScheduler scheduler;
    late final RecordClient recordClient;

    recordClient = RecordClient(
      storage: storage,
      sender: _firehoseSender,
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
  AmplifyFirehoseClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyFirehoseClientOptions options = const AmplifyFirehoseClientOptions(),
  })  : _region = region,
        _options = options,
        _recordClient = recordClient;

  final String _region;
  final AmplifyFirehoseClientOptions _options;
  late final RecordClient _recordClient;
  late final FirehoseSender _firehoseSender;

  /// The AWS region for this client.
  String get region => _region;

  /// The configuration options for this client.
  AmplifyFirehoseClientOptions get options => _options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _recordClient.isEnabled;

  /// Whether the client has been closed.
  bool get isClosed => _recordClient.isClosed;

  /// Direct access to the underlying Firehose SDK client.
  ///
  /// Use this for advanced operations not covered by this client's API.
  ///
  /// Note: This getter is only available when the client was created with
  /// the default constructor (not [withRecordClient]).
  FirehoseClient get firehoseClient => _firehoseSender.sdkClient;

  /// Records data to be sent to a Firehose delivery stream.
  ///
  /// The record is persisted to local storage and will be sent during
  /// the next flush operation (automatic or manual).
  ///
  /// Throws [FirehoseLimitExceededException] if the local cache is full.
  /// Records are silently ignored if the client is disabled.
  Future<void> record({
    required Uint8List data,
    required String deliveryStreamName,
  }) async {
    final firehoseRecord = FirehoseDataRecord(
      data: data,
      streamName: deliveryStreamName,
    );
    await _recordClient.record(firehoseRecord);
  }

  /// Flushes all cached records to Amazon Data Firehose.
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

/// Deprecated: Use [AmplifyFirehoseClient] instead.
@Deprecated('Use AmplifyFirehoseClient instead')
typedef AmazonDataFirehose = AmplifyFirehoseClient;
