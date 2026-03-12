// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show Result;
import 'package:aws_kinesis_datastreams/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:aws_kinesis_datastreams_dart/aws_kinesis_datastreams_dart.dart'
    as dart_client
    show AmplifyKinesisClient;
import 'package:aws_kinesis_datastreams_dart/aws_kinesis_datastreams_dart.dart';

/// {@template aws_kinesis_datastreams.amplify_kinesis_client}
/// Client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on native, IndexedDB on web, 
///   with in-memory fallback)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 5MB per batch)
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

  /// {@macro aws_kinesis_datastreams.amplify_kinesis_client}
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
  /// Returns [Result.ok] on success, or [Result.error] with the appropriate
  /// [AmplifyKinesisException] subtype on failure.
  ///
  /// Returns [Result.ok] silently if the client is disabled.
  Future<Result<void>> record({
    required Uint8List data,
    required String partitionKey,
    required String streamName,
  }) => _delegate.record(
    data: data,
    partitionKey: partitionKey,
    streamName: streamName,
  );

  /// Flushes all cached records to Kinesis Data Streams.
  ///
  /// Returns [Result.ok] with [FlushData] containing the count of records
  /// successfully flushed, or [Result.error] if a storage or network error
  /// occurs.
  ///
  /// Returns [Result.ok] with zero records if the client is disabled.
  Future<Result<FlushData>> flush() => _delegate.flush();

  /// Clears all cached records from local storage.
  ///
  /// Returns [Result.ok] with [ClearCacheData] containing the count of
  /// records cleared, or [Result.error] if a storage error occurs.
  Future<Result<ClearCacheData>> clearCache() => _delegate.clearCache();

  /// Enables the client to accept and flush records.
  void enable() => _delegate.enable();

  /// Disables the client from accepting and flushing records.
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() => _delegate.disable();

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() => _delegate.close();
}
