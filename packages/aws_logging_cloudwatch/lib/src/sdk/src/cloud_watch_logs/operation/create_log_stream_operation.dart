// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.operation.create_log_stream_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/common/endpoint_resolver.dart'
    as _i7;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/common/serializers.dart'
    as _i5;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/create_log_stream_request.dart'
    as _i2;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/invalid_parameter_exception.dart'
    as _i8;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_already_exists_exception.dart'
    as _i9;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/resource_not_found_exception.dart'
    as _i10;
import 'package:aws_logging_cloudwatch/src/sdk/src/cloud_watch_logs/model/service_unavailable_exception.dart'
    as _i11;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

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
class CreateLogStreamOperation extends _i1.HttpOperation<
    _i2.CreateLogStreamRequest,
    _i2.CreateLogStreamRequest,
    _i1.Unit,
    _i1.Unit> {
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
  CreateLogStreamOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.CreateLogStreamRequest, _i2.CreateLogStreamRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'Logs_20140328.CreateLogStream',
            ),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.cloudWatchLogs,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.CreateLogStreamRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i8.InvalidParameterException,
            _i8.InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i8.InvalidParameterException,
          builder: _i8.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<_i9.ResourceAlreadyExistsException,
            _i9.ResourceAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ResourceAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i9.ResourceAlreadyExistsException,
          builder: _i9.ResourceAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<_i10.ResourceNotFoundException,
            _i10.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.ResourceNotFoundException,
          builder: _i10.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i11.ServiceUnavailableException,
            _i11.ServiceUnavailableException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudwatchlogs',
            shape: 'ServiceUnavailableException',
          ),
          _i1.ErrorKind.server,
          _i11.ServiceUnavailableException,
          builder: _i11.ServiceUnavailableException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateLogStream';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.CreateLogStreamRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
