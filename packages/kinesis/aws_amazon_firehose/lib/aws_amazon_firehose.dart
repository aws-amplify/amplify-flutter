// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Amazon Data Firehose client for Flutter.
///
/// This library provides an offline-capable client for streaming data to
/// Amazon Data Firehose delivery streams.
///
/// ## Getting Started
///
/// ```dart
/// import 'package:aws_amazon_firehose/aws_amazon_firehose.dart';
///
/// final client = AmazonDataFirehose(
///   region: 'us-east-1',
///   credentialsProvider: AWSCredentialsProvider(
///     AWSCredentials('accessKeyId', 'secretAccessKey'),
///   ),
/// );
///
/// // Record data
/// await client.record(
///   data: Uint8List.fromList(utf8.encode('{"event": "click"}')),
///   deliveryStreamName: 'my-delivery-stream',
/// );
///
/// // Flush and close when done
/// await client.flush();
/// await client.close();
/// ```
library aws_amazon_firehose;

// Re-export credentials types from amplify_core for convenience
export 'package:amplify_core/amplify_core.dart'
    show AWSCredentials, AWSCredentialsProvider;

// Main client
export 'src/amazon_data_firehose.dart';
export 'src/amazon_data_firehose_options.dart';
// Exceptions
export 'src/exception/firehose_exception.dart';
// Flush strategies
export 'src/flush_strategy/flush_strategy.dart';
export 'src/flush_strategy/interval_flush_strategy.dart';
