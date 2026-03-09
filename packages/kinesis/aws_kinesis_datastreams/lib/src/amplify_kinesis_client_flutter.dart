// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:aws_kinesis_datastreams_dart/aws_kinesis_datastreams_dart.dart'
    as dart_client show AmplifyKinesisClient;
import 'package:aws_kinesis_datastreams_dart/aws_kinesis_datastreams_dart.dart';

/// {@template aws_kinesis_datastreams.amplify_kinesis_client}
/// Client for recording and streaming data to Amazon Kinesis Data Streams.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on all platforms, via sqlite3.wasm on web)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 5MB per batch)
/// - Interval-based automatic flushing
///
/// The storage path is resolved automatically using the platform's
/// application support directory. The [region] is used as the database
/// identifier, matching the Android and Swift implementations.
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
  ///
  /// The storage path is resolved automatically via `path_provider`.
  /// On IO platforms, this uses `getApplicationSupportDirectory()`.
  /// On web, the path is unused (Drift uses sqlite3.wasm with an
  /// IndexedDB-backed virtual file system).
  AmplifyKinesisClient({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AmplifyKinesisClientOptions? options,
  }) : _delegate = dart_client.AmplifyKinesisClient(
         region: region,
         credentialsProvider: credentialsProvider,
         // getStoragePath() returns Future<String?>.
         // On IO: resolves to the application support directory path.
         // On web: resolves to null, but connect_html.dart ignores the
         // path (it uses sqlite3.wasm + IndexedDB VFS), so we pass an
         // empty string fallback.
         storagePath: getStoragePath().then((p) => p ?? ''),
         options: options,
       );

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
  /// Records are silently ignored if the client is disabled.
  ///
  /// Throws:
  /// - [ClientClosedException] if the client has been closed.
  /// - [KinesisValidationException] if the partition key or record size
  ///   is invalid.
  /// - [KinesisLimitExceededException] if the local cache is full.
  /// - [KinesisStorageException] if a database error occurs.
  /// - [KinesisUnknownException] for unexpected errors.
  Future<void> record({
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
  /// Returns [FlushData] with the count of records successfully flushed.
  /// Does nothing if the client is disabled.
  ///
  /// Throws:
  /// - [ClientClosedException] if the client has been closed.
  /// - [KinesisStorageException] if a database error occurs.
  /// - [KinesisUnknownException] for unexpected errors.
  Future<FlushData> flush() => _delegate.flush();

  /// Clears all cached records from local storage.
  ///
  /// Returns [ClearCacheData] with the count of records cleared.
  ///
  /// Throws:
  /// - [KinesisStorageException] if a database error occurs.
  /// - [KinesisUnknownException] for unexpected errors.
  Future<ClearCacheData> clearCache() => _delegate.clearCache();

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
