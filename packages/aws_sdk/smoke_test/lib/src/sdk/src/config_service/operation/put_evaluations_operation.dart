// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.put_evaluations_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_result_token_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/put_evaluations_response.dart'
    as _i3;

/// Used by an Lambda function to deliver evaluation results to Config. This action is required in every Lambda function that is invoked by an Config rule.
class PutEvaluationsOperation extends _i1.HttpOperation<
    _i2.PutEvaluationsRequest,
    _i2.PutEvaluationsRequest,
    _i3.PutEvaluationsResponse,
    _i3.PutEvaluationsResponse> {
  /// Used by an Lambda function to deliver evaluation results to Config. This action is required in every Lambda function that is invoked by an Config rule.
  PutEvaluationsOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.PutEvaluationsRequest, _i2.PutEvaluationsRequest,
          _i3.PutEvaluationsResponse, _i3.PutEvaluationsResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.PutEvaluations',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
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
  _i1.HttpRequest buildRequest(_i2.PutEvaluationsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.PutEvaluationsResponse? output]) => 200;
  @override
  _i3.PutEvaluationsResponse buildOutput(
    _i3.PutEvaluationsResponse payload,
    _i7.AWSStreamedHttpResponse response,
  ) =>
      _i3.PutEvaluationsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidParameterValueException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidParameterValueException,
          builder: _i9.InvalidParameterValueException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidResultTokenException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidResultTokenException,
          builder: _i10.InvalidResultTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigRuleException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchConfigRuleException,
          builder: _i11.NoSuchConfigRuleException.fromResponse,
        ),
      ];
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i12.Future<_i3.PutEvaluationsResponse> run(
    _i2.PutEvaluationsRequest input, {
    _i1.HttpClient? client,
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
