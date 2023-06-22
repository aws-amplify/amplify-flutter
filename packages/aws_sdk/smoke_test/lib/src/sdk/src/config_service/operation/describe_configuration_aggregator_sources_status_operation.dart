// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.operation.describe_configuration_aggregator_sources_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_configuration_aggregator_sources_status_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart'
    as _i14;

/// Returns status information for sources within an aggregator. The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message.
class DescribeConfigurationAggregatorSourcesStatusOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeConfigurationAggregatorSourcesStatusRequest,
        _i2.DescribeConfigurationAggregatorSourcesStatusRequest,
        _i3.DescribeConfigurationAggregatorSourcesStatusResponse,
        _i3.DescribeConfigurationAggregatorSourcesStatusResponse,
        String,
        int,
        _i4.BuiltList<_i5.AggregatedSourceStatus>> {
  /// Returns status information for sources within an aggregator. The status includes information about the last time Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message.
  DescribeConfigurationAggregatorSourcesStatusOperation({
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
              _i2.DescribeConfigurationAggregatorSourcesStatusRequest,
              _i2.DescribeConfigurationAggregatorSourcesStatusRequest,
              _i3.DescribeConfigurationAggregatorSourcesStatusResponse,
              _i3.DescribeConfigurationAggregatorSourcesStatusResponse>>
      protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DescribeConfigurationAggregatorSourcesStatus',
            ),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.configService,
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
  _i1.HttpRequest buildRequest(
          _i2.DescribeConfigurationAggregatorSourcesStatusRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [_i3.DescribeConfigurationAggregatorSourcesStatusResponse? output]) =>
      200;
  @override
  _i3.DescribeConfigurationAggregatorSourcesStatusResponse buildOutput(
    _i3.DescribeConfigurationAggregatorSourcesStatusResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeConfigurationAggregatorSourcesStatusResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.InvalidLimitException, _i11.InvalidLimitException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidLimitException,
          builder: _i11.InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidNextTokenException,
            _i12.InvalidNextTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidNextTokenException,
          builder: _i12.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError<_i13.InvalidParameterValueException,
            _i13.InvalidParameterValueException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i13.InvalidParameterValueException,
          builder: _i13.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError<_i14.NoSuchConfigurationAggregatorException,
            _i14.NoSuchConfigurationAggregatorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationAggregatorException',
          ),
          _i1.ErrorKind.client,
          _i14.NoSuchConfigurationAggregatorException,
          builder: _i14.NoSuchConfigurationAggregatorException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeConfigurationAggregatorSourcesStatus';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeConfigurationAggregatorSourcesStatusResponse>
      run(
    _i2.DescribeConfigurationAggregatorSourcesStatusRequest input, {
    _i9.AWSHttpClient? client,
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(
          _i3.DescribeConfigurationAggregatorSourcesStatusResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.AggregatedSourceStatus> getItems(
          _i3.DescribeConfigurationAggregatorSourcesStatusResponse output) =>
      output.aggregatedSourceStatusList ?? _i4.BuiltList();
  @override
  _i2.DescribeConfigurationAggregatorSourcesStatusRequest rebuildInput(
    _i2.DescribeConfigurationAggregatorSourcesStatusRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.limit = pageSize;
      });
}
