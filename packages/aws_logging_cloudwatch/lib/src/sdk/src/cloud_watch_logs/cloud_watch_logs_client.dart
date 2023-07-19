// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.cloud_watch_logs_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/create_log_stream_request.dart'
    as _i4;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_groups_request.dart'
    as _i8;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_streams_request.dart'
    as _i11;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_group.dart'
    as _i7;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_stream.dart'
    as _i10;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart'
    as _i14;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart'
    as _i13;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/operation/create_log_stream_operation.dart'
    as _i5;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/operation/describe_log_groups_operation.dart'
    as _i9;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/operation/describe_log_streams_operation.dart'
    as _i12;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/operation/put_log_events_operation.dart'
    as _i15;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:smithy/smithy.dart' as _i3;

/// You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, CloudTrail, and other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console. Alternatively, you can use CloudWatch Logs commands in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK.
///
/// You can use CloudWatch Logs to:
///
/// *   **Monitor logs from EC2 instances in real time**: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs. Then, it can send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring so no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException"). You can also count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.
///
/// *   **Monitor CloudTrail logged events**: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail. You can use the notification to perform troubleshooting.
///
/// *   **Archive log data**: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events earlier than this setting are automatically deleted. The CloudWatch Logs agent helps to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.
class CloudWatchLogsClient {
  /// You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, CloudTrail, and other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console. Alternatively, you can use CloudWatch Logs commands in the Amazon Web Services CLI, CloudWatch Logs API, or CloudWatch Logs SDK.
  ///
  /// You can use CloudWatch Logs to:
  ///
  /// *   **Monitor logs from EC2 instances in real time**: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs. Then, it can send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring so no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException"). You can also count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.
  ///
  /// *   **Monitor CloudTrail logged events**: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail. You can use the notification to perform troubleshooting.
  ///
  /// *   **Archive log data**: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events earlier than this setting are automatically deleted. The CloudWatch Logs agent helps to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.
  const CloudWatchLogsClient({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i3.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i3.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i3.HttpRequestInterceptor> _requestInterceptors;

  final List<_i3.HttpResponseInterceptor> _responseInterceptors;

  /// Creates a log stream for the specified log group. A log stream is a sequence of log events that originate from a single source, such as an application instance or a resource that is being monitored.
  ///
  /// There is no limit on the number of log streams that you can create for a log group. There is a limit of 50 TPS on `CreateLogStream` operations, after which transactions are throttled.
  ///
  /// You must use the following guidelines when naming a log stream:
  ///
  /// *   Log stream names must be unique within the log group.
  ///
  /// *   Log stream names can be between 1 and 512 characters long.
  ///
  /// *   Don't use ':' (colon) or '*' (asterisk) characters.
  _i3.SmithyOperation<void> createLogStream(
    _i4.CreateLogStreamRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i5.CreateLogStreamOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
  ///
  /// CloudWatch Logs doesn’t support IAM policies that control access to the `DescribeLogGroups` action by using the `aws:ResourceTag/_key-name_` condition key. Other CloudWatch Logs actions do support the use of the `aws:ResourceTag/_key-name_` condition key to control access. For more information about using tags to control access, see [Controlling access to Amazon Web Services resources using tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
  ///
  /// If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i6.BuiltList<_i7.LogGroup>, int, String>>
      describeLogGroups(
    _i8.DescribeLogGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i9.DescribeLogGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.
  ///
  /// You can specify the log group to search by using either `logGroupIdentifier` or `logGroupName`. You must include one of these two parameters, but you can't include both.
  ///
  /// This operation has a limit of five transactions per second, after which transactions are throttled.
  ///
  /// If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i6.BuiltList<_i10.LogStream>, int, String>>
      describeLogStreams(
    _i11.DescribeLogStreamsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i12.DescribeLogStreamsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Uploads a batch of log events to the specified log stream.
  ///
  /// The sequence token is now ignored in `PutLogEvents` actions. `PutLogEvents` actions are always accepted and never return `InvalidSequenceTokenException` or `DataAlreadyAcceptedException` even if the sequence token is not valid. You can use parallel `PutLogEvents` actions on the same log stream.
  ///
  /// The batch of events must satisfy the following constraints:
  ///
  /// *   The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.
  ///
  /// *   None of the log events in the batch can be more than 2 hours in the future.
  ///
  /// *   None of the log events in the batch can be more than 14 days in the past. Also, none of the log events can be from earlier than the retention period of the log group.
  ///
  /// *   The log events in the batch must be in chronological order by their timestamp. The timestamp is the time that the event occurred, expressed as the number of milliseconds after `Jan 1, 1970 00:00:00 UTC`. (In Amazon Web Services Tools for PowerShell and the Amazon Web Services SDK for .NET, the timestamp is specified in .NET format: `yyyy-mm-ddThh:mm:ss`. For example, `2017-09-15T13:45:30`.)
  ///
  /// *   A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.
  ///
  /// *   The maximum number of log events in a batch is 10,000.
  ///
  /// *   The quota of five requests per second per log stream has been removed. Instead, `PutLogEvents` actions are throttled based on a per-second per-account quota. You can request an increase to the per-second throttling quota by using the Service Quotas service.
  ///
  ///
  /// If a call to `PutLogEvents` returns "UnrecognizedClientException" the most likely cause is a non-valid Amazon Web Services access key ID or secret key.
  _i3.SmithyOperation<_i13.PutLogEventsResponse> putLogEvents(
    _i14.PutLogEventsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return _i15.PutLogEventsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
