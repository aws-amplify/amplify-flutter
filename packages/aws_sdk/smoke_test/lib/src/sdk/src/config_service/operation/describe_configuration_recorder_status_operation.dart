// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.describe_configuration_recorder_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_recorder_status_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_recorder_exception.dart';

/// Returns the current status of the specified configuration recorder as well as the status of the last recording event for the recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
///
/// >You can specify only one configuration recorder for each Amazon Web Services Region for each account. For a detailed status of recording events over time, add your Config events to Amazon CloudWatch metrics and use CloudWatch metrics.
class DescribeConfigurationRecorderStatusOperation extends _i1.HttpOperation<
    DescribeConfigurationRecorderStatusRequest,
    DescribeConfigurationRecorderStatusRequest,
    DescribeConfigurationRecorderStatusResponse,
    DescribeConfigurationRecorderStatusResponse> {
  /// Returns the current status of the specified configuration recorder as well as the status of the last recording event for the recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.
  ///
  /// >You can specify only one configuration recorder for each Amazon Web Services Region for each account. For a detailed status of recording events over time, add your Config events to Amazon CloudWatch metrics and use CloudWatch metrics.
  DescribeConfigurationRecorderStatusOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
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
          DescribeConfigurationRecorderStatusRequest,
          DescribeConfigurationRecorderStatusRequest,
          DescribeConfigurationRecorderStatusResponse,
          DescribeConfigurationRecorderStatusResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DescribeConfigurationRecorderStatus',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(
          DescribeConfigurationRecorderStatusRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeConfigurationRecorderStatusResponse? output]) => 200;
  @override
  DescribeConfigurationRecorderStatusResponse buildOutput(
    DescribeConfigurationRecorderStatusResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      DescribeConfigurationRecorderStatusResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<NoSuchConfigurationRecorderException,
            NoSuchConfigurationRecorderException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationRecorderException',
          ),
          _i1.ErrorKind.client,
          NoSuchConfigurationRecorderException,
          builder: NoSuchConfigurationRecorderException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'DescribeConfigurationRecorderStatus';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeConfigurationRecorderStatusResponse> run(
    DescribeConfigurationRecorderStatusRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}