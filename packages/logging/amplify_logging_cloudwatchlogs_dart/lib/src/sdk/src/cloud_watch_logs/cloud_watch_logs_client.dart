// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.cloud_watch_logs_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart'
    as _i5;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart'
    as _i4;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/operation/put_log_events_operation.dart'
    as _i6;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

/// You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, CloudTrail, and other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK.
///
/// You can use CloudWatch Logs to:
///
/// *   **Monitor logs from EC2 instances in real-time**: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring so no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.
///
/// *   **Monitor CloudTrail logged events**: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail. You can use the notification to perform troubleshooting.
///
/// *   **Archive log data**: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.
class CloudWatchLogsClient {
  /// You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, CloudTrail, and other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK.
  ///
  /// You can use CloudWatch Logs to:
  ///
  /// *   **Monitor logs from EC2 instances in real-time**: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring so no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.
  ///
  /// *   **Monitor CloudTrail logged events**: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail. You can use the notification to perform troubleshooting.
  ///
  /// *   **Archive log data**: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.
  const CloudWatchLogsClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    required _i2.AWSCredentialsProvider credentialsProvider,
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  /// Uploads a batch of log events to the specified log stream.
  ///
  /// You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token in the `expectedSequenceToken` field from `InvalidSequenceTokenException`. If you call `PutLogEvents` twice within a narrow time period using the same value for `sequenceToken`, both calls might be successful or one might be rejected.
  ///
  /// The batch of events must satisfy the following constraints:
  ///
  /// *   The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.
  ///
  /// *   None of the log events in the batch can be more than 2 hours in the future.
  ///
  /// *   None of the log events in the batch can be older than 14 days or older than the retention period of the log group.
  ///
  /// *   The log events in the batch must be in chronological order by their timestamp. The timestamp is the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In Amazon Web Services Tools for PowerShell and the Amazon Web Services SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)
  ///
  /// *   A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.
  ///
  /// *   The maximum number of log events in a batch is 10,000.
  ///
  /// *   There is a quota of 5 requests per second per log stream. Additional requests are throttled. This quota can't be changed.
  ///
  ///
  /// If a call to `PutLogEvents` returns "UnrecognizedClientException" the most likely cause is an invalid Amazon Web Services access key ID or secret key.
  _i3.SmithyOperation<_i4.PutLogEventsResponse> putLogEvents(
    _i5.PutLogEventsRequest input, {
    _i1.AWSHttpClient? client,
  }) {
    return _i6.PutLogEventsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: _credentialsProvider,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
