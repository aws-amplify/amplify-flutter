// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_firehose/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_firehose_dart/amplify_firehose_dart.dart'
    as dart_client
    show AmplifyFirehoseClient;
import 'package:amplify_firehose_dart/amplify_firehose_dart.dart';

/// {@template amplify_firehose.amplify_firehose_client}
/// Client for recording and streaming data to Amazon Data Firehose.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on native, IndexedDB on web,
///   with in-memory fallback)
/// - Automatic retry for failed records
/// - Configurable batching (up to 500 records or 4MB per batch)
/// - Interval-based automatic flushing
///
/// The storage path is resolved automatically using the platform's
/// application support directory. The [region] is used as the database
/// identifier.
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
/// final result = await client.flush();
/// print('Flushed ${result.recordsFlushed} records');
///
/// await client.close();
/// ```
/// {@endtemplate}
class AmplifyFirehoseClient {
  AmplifyFirehoseClient._(this._delegate);

  /// {@macro amplify_firehose.amplify_firehose_client}
  ///
  /// The storage path is resolved automatically via `path_provider`.
  /// On IO platforms, this uses `getApplicationSupportDirectory()`.
  /// On web, the path is unused (IndexedDB storage is used instead,
  /// with an in-memory fallback).
  static Future<AmplifyFirehoseClient> create({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AmplifyFirehoseClientOptions? options,
  }) async {
    final storagePath = await getStoragePath();
    final delegate = await dart_client.AmplifyFirehoseClient.create(
      region: region,
      credentialsProvider: credentialsProvider,
      storagePath: storagePath,
      options: options,
    );
    return AmplifyFirehoseClient._(delegate);
  }

  final dart_client.AmplifyFirehoseClient _delegate;

  /// The AWS region for this client.
  String get region => _delegate.region;

  /// The configuration options for this client.
  AmplifyFirehoseClientOptions get options => _delegate.options;

  /// Whether the client is currently enabled.
  bool get isEnabled => _delegate.isEnabled;

  /// Whether the client has been closed.
  bool get isClosed => _delegate.isClosed;

  /// Records data to be sent to a Firehose delivery stream.
  ///
  /// The record is persisted to local storage and will be sent during
  /// the next flush operation (automatic or manual).
  Future<void> record({
    required Uint8List data,
    required String deliveryStreamName,
  }) => _delegate.record(
    data: data,
    deliveryStreamName: deliveryStreamName,
  );

  /// Flushes all cached records to Amazon Data Firehose.
  ///
  /// Returns [FlushData] with the count of records successfully flushed.
  Future<FlushData> flush() => _delegate.flush();

  /// Clears all cached records from local storage.
  ///
  /// Returns [ClearCacheData] with the count of records cleared.
  Future<ClearCacheData> clearCache() => _delegate.clearCache();

  /// Enables the client to accept and flush records.
  void enable() => _delegate.enable();

  /// Disables the client from accepting and flushing records.
  ///
  /// Existing cached records are preserved and will be sent when
  /// the client is re-enabled.
  void disable() => _delegate.disable();

  /// Enables automatic flush operations.
  void enableAutoFlush() => _delegate.enableAutoFlush();

  /// Disables automatic flush operations.
  void disableAutoFlush() => _delegate.disableAutoFlush();

  /// Closes the client and releases all resources.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() => _delegate.close();
}
