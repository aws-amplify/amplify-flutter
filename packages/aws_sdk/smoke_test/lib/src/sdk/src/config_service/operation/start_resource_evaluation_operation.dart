// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.start_resource_evaluation_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/idempotent_parameter_mismatch.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_resource_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_resource_evaluation_response.dart';

/// Runs an on-demand evaluation for the specified resource to determine whether the resource details will comply with configured Config rules. You can also use it for evaluation purposes. Config recommends using an evaluation context. It runs an execution against the resource details with all of the Config rules in your account that match with the specified proactive mode and resource type.
///
/// Ensure you have the `cloudformation:DescribeType` role setup to validate the resource type schema.
///
/// You can find the [Resource type schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html) in "_Amazon Web Services public extensions_" within the CloudFormation registry or with the following CLI commmand: `aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE`.
///
/// For more information, see [Managing extensions through the CloudFormation registry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view) and [Amazon Web Services resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
class StartResourceEvaluationOperation extends _i1.HttpOperation<
    StartResourceEvaluationRequest,
    StartResourceEvaluationRequest,
    StartResourceEvaluationResponse,
    StartResourceEvaluationResponse> {
  /// Runs an on-demand evaluation for the specified resource to determine whether the resource details will comply with configured Config rules. You can also use it for evaluation purposes. Config recommends using an evaluation context. It runs an execution against the resource details with all of the Config rules in your account that match with the specified proactive mode and resource type.
  ///
  /// Ensure you have the `cloudformation:DescribeType` role setup to validate the resource type schema.
  ///
  /// You can find the [Resource type schema](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html) in "_Amazon Web Services public extensions_" within the CloudFormation registry or with the following CLI commmand: `aws cloudformation describe-type --type-name "AWS::S3::Bucket" --type RESOURCE`.
  ///
  /// For more information, see [Managing extensions through the CloudFormation registry](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view) and [Amazon Web Services resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
  StartResourceEvaluationOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
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
          StartResourceEvaluationRequest,
          StartResourceEvaluationRequest,
          StartResourceEvaluationResponse,
          StartResourceEvaluationResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.StartResourceEvaluation',
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
  _i1.HttpRequest buildRequest(StartResourceEvaluationRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([StartResourceEvaluationResponse? output]) => 200;
  @override
  StartResourceEvaluationResponse buildOutput(
    StartResourceEvaluationResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      StartResourceEvaluationResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<IdempotentParameterMismatch,
            IdempotentParameterMismatch>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'IdempotentParameterMismatch',
          ),
          _i1.ErrorKind.client,
          IdempotentParameterMismatch,
          statusCode: 400,
          builder: IdempotentParameterMismatch.fromResponse,
        ),
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
      ];
  @override
  String get runtimeTypeName => 'StartResourceEvaluation';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<StartResourceEvaluationResponse> run(
    StartResourceEvaluationRequest input, {
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
