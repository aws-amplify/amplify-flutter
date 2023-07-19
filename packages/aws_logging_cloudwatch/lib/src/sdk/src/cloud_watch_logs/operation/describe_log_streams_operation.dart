// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.operation.describe_log_streams_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/common/endpoint_resolver.dart'
    as _i10;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/common/serializers.dart'
    as _i8;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_streams_request.dart'
    as _i2;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/describe_log_streams_response.dart'
    as _i3;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart'
    as _i11;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/log_stream.dart'
    as _i5;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart'
    as _i12;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart'
    as _i13;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;

/// Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.
///
/// You can specify the log group to search by using either `logGroupIdentifier` or `logGroupName`. You must include one of these two parameters, but you can't include both.
///
/// This operation has a limit of five transactions per second, after which transactions are throttled.
///
/// If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
class DescribeLogStreamsOperation extends _i1.PaginatedHttpOperation<
    _i2.DescribeLogStreamsRequest,
    _i2.DescribeLogStreamsRequest,
    _i3.DescribeLogStreamsResponse,
    _i3.DescribeLogStreamsResponse,
    String,
    int,
    _i4.BuiltList<_i5.LogStream>> {
  /// Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.
  ///
  /// You can specify the log group to search by using either `logGroupIdentifier` or `logGroupName`. You must include one of these two parameters, but you can't include both.
  ///
  /// This operation has a limit of five transactions per second, after which transactions are throttled.
  ///
  /// If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and view data from the linked source accounts. For more information, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  DescribeLogStreamsOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.DescribeLogStreamsRequest,
          _i2.DescribeLogStreamsRequest,
          _i3.DescribeLogStreamsResponse,
          _i3.DescribeLogStreamsResponse>> protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'Logs_20140328.DescribeLogStreams',
            ),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.cloudWatchLogs,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.DescribeLogStreamsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeLogStreamsResponse? output]) => 200;
  @override
  _i3.DescribeLogStreamsResponse buildOutput(
    _i3.DescribeLogStreamsResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeLogStreamsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.InvalidParameterException,
            _i11.InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidParameterException,
          builder: _i11.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<_i12.ResourceNotFoundException,
            _i12.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i12.ResourceNotFoundException,
          builder: _i12.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i13.ServiceUnavailableException,
            _i13.ServiceUnavailableException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ServiceUnavailableException',
          ),
          _i1.ErrorKind.server,
          _i13.ServiceUnavailableException,
          builder: _i13.ServiceUnavailableException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeLogStreams';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeLogStreamsResponse> run(
    _i2.DescribeLogStreamsRequest input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.DescribeLogStreamsResponse output) => output.nextToken;
  @override
  _i4.BuiltList<_i5.LogStream> getItems(
          _i3.DescribeLogStreamsResponse output) =>
      output.logStreams ?? _i4.BuiltList();
  @override
  _i2.DescribeLogStreamsRequest rebuildInput(
    _i2.DescribeLogStreamsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.limit = pageSize;
        }
      });
}
