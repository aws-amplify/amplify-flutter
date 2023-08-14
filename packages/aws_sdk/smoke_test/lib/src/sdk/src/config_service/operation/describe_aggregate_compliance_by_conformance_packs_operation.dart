// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.describe_aggregate_compliance_by_conformance_packs_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_conformance_pack.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_by_conformance_packs_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart';

/// Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
///
/// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
class DescribeAggregateComplianceByConformancePacksOperation
    extends _i1.PaginatedHttpOperation<
        DescribeAggregateComplianceByConformancePacksRequest,
        DescribeAggregateComplianceByConformancePacksRequest,
        DescribeAggregateComplianceByConformancePacksResponse,
        DescribeAggregateComplianceByConformancePacksResponse,
        String,
        int,
        _i2.BuiltList<AggregateComplianceByConformancePack>> {
  /// Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  DescribeAggregateComplianceByConformancePacksOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
          DescribeAggregateComplianceByConformancePacksRequest,
          DescribeAggregateComplianceByConformancePacksRequest,
          DescribeAggregateComplianceByConformancePacksResponse,
          DescribeAggregateComplianceByConformancePacksResponse>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.DescribeAggregateComplianceByConformancePacks',
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
  _i1.HttpRequest buildRequest(
          DescribeAggregateComplianceByConformancePacksRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [DescribeAggregateComplianceByConformancePacksResponse? output]) =>
      200;
  @override
  DescribeAggregateComplianceByConformancePacksResponse buildOutput(
    DescribeAggregateComplianceByConformancePacksResponse payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeAggregateComplianceByConformancePacksResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidLimitException, InvalidLimitException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          InvalidLimitException,
          builder: InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError<InvalidNextTokenException, InvalidNextTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          InvalidNextTokenException,
          builder: InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError<NoSuchConfigurationAggregatorException,
            NoSuchConfigurationAggregatorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationAggregatorException',
          ),
          _i1.ErrorKind.client,
          NoSuchConfigurationAggregatorException,
          builder: NoSuchConfigurationAggregatorException.fromResponse,
        ),
        _i1.SmithyError<ValidationException, ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          ValidationException,
          builder: ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DescribeAggregateComplianceByConformancePacks';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeAggregateComplianceByConformancePacksResponse>
      run(
    DescribeAggregateComplianceByConformancePacksRequest input, {
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
  String? getToken(
          DescribeAggregateComplianceByConformancePacksResponse output) =>
      output.nextToken;
  @override
  _i2.BuiltList<AggregateComplianceByConformancePack> getItems(
          DescribeAggregateComplianceByConformancePacksResponse output) =>
      output.aggregateComplianceByConformancePacks ?? _i2.BuiltList();
  @override
  DescribeAggregateComplianceByConformancePacksRequest rebuildInput(
    DescribeAggregateComplianceByConformancePacksRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.limit = pageSize;
      });
}
