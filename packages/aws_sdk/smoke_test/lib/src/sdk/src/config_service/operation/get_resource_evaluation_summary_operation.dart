// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.operation.get_resource_evaluation_summary_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_evaluation_summary_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/get_resource_evaluation_summary_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_not_found_exception.dart'
    as _i9;

/// Returns a summary of resource evaluation for the specified resource evaluation ID from the proactive rules that were run. The results indicate which evaluation context was used to evaluate the rules, which resource details were evaluated, the evaluation mode that was run, and whether the resource details comply with the configuration of the proactive rules.
///
/// To see additional information about the evaluation result, such as which rule flagged a resource as NON_COMPLIANT, use the [GetComplianceDetailsByResource](https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html) API. For more information, see the [Examples](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples) section.
class GetResourceEvaluationSummaryOperation extends _i1.HttpOperation<
    _i2.GetResourceEvaluationSummaryRequest,
    _i2.GetResourceEvaluationSummaryRequest,
    _i3.GetResourceEvaluationSummaryResponse,
    _i3.GetResourceEvaluationSummaryResponse> {
  /// Returns a summary of resource evaluation for the specified resource evaluation ID from the proactive rules that were run. The results indicate which evaluation context was used to evaluate the rules, which resource details were evaluated, the evaluation mode that was run, and whether the resource details comply with the configuration of the proactive rules.
  ///
  /// To see additional information about the evaluation result, such as which rule flagged a resource as NON_COMPLIANT, use the [GetComplianceDetailsByResource](https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html) API. For more information, see the [Examples](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples) section.
  GetResourceEvaluationSummaryOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
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
          _i2.GetResourceEvaluationSummaryRequest,
          _i2.GetResourceEvaluationSummaryRequest,
          _i3.GetResourceEvaluationSummaryResponse,
          _i3.GetResourceEvaluationSummaryResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.GetResourceEvaluationSummary',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.GetResourceEvaluationSummaryRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetResourceEvaluationSummaryResponse? output]) => 200;
  @override
  _i3.GetResourceEvaluationSummaryResponse buildOutput(
    _i3.GetResourceEvaluationSummaryResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetResourceEvaluationSummaryResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ResourceNotFoundException,
            _i9.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i9.ResourceNotFoundException,
          builder: _i9.ResourceNotFoundException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'GetResourceEvaluationSummary';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetResourceEvaluationSummaryResponse> run(
    _i2.GetResourceEvaluationSummaryRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
