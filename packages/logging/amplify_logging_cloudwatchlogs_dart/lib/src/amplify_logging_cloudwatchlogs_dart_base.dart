// ignore_for_file: public_member_api_docs

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/cloud_watch_logs.dart';
import 'package:fixnum/fixnum.dart';

const _region = 'us-west-2';
const _accessKeyId = '_accessKeyId';
const _secretAccessKey = '_secretAccessKey';
const _credentialsProvider = AWSCredentialsProvider(
  AWSCredentials(
    _accessKeyId,
    _secretAccessKey,
  ),
);

const _client = CloudWatchLogsClient(
  region: _region,
  credentialsProvider: _credentialsProvider,
);

const _limit = 10;
const _duration = Duration(minutes: 10);
const _token = '_token';
const _logGroupName = 'test';
const _logStreamName = 'poc';

class CloudWatchLoggerPluginDart extends AmplifyLoggerPlugin {
  static String? token = _token;
  static final List<InputLogEvent> logEvents = [];

  @override
  Future<void> handleLogEntry(LogEntry logEntry) async {
    final logEvent = InputLogEvent(
      message: logEntry.message,
      timestamp: Int64(DateTime.now().millisecondsSinceEpoch),
    );
    logEvents.add(logEvent);
    if (logEvents.isNotEmpty &&
        (logEvents.length >= _limit ||
            logEvents.first.timestamp >=
                Int64(DateTime.now().add(_duration).millisecondsSinceEpoch))) {
      await putLogEvents(logEvents);
    }
  }

  Future<void> putLogEvents(List<InputLogEvent> logEvents) async {
    final input = PutLogEventsRequest(
      logEvents: logEvents,
      logGroupName: _logGroupName,
      logStreamName: _logStreamName,
      sequenceToken: token,
    );
    final res = await _client.putLogEvents(input).result;
    if (res.rejectedLogEventsInfo != null) {
      token ??= res.nextSequenceToken;
      logEvents = [];
    }
  }
}
