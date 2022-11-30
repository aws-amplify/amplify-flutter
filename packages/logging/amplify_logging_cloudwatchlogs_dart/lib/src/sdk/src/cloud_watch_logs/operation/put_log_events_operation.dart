// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.operation.put_log_events_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/common/serializers.dart'
    as _i6;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/data_already_accepted_exception.dart'
    as _i9;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart'
    as _i10;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/invalid_sequence_token_exception.dart'
    as _i11;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/put_log_events_request.dart'
    as _i2;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/put_log_events_response.dart'
    as _i3;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart'
    as _i12;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart'
    as _i13;
import 'package:amplify_logging_cloudwatchlogs_dart/src/sdk/src/cloud_watch_logs/model/unrecognized_client_exception.dart'
    as _i14;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

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
class PutLogEventsOperation extends _i1.HttpOperation<
    _i2.PutLogEventsRequest,
    _i2.PutLogEventsRequest,
    _i3.PutLogEventsResponse,
    _i3.PutLogEventsResponse> {
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
  PutLogEventsOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PutLogEventsRequest, _i2.PutLogEventsRequest,
          _i3.PutLogEventsResponse, _i3.PutLogEventsResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'Logs_20140328.PutLogEvents',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.cloudWatchLogs,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.PutLogEventsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutLogEventsResponse? output]) => 200;
  @override
  _i3.PutLogEventsResponse buildOutput(
    _i3.PutLogEventsResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.PutLogEventsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'DataAlreadyAcceptedException',
          ),
          _i1.ErrorKind.client,
          _i9.DataAlreadyAcceptedException,
          builder: _i9.DataAlreadyAcceptedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidParameterException,
          builder: _i10.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'InvalidSequenceTokenException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidSequenceTokenException,
          builder: _i11.InvalidSequenceTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i12.ResourceNotFoundException,
          builder: _i12.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ServiceUnavailableException',
          ),
          _i1.ErrorKind.server,
          _i13.ServiceUnavailableException,
          builder: _i13.ServiceUnavailableException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'UnrecognizedClientException',
          ),
          _i1.ErrorKind.client,
          _i14.UnrecognizedClientException,
          builder: _i14.UnrecognizedClientException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutLogEvents';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.PutLogEventsResponse> run(
    _i2.PutLogEventsRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i15.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
