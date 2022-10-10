// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.describe_compliance_by_config_rule_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_compliance_by_config_rule_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_parameter_value_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_config_rule_exception.dart'
    as _i13;

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
class DescribeComplianceByConfigRuleOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeComplianceByConfigRuleRequest,
        _i2.DescribeComplianceByConfigRuleRequest,
        _i3.DescribeComplianceByConfigRuleResponse,
        _i3.DescribeComplianceByConfigRuleResponse,
        String,
        void,
        _i4.BuiltList<_i5.ComplianceByConfigRule>> {
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
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.DescribeComplianceByConfigRuleRequest,
          _i2.DescribeComplianceByConfigRuleRequest,
          _i3.DescribeComplianceByConfigRuleResponse,
          _i3.DescribeComplianceByConfigRuleResponse>> protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.DescribeComplianceByConfigRule',
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
          _i2.DescribeComplianceByConfigRuleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeComplianceByConfigRuleResponse? output]) => 200;
  @override
  _i3.DescribeComplianceByConfigRuleResponse buildOutput(
    _i3.DescribeComplianceByConfigRuleResponse payload,
    _i9.AWSStreamedHttpResponse response,
  ) =>
      _i3.DescribeComplianceByConfigRuleResponse.fromResponse(
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
            shape: 'NoSuchConfigRuleException',
          ),
          _i1.ErrorKind.client,
          _i13.NoSuchConfigRuleException,
          builder: _i13.NoSuchConfigRuleException.fromResponse,
        ),
      ];
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i14.Future<_i3.DescribeComplianceByConfigRuleResponse> run(
    _i2.DescribeComplianceByConfigRuleRequest input, {
    _i1.HttpClient? client,
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
  String? getToken(_i3.DescribeComplianceByConfigRuleResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.ComplianceByConfigRule> getItems(
          _i3.DescribeComplianceByConfigRuleResponse output) =>
      output.complianceByConfigRules ?? _i4.BuiltList();
  @override
  _i2.DescribeComplianceByConfigRuleRequest rebuildInput(
    _i2.DescribeComplianceByConfigRuleRequest input,
    String token,
    void pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
      });
}
