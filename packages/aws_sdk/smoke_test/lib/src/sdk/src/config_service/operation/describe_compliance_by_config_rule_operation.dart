// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.describe_compliance_by_config_rule_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart';

/// Indicates whether the specified Config rules are compliant. If a rule is noncompliant, this action returns the number of Amazon Web Services resources that do not comply with the rule.
///
/// A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.
///
/// If Config has no current evaluation results for the rule, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions:
///
/// *   Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.
///
/// *   The rule's Lambda function is failing to send evaluation results to Config. Verify that the role you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the Lambda execution role includes the `config:PutEvaluations` permission.
///
/// *   The rule's Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.
class DescribeComplianceByConfigRuleOperation extends _i1
    .PaginatedHttpOperation<
        DescribeComplianceByConfigRuleRequest,
        DescribeComplianceByConfigRuleRequest,
        DescribeComplianceByConfigRuleResponse,
        DescribeComplianceByConfigRuleResponse,
        String,
        void,
        _i2.BuiltList<ComplianceByConfigRule>> {
  /// Indicates whether the specified Config rules are compliant. If a rule is noncompliant, this action returns the number of Amazon Web Services resources that do not comply with the rule.
  ///
  /// A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.
  ///
  /// If Config has no current evaluation results for the rule, it returns `INSUFFICIENT_DATA`. This result might indicate one of the following conditions:
  ///
  /// *   Config has never invoked an evaluation for the rule. To check whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.
  ///
  /// *   The rule's Lambda function is failing to send evaluation results to Config. Verify that the role you assigned to your configuration recorder includes the `config:PutEvaluations` permission. If the rule is a custom rule, verify that the Lambda execution role includes the `config:PutEvaluations` permission.
  ///
  /// *   The rule's Lambda function has returned `NOT_APPLICABLE` for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.
  DescribeComplianceByConfigRuleOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
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
          DescribeComplianceByConfigRuleRequest,
          DescribeComplianceByConfigRuleRequest,
          DescribeComplianceByConfigRuleResponse,
          DescribeComplianceByConfigRuleResponse>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DescribeComplianceByConfigRule',
            ),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(DescribeComplianceByConfigRuleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeComplianceByConfigRuleResponse? output]) => 200;
  @override
  DescribeComplianceByConfigRuleResponse buildOutput(
    DescribeComplianceByConfigRuleResponse payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeComplianceByConfigRuleResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidNextTokenException, InvalidNextTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          InvalidNextTokenException,
          builder: InvalidNextTokenException.fromResponse,
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
        _i1.SmithyError<NoSuchConfigRuleException, NoSuchConfigRuleException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigRuleException',
          ),
          _i1.ErrorKind.client,
          NoSuchConfigRuleException,
          builder: NoSuchConfigRuleException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeComplianceByConfigRule';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeComplianceByConfigRuleResponse> run(
    DescribeComplianceByConfigRuleRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(DescribeComplianceByConfigRuleResponse output) =>
      output.nextToken;
  @override
  _i2.BuiltList<ComplianceByConfigRule> getItems(
          DescribeComplianceByConfigRuleResponse output) =>
      output.complianceByConfigRules ?? _i2.BuiltList();
  @override
  DescribeComplianceByConfigRuleRequest rebuildInput(
    DescribeComplianceByConfigRuleRequest input,
    String token,
    void pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
      });
}
