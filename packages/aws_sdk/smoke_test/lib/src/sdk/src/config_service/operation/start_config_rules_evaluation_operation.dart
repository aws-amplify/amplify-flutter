// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.operation.start_config_rules_evaluation_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

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
import 'package:smoke_test/src/sdk/src/config_service/model/limit_exceeded_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_in_use_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/start_config_rules_evaluation_response.dart'
    as _i3;

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
    _i2.StartConfigRulesEvaluationRequest,
    _i2.StartConfigRulesEvaluationRequest,
    _i3.StartConfigRulesEvaluationResponse,
    _i3.StartConfigRulesEvaluationResponse> {
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
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.StartConfigRulesEvaluationRequest,
          _i2.StartConfigRulesEvaluationRequest,
          _i3.StartConfigRulesEvaluationResponse,
          _i3.StartConfigRulesEvaluationResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.StartConfigRulesEvaluation',
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
  _i1.HttpRequest buildRequest(_i2.StartConfigRulesEvaluationRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.StartConfigRulesEvaluationResponse? output]) => 200;
  @override
  _i3.StartConfigRulesEvaluationResponse buildOutput(
    _i3.StartConfigRulesEvaluationResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.StartConfigRulesEvaluationResponse.fromResponse(
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
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i10.LimitExceededException,
          builder: _i10.LimitExceededException.fromResponse,
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
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ResourceInUseException',
          ),
          _i1.ErrorKind.client,
          _i12.ResourceInUseException,
          builder: _i12.ResourceInUseException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'StartConfigRulesEvaluation';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.StartConfigRulesEvaluationResponse> run(
    _i2.StartConfigRulesEvaluationRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i13.runZoned(
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
