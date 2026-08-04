// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_firehose/src/flutter_path_provider/flutter_path_provider.dart';
import 'package:amplify_firehose_dart/amplify_firehose_dart.dart'
    as dart_client
    show AmplifyFirehoseClient;
import 'package:amplify_firehose_dart/amplify_firehose_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AWSCredentialsProvider, Result;

/// {@template amplify_firehose.amplify_firehose_client}
/// Client for recording and streaming data to Amazon Data Firehose.
///
/// Provides offline-capable data streaming with:
/// - Local persistence for offline support (SQLite on native, IndexedDB on web,
///   with in-memory fallback)
/// - Automatic retry for failed records
/// - Batching (up to 500 records or 4 MB per batch)
/// - Interval-based automatic flushing
///
/// The storage path is resolved automatically using the platform's
/// application support directory. The [region] is used as the database
/// identifier.
/// {@endtemplate}
class AmplifyFirehoseClient {
  AmplifyFirehoseClient._(this._delegate);

  /// {@macro amplify_firehose.amplify_firehose_client}
  ///
  /// The storage path is resolved automatically via `path_provider`.
  static Future<AmplifyFirehoseClient> create({
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    AmplifyFirehoseClientOptions? options,
  }) async {
    final storagePath = await getStoragePath() ?? '';
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

  /// Direct access to the underlying Firehose SDK client.
  FirehoseClient get firehoseClient => _delegate.firehoseClient;

  /// Records data to be sent to a Firehose delivery stream.
  Future<Result<RecordData>> record({
    required Uint8List data,
    required String streamName,
  }) => _delegate.record(data: data, streamName: streamName);

  /// Flushes cached records to their respective Firehose streams.
  Future<Result<FlushData>> flush() => _delegate.flush();

  /// Clears all cached records from local storage.
  Future<Result<ClearCacheData>> clearCache() => _delegate.clearCache();

  /// Enables the client to accept and flush records.
  void enable() => _delegate.enable();

  /// Disables record collection and automatic flushing.
  void disable() => _delegate.disable();

  /// Closes the client and releases all resources.
  Future<void> close() => _delegate.close();
}
