// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.operation.start_remediation_execution_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/insufficient_permissions_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_remediation_configuration_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/start_remediation_execution_response.dart'
    as _i3;

/// Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.
///
/// You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.
class StartRemediationExecutionOperation extends _i1.HttpOperation<
    _i2.StartRemediationExecutionRequest,
    _i2.StartRemediationExecutionRequest,
    _i3.StartRemediationExecutionResponse,
    _i3.StartRemediationExecutionResponse> {
  /// Runs an on-demand remediation for the specified Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.
  ///
  /// You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.
  StartRemediationExecutionOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.StartRemediationExecutionRequest,
          _i2.StartRemediationExecutionRequest,
          _i3.StartRemediationExecutionResponse,
          _i3.StartRemediationExecutionResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.StartRemediationExecution',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.configService,
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
  _i1.HttpRequest buildRequest(_i2.StartRemediationExecutionRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.StartRemediationExecutionResponse? output]) => 200;
  @override
  _i3.StartRemediationExecutionResponse buildOutput(
    _i3.StartRemediationExecutionResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.StartRemediationExecutionResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InsufficientPermissionsException',
          ),
          _i1.ErrorKind.client,
          _i9.InsufficientPermissionsException,
          builder: _i9.InsufficientPermissionsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidParameterValueException,
          builder: _i10.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchRemediationConfigurationException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchRemediationConfigurationException,
          builder: _i11.NoSuchRemediationConfigurationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'StartRemediationExecution';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.StartRemediationExecutionResponse> run(
    _i2.StartRemediationExecutionRequest input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
