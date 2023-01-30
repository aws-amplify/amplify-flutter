// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.operation.describe_retention_configurations_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_retention_configurations_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_retention_configuration_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart'
    as _i5;

/// Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.
///
/// Currently, Config supports only one retention configuration per region in your account.
class DescribeRetentionConfigurationsOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeRetentionConfigurationsRequest,
        _i2.DescribeRetentionConfigurationsRequest,
        _i3.DescribeRetentionConfigurationsResponse,
        _i3.DescribeRetentionConfigurationsResponse,
        String,
        void,
        _i4.BuiltList<_i5.RetentionConfiguration>> {
  /// Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  DescribeRetentionConfigurationsOperation({
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
          _i2.DescribeRetentionConfigurationsRequest,
          _i2.DescribeRetentionConfigurationsRequest,
          _i3.DescribeRetentionConfigurationsResponse,
          _i3.DescribeRetentionConfigurationsResponse>> protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DescribeRetentionConfigurations',
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
          _i2.DescribeRetentionConfigurationsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeRetentionConfigurationsResponse? output]) => 200;
  @override
  _i3.DescribeRetentionConfigurationsResponse buildOutput(
    _i3.DescribeRetentionConfigurationsResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeRetentionConfigurationsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidNextTokenException,
          builder: _i11.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidParameterValueException,
          builder: _i12.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchRetentionConfigurationException',
          ),
          _i1.ErrorKind.client,
          _i13.NoSuchRetentionConfigurationException,
          builder: _i13.NoSuchRetentionConfigurationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeRetentionConfigurations';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeRetentionConfigurationsResponse> run(
    _i2.DescribeRetentionConfigurationsRequest input, {
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.DescribeRetentionConfigurationsResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.RetentionConfiguration> getItems(
          _i3.DescribeRetentionConfigurationsResponse output) =>
      output.retentionConfigurations ?? _i4.BuiltList();
  @override
  _i2.DescribeRetentionConfigurationsRequest rebuildInput(
    _i2.DescribeRetentionConfigurationsRequest input,
    String token,
    void pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
      });
}
