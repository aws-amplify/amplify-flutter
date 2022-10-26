// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.describe_aggregate_compliance_by_config_rules_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_config_rules_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i12;

/// Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results.
///
/// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
class DescribeAggregateComplianceByConfigRulesOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeAggregateComplianceByConfigRulesRequest,
        _i2.DescribeAggregateComplianceByConfigRulesRequest,
        _i3.DescribeAggregateComplianceByConfigRulesResponse,
        _i3.DescribeAggregateComplianceByConfigRulesResponse,
        String,
        int,
        _i3.DescribeAggregateComplianceByConfigRulesResponse> {
  /// Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. Does not display rules that do not have compliance results.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  DescribeAggregateComplianceByConfigRulesOperation({
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
          _i2.DescribeAggregateComplianceByConfigRulesRequest,
          _i2.DescribeAggregateComplianceByConfigRulesRequest,
          _i3.DescribeAggregateComplianceByConfigRulesResponse,
          _i3.DescribeAggregateComplianceByConfigRulesResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.DescribeAggregateComplianceByConfigRules',
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
  _i1.HttpRequest buildRequest(
          _i2.DescribeAggregateComplianceByConfigRulesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [_i3.DescribeAggregateComplianceByConfigRulesResponse? output]) =>
      200;
  @override
  _i3.DescribeAggregateComplianceByConfigRulesResponse buildOutput(
    _i3.DescribeAggregateComplianceByConfigRulesResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeAggregateComplianceByConfigRulesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidLimitException,
          builder: _i9.InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidNextTokenException,
          builder: _i10.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationAggregatorException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchConfigurationAggregatorException,
          builder: _i11.NoSuchConfigurationAggregatorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i12.ValidationException,
          builder: _i12.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeAggregateComplianceByConfigRules';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeAggregateComplianceByConfigRulesResponse> run(
    _i2.DescribeAggregateComplianceByConfigRulesRequest input, {
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

  @override
  String? getToken(
          _i3.DescribeAggregateComplianceByConfigRulesResponse output) =>
      output.nextToken;
  @override
  _i3.DescribeAggregateComplianceByConfigRulesResponse getItems(
          _i3.DescribeAggregateComplianceByConfigRulesResponse output) =>
      output;
  @override
  _i2.DescribeAggregateComplianceByConfigRulesRequest rebuildInput(
    _i2.DescribeAggregateComplianceByConfigRulesRequest input,
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
