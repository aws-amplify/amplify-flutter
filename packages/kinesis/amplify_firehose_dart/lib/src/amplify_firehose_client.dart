// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_firehose_dart/src/amazon_data_firehose_options.dart';
import 'package:amplify_firehose_dart/src/impl/auto_flush_scheduler.dart';
import 'package:amplify_firehose_dart/src/impl/firehose_record.dart';
import 'package:amplify_firehose_dart/src/impl/firehose_sender.dart';
import 'package:amplify_firehose_dart/src/impl/record_client.dart';
import 'package:amplify_firehose_dart/src/impl/storage/platform/record_storage_platform.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage.dart';
import 'package:amplify_firehose_dart/src/model/clear_cache_data.dart';
import 'package:amplify_firehose_dart/src/model/flush_data.dart';
import 'package:amplify_firehose_dart/src/sdk/firehose.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_firehose_dart.amplify_firehose_client}
/// Client for recording and streaming data to Amazon Data Firehose.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on VM, IndexedDB on web)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 4MB per batch)
/// - Interval-based automatic flushing
///
/// ## Usage
///
/// ```dart
/// final client = await AmplifyFirehoseClient.create(
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
  AmplifyFirehoseClient._({
    required String region,
    required AmplifyFirehoseClientOptions options,
    required RecordClient recordClient,
    required AutoFlushScheduler scheduler,
    FirehoseSender? firehoseSender,
  })  : _region = region,
        _options = options,
        _recordClient = recordClient,
        _scheduler = scheduler,
        _firehoseSender = firehoseSender;

  /// {@macro amplify_firehose_dart.amplify_firehose_client}
  ///
  /// Creates a client with platform-appropriate storage (SQLite on VM,
  /// IndexedDB on web, in-memory fallback).
  static Future<AmplifyFirehoseClient> create({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AmplifyFirehoseClientOptions? options,
    FutureOr<String>? storagePath,
  }) async {
    final opts = options ?? AmplifyFirehoseClientOptions();

    final storage = await createPlatformRecordStorage(
      identifier: region,
      storagePath: storagePath,
      maxCacheBytes: opts.cacheMaxBytes,
    );

    final firehoseSender = FirehoseSender(
      region: region,
      credentialsProvider: credentialsProvider,
    );

    return _buildClient(
      region: region,
      options: opts,
      storage: storage,
      firehoseSender: firehoseSender,
    );
  }

  /// Creates a client with a pre-configured [RecordStorage] (for testing).
  static AmplifyFirehoseClient withStorage({
    required RecordStorage storage,
    required FirehoseSender sender,
    String region = 'us-east-1',
    AmplifyFirehoseClientOptions? options,
  }) {
    return _buildClient(
      region: region,
      options: options ?? AmplifyFirehoseClientOptions(),
      storage: storage,
      firehoseSender: sender,
    );
  }

  /// Creates a client with a pre-configured [RecordClient] (for testing).
  AmplifyFirehoseClient.withRecordClient({
    required RecordClient recordClient,
    String region = 'us-east-1',
    AmplifyFirehoseClientOptions? options,
  })  : _region = region,
        _options = options ?? AmplifyFirehoseClientOptions(),
        _recordClient = recordClient,
        _scheduler = null,
        _firehoseSender = null;

  static AmplifyFirehoseClient _buildClient({
    required String region,
    required AmplifyFirehoseClientOptions options,
    required RecordStorage storage,
    required FirehoseSender firehoseSender,
  }) {
    late final AutoFlushScheduler scheduler;
    late final RecordClient recordClient;

    recordClient = RecordClient(
      storage: storage,
      sender: firehoseSender,
      maxRetries: options.maxRetries,
    );

    scheduler = AutoFlushScheduler(
      strategy: options.flushStrategy,
      onFlush: () => recordClient.flush(),
    );

    final client = AmplifyFirehoseClient._(
      region: region,
      options: options,
      recordClient: recordClient,
      scheduler: scheduler,
      firehoseSender: firehoseSender,
    );

    scheduler.start();
    return client;
  }

  final String _region;
  final AmplifyFirehoseClientOptions _options;
  final RecordClient _recordClient;
  final AutoFlushScheduler? _scheduler;
  final FirehoseSender? _firehoseSender;

  bool _closed = false;
  bool _enabled = true;

  /// The AWS region for this client.
  String get region => _region;

  /// The configuration options for this client.
  AmplifyFirehoseClientOptions get options => _options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Direct access to the underlying Firehose SDK client.
  ///
  /// Use this for advanced operations not covered by this client's API.
  ///
  /// Note: This getter is only available when the client was created with
  /// [create] or [withStorage] (not [withRecordClient]).
  FirehoseClient get firehoseClient => _firehoseSender!.sdkClient;

  /// Records data to be sent to a Firehose delivery stream.
  ///
  /// The record is persisted to local storage and will be sent during
  /// the next flush operation (automatic or manual).
  Future<void> record({
    required Uint8List data,
    required String deliveryStreamName,
  }) async {
    if (_closed) {
      throw StateError('Client has been closed');
    }
    if (!_enabled) return;

    final firehoseRecord = RecordInput.now(
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
    if (_closed) {
      throw StateError('Client has been closed');
    }
    if (!_enabled) return const FlushData();
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
    _enabled = true;
    _scheduler?.enable();
  }

  /// Disables the client from accepting and flushing records.
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() {
    _enabled = false;
    _scheduler?.disable();
  }

  /// Enables automatic flush operations.
  void enableAutoFlush() {
    _scheduler?.enable();
  }

  /// Disables automatic flush operations.
  void disableAutoFlush() {
    _scheduler?.disable();
  }

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    _closed = true;
    await _scheduler?.close();
    await _recordClient.close();
  }
}
