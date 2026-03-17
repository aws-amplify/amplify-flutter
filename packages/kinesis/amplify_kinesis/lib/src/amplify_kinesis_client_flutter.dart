// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AWSCredentialsProvider, Result;
import 'package:amplify_kinesis/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_kinesis_dart/amplify_kinesis_dart.dart'
    as dart_client
    show AmplifyKinesisClient;
import 'package:amplify_kinesis_dart/amplify_kinesis_dart.dart';

/// {@template amplify_kinesis.amplify_kinesis_client}
/// Client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on native, IndexedDB on web,
///   with in-memory fallback)
/// - Automatic retry for failed records
/// - Batching (up to 500 records or 5MB per batch)
/// - Interval-based automatic flushing
///
/// The storage path is resolved automatically using the platform's
/// application support directory. The [region] is used as the database
/// identifier.
///
/// ## Usage
///
/// ```dart
/// final client = await AmplifyKinesisClient.create(
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
  AmplifyKinesisClient._(this._delegate);

  /// {@macro amplify_kinesis.amplify_kinesis_client}
  ///
  /// The storage path is resolved automatically via `path_provider`.
  /// On IO platforms, this uses `getApplicationSupportDirectory()`.
  /// On web, the path is unused (IndexedDB storage is used instead,
  /// with an in-memory fallback).
  static Future<AmplifyKinesisClient> create({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AmplifyKinesisClientOptions? options,
  }) async {
    final storagePath = await getStoragePath() ?? '';
    final delegate = await dart_client.AmplifyKinesisClient.create(
      region: region,
      credentialsProvider: credentialsProvider,
      storagePath: storagePath,
      options: options,
    );
    return AmplifyKinesisClient._(delegate);
  }

  final dart_client.AmplifyKinesisClient _delegate;

  /// The AWS region for this client.
  String get region => _delegate.region;

  /// The configuration options for this client.
  AmplifyKinesisClientOptions get options => _delegate.options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _delegate.isEnabled;

  /// Whether the client has been closed.
  bool get isClosed => _delegate.isClosed;

  /// Direct access to the underlying Kinesis SDK client.
  KinesisClient get kinesisClient => _delegate.kinesisClient;

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
  }) => _delegate.record(
    data: data,
    partitionKey: partitionKey,
    streamName: streamName,
  );

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
  Future<Result<FlushData>> flush() => _delegate.flush();

  /// Clears all cached records from local storage.
  ///
  /// Returns [Result.ok] with [ClearCacheData] containing the count of
  /// records cleared, or [Result.error] with:
  /// - [KinesisStorageException] for database errors
  Future<Result<ClearCacheData>> clearCache() => _delegate.clearCache();

  /// Enables the client to accept and flush records.
  void enable() => _delegate.enable();

  /// Disables record collection and automatic flushing.
  ///
  /// Records submitted while disabled are silently dropped. Already-cached
  /// records remain in storage and will be sent on the next flush after
  /// re-enabling.
  void disable() => _delegate.disable();

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() => _delegate.close();
}
