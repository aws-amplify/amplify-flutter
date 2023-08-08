// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.put_retention_configuration_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/max_number_of_retention_configurations_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/put_retention_configuration_response.dart';

/// Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information. The API creates the `RetentionConfiguration` object and names the object as **default**. When you have a `RetentionConfiguration` object named **default**, calling the API modifies the default object.
///
/// Currently, Config supports only one retention configuration per region in your account.
class PutRetentionConfigurationOperation extends _i1.HttpOperation<
    PutRetentionConfigurationRequest,
    PutRetentionConfigurationRequest,
    PutRetentionConfigurationResponse,
    PutRetentionConfigurationResponse> {
  /// Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information. The API creates the `RetentionConfiguration` object and names the object as **default**. When you have a `RetentionConfiguration` object named **default**, calling the API modifies the default object.
  ///
  /// Currently, Config supports only one retention configuration per region in your account.
  PutRetentionConfigurationOperation({
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
          PutRetentionConfigurationRequest,
          PutRetentionConfigurationRequest,
          PutRetentionConfigurationResponse,
          PutRetentionConfigurationResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.PutRetentionConfiguration',
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
  _i1.HttpRequest buildRequest(PutRetentionConfigurationRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([PutRetentionConfigurationResponse? output]) => 200;
  @override
  PutRetentionConfigurationResponse buildOutput(
    PutRetentionConfigurationResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      PutRetentionConfigurationResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidParameterValueException,
            InvalidParameterValueException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          InvalidParameterValueException,
          builder: InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError<MaxNumberOfRetentionConfigurationsExceededException,
            MaxNumberOfRetentionConfigurationsExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'MaxNumberOfRetentionConfigurationsExceededException',
          ),
          _i1.ErrorKind.client,
          MaxNumberOfRetentionConfigurationsExceededException,
          builder:
              MaxNumberOfRetentionConfigurationsExceededException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutRetentionConfiguration';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<PutRetentionConfigurationResponse> run(
    PutRetentionConfigurationRequest input, {
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
