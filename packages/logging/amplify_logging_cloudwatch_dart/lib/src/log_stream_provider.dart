// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_logging_cloudwatch_dart/src/sdk/src/cloud_watch_logs/cloud_watch_logs_client.dart';
import 'package:amplify_logging_cloudwatch_dart/src/sdk/src/cloud_watch_logs/model/create_log_stream_request.dart';
import 'package:amplify_logging_cloudwatch_dart/src/sdk/src/cloud_watch_logs/model/resource_already_exists_exception.dart';
import 'package:aws_common/aws_common.dart';
import 'package:intl/intl.dart';

/// {@template amplify_logging_cloudwatch_dart_dart.cloudwatch_logstream_provider}
/// An interface to provide custom implementation for
/// [CloudWatchLogStreamProvider]
/// {@endtemplate}
abstract class CloudWatchLogStreamProvider {
  /// Returns the default log stream name from cache. if cache is missing it
  /// calls [createLogStream] and return the log stream name.
  FutureOr<String> get defaultLogStream;

  /// Creates the log stream and add it to the cache.
  Future<void> createLogStream(String logStreamName);
}

/// {@template amplify_logging_cloudwatch_dart.default_cloudwatch_logstream_provider}
/// The default implementaion of [CloudWatchLogStreamProvider].
///
/// It uses `defaultLogStreamNameProvider` if provided otherwise uses
/// `yyyy-MM-dd` date format of UTC time now for the `defaultLogStreamName`.
/// {@endtemplate}
class DefaultCloudWatchLogStreamProvider
    implements CloudWatchLogStreamProvider {
  /// {@macro amplify_logging_cloudwatch_dart.default_cloudwatch_logstream_provider}
  DefaultCloudWatchLogStreamProvider({
    required AWSCredentialsProvider credentialsProvider,
    required String region,
    required String logGroupName,
    FutureOr<String> Function()? defaultLogStreamNameProvider,
  })  : _logGroupName = logGroupName,
        _client = CloudWatchLogsClient(
          region: region,
          credentialsProvider: credentialsProvider,
        ),
        _defaultLogStreamNameProvider = defaultLogStreamNameProvider;

  final FutureOr<String> Function()? _defaultLogStreamNameProvider;
  final String _logGroupName;
  final CloudWatchLogsClient _client;

  static final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');
  final _createdLogStreams = <String>{};

  @override
  Future<String> get defaultLogStream async {
    final logStreamNameProvider =
        _defaultLogStreamNameProvider ?? _timeBasedLogStreamNameProvider;
    final logStreamName = await logStreamNameProvider();
    if (_createdLogStreams.contains(logStreamName)) {
      return logStreamName;
    }
    await createLogStream(logStreamName);
    _createdLogStreams.add(logStreamName);
    return logStreamName;
  }

  String _timeBasedLogStreamNameProvider() {
    return _dateFormat.format(DateTime.timestamp());
  }

  @override
  Future<void> createLogStream(String logStreamName) async {
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
      return;
    }
  }
}
