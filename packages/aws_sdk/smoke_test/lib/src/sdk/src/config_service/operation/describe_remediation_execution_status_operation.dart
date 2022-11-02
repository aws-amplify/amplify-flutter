// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.describe_remediation_execution_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_remediation_execution_status_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_remediation_configuration_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/remediation_execution_status.dart'
    as _i5;

/// Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.
class DescribeRemediationExecutionStatusOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeRemediationExecutionStatusRequest,
        _i2.DescribeRemediationExecutionStatusRequest,
        _i3.DescribeRemediationExecutionStatusResponse,
        _i3.DescribeRemediationExecutionStatusResponse,
        String,
        int,
        _i4.BuiltList<_i5.RemediationExecutionStatus>> {
  /// Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.
  DescribeRemediationExecutionStatusOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.DescribeRemediationExecutionStatusRequest,
          _i2.DescribeRemediationExecutionStatusRequest,
          _i3.DescribeRemediationExecutionStatusResponse,
          _i3.DescribeRemediationExecutionStatusResponse>> protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.DescribeRemediationExecutionStatus',
        ),
        _i7.WithSigV4(
          region: _region,
          service: _i9.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i7.WithSdkInvocationId(),
        const _i7.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(
          _i2.DescribeRemediationExecutionStatusRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeRemediationExecutionStatusResponse? output]) =>
      200;
  @override
  _i3.DescribeRemediationExecutionStatusResponse buildOutput(
    _i3.DescribeRemediationExecutionStatusResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeRemediationExecutionStatusResponse.fromResponse(
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
            shape: 'NoSuchRemediationConfigurationException',
          ),
          _i1.ErrorKind.client,
          _i13.NoSuchRemediationConfigurationException,
          builder: _i13.NoSuchRemediationConfigurationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeRemediationExecutionStatus';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeRemediationExecutionStatusResponse> run(
    _i2.DescribeRemediationExecutionStatusRequest input, {
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
  String? getToken(_i3.DescribeRemediationExecutionStatusResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.RemediationExecutionStatus> getItems(
          _i3.DescribeRemediationExecutionStatusResponse output) =>
      output.remediationExecutionStatuses ?? _i4.BuiltList();
  @override
  _i2.DescribeRemediationExecutionStatusRequest rebuildInput(
    _i2.DescribeRemediationExecutionStatusRequest input,
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
