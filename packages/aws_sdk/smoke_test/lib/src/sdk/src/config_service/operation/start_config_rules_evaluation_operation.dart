// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.start_config_rules_evaluation_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_response.dart';

/// Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use `StartConfigRulesEvaluation` when you want to test that a rule you updated is working as expected. `StartConfigRulesEvaluation` does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources.
///
/// You can specify up to 25 Config rules per request.
///
/// An existing `StartConfigRulesEvaluation` call for the specified rules must complete before you can call the API again. If you chose to have Config stream to an Amazon SNS topic, you will receive a `ConfigRuleEvaluationStarted` notification when the evaluation starts.
///
/// You don't need to call the `StartConfigRulesEvaluation` API to run an evaluation for a new rule. When you create a rule, Config evaluates your resources against the rule automatically.
///
/// The `StartConfigRulesEvaluation` API is useful if you want to run on-demand evaluations, such as the following example:
///
/// 1.  You have a custom rule that evaluates your IAM resources every 24 hours.
///
/// 2.  You update your Lambda function to add additional conditions to your rule.
///
/// 3.  Instead of waiting for the next periodic evaluation, you call the `StartConfigRulesEvaluation` API.
///
/// 4.  Config invokes your Lambda function and evaluates your IAM resources.
///
/// 5.  Your custom rule will still run periodic evaluations every 24 hours.
class StartConfigRulesEvaluationOperation extends _i1.HttpOperation<
    StartConfigRulesEvaluationRequest,
    StartConfigRulesEvaluationRequest,
    StartConfigRulesEvaluationResponse,
    StartConfigRulesEvaluationResponse> {
  /// Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use `StartConfigRulesEvaluation` when you want to test that a rule you updated is working as expected. `StartConfigRulesEvaluation` does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources.
  ///
  /// You can specify up to 25 Config rules per request.
  ///
  /// An existing `StartConfigRulesEvaluation` call for the specified rules must complete before you can call the API again. If you chose to have Config stream to an Amazon SNS topic, you will receive a `ConfigRuleEvaluationStarted` notification when the evaluation starts.
  ///
  /// You don't need to call the `StartConfigRulesEvaluation` API to run an evaluation for a new rule. When you create a rule, Config evaluates your resources against the rule automatically.
  ///
  /// The `StartConfigRulesEvaluation` API is useful if you want to run on-demand evaluations, such as the following example:
  ///
  /// 1.  You have a custom rule that evaluates your IAM resources every 24 hours.
  ///
  /// 2.  You update your Lambda function to add additional conditions to your rule.
  ///
  /// 3.  Instead of waiting for the next periodic evaluation, you call the `StartConfigRulesEvaluation` API.
  ///
  /// 4.  Config invokes your Lambda function and evaluates your IAM resources.
  ///
  /// 5.  Your custom rule will still run periodic evaluations every 24 hours.
  StartConfigRulesEvaluationOperation({
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
          StartConfigRulesEvaluationRequest,
          StartConfigRulesEvaluationRequest,
          StartConfigRulesEvaluationResponse,
          StartConfigRulesEvaluationResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.StartConfigRulesEvaluation',
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
  _i1.HttpRequest buildRequest(StartConfigRulesEvaluationRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([StartConfigRulesEvaluationResponse? output]) => 200;
  @override
  StartConfigRulesEvaluationResponse buildOutput(
    StartConfigRulesEvaluationResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      StartConfigRulesEvaluationResponse.fromResponse(
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
        _i1.SmithyError<LimitExceededException, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<NoSuchConfigRuleException, NoSuchConfigRuleException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigRuleException',
          ),
          _i1.ErrorKind.client,
          NoSuchConfigRuleException,
          builder: NoSuchConfigRuleException.fromResponse,
        ),
        _i1.SmithyError<ResourceInUseException, ResourceInUseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          ResourceInUseException,
          builder: ResourceInUseException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'StartConfigRulesEvaluation';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<StartConfigRulesEvaluationResponse> run(
    StartConfigRulesEvaluationRequest input, {
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
