// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:intl/intl.dart';

/// {@template aws_logging_cloudwatch.cloudwatch_logstream_provider}
/// An interface to provide custom implementation for
/// [CloudWatchLogStreamProvider]
/// {@endtemplate}
abstract class CloudWatchLogStreamProvider {
  /// Returns CloudWatch log stream name to use for sending logs to CloudWatch.
  ///
  /// It creates the log stream if it does not exists.
  Future<String> get logStream;
}

/// {@template aws_logging_cloudwatch.default_cloudwatch_logstream_provider}
/// The default implementaion of [CloudWatchLogStreamProvider].
///
/// It uses `logStreamName` if provided otherwise uses `yyyy-MM-dd` date format
/// of UTC time now for the `logStreamName`.
/// {@endtemplate}
class DefaultCloudWatchLogStreamProvider
    implements CloudWatchLogStreamProvider {
  /// {@macro aws_logging_cloudwatch.default_cloudwatch_logstream_provider}
  DefaultCloudWatchLogStreamProvider({
    required CloudWatchLogsClient client,
    required String logGroupName,
    String? logStreamName,
  })  : _logStreamName = logStreamName,
        _logGroupName = logGroupName,
        _client = client;

  final String? _logStreamName;
  final String _logGroupName;
  final CloudWatchLogsClient _client;
  static final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

  /// Creates CloudWatch log stream if does not exists and returns
  /// the log stream name.
  ///
  /// Throws an [Exception] if fails to create the log stream.
  @override
  Future<String> get logStream async {
    final logStreamName =
        _logStreamName ?? _dateFormat.format(DateTime.timestamp());
    try {
      await _client
          .createLogStream(
            CreateLogStreamRequest(
              logGroupName: _logGroupName,
              logStreamName: logStreamName,
            ),
          )
          .result;
    } on ResourceAlreadyExistsException {
      return logStreamName;
    } on Exception {
      rethrow;
    }
    return logStreamName;
  }
}
