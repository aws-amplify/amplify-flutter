// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// AWS Kinesis Data Streams client for Dart.
///
/// This library provides offline-capable data streaming to Amazon Kinesis
/// Data Streams with automatic retry, configurable batching, and flexible
/// credential management.
///
/// ## Getting Started
///
/// Create a [KinesisDataStreams] client with your AWS region and credentials:
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
/// ```
///
/// ## Recording Data
///
/// Use [KinesisDataStreams.record] to queue data for sending:
///
/// ```dart
/// await client.record(
///   data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
///   partitionKey: 'user-123',
///   streamName: 'my-stream',
/// );
/// ```
///
/// ## Flushing Data
///
/// Records are automatically flushed at regular intervals (default: 30 seconds).
/// You can also manually flush:
///
/// ```dart
/// await client.flush();
/// ```
///
/// ## Security Considerations
///
/// - **Unencrypted Storage**: Records are stored in an unencrypted SQLite
///   database on the device. Do not store sensitive data without additional
///   encryption.
/// - **Credential Handling**: Credentials are resolved on-demand and are not
///   persisted. Implement your [AWSCredentialsProvider] to handle credential
///   refresh securely.
///
/// ## Cleanup
///
/// Always close the client when done:
///
/// ```dart
/// await client.close();
/// ```
library;

// Re-export credentials types from amplify_core for convenience
export 'package:amplify_core/amplify_core.dart'
    show AWSCredentials, AWSCredentialsProvider;

// Exceptions
export 'src/exception/kinesis_exception.dart';
// Flush strategies
export 'src/flush_strategy/flush_strategy.dart';
export 'src/flush_strategy/interval_flush_strategy.dart';
// Main client
export 'src/kinesis_data_streams.dart';
// Options
export 'src/kinesis_data_streams_options.dart';
