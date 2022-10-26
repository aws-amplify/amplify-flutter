// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.config_service.operation.describe_aggregate_compliance_byconformance_packs_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_byconformance_pack.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_byconformance_packs_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_aggregate_compliance_byconformance_packs_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i14;

/// Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
///
/// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
class DescribeAggregateComplianceByconformancePacksOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeAggregateComplianceByconformancePacksRequest,
        _i2.DescribeAggregateComplianceByconformancePacksRequest,
        _i3.DescribeAggregateComplianceByconformancePacksResponse,
        _i3.DescribeAggregateComplianceByconformancePacksResponse,
        String,
        int,
        _i4.BuiltList<_i5.AggregateComplianceByconformancePack>> {
  /// Returns a list of the conformance packs and their associated compliance status with the count of compliant and noncompliant Config rules within each conformance pack. Also returns the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.
  ///
  /// The results can return an empty result page, but if you have a `nextToken`, the results are displayed on the next page.
  DescribeAggregateComplianceByconformancePacksOperation({
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
              _i2.DescribeAggregateComplianceByconformancePacksRequest,
              _i2.DescribeAggregateComplianceByconformancePacksRequest,
              _i3.DescribeAggregateComplianceByconformancePacksResponse,
              _i3.DescribeAggregateComplianceByconformancePacksResponse>>
      protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.DescribeAggregateComplianceByConformancePacks',
        ),
        _i7.WithSigV4(
          region: _region,
          service: _i9.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.0'),
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
          _i2.DescribeAggregateComplianceByconformancePacksRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [_i3.DescribeAggregateComplianceByconformancePacksResponse?
              output]) =>
      200;
  @override
  _i3.DescribeAggregateComplianceByconformancePacksResponse buildOutput(
    _i3.DescribeAggregateComplianceByconformancePacksResponse payload,
    _i9.AWSStreamedHttpResponse response,
  ) =>
      _i3.DescribeAggregateComplianceByconformancePacksResponse.fromResponse(
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
          _i11.InvalidLimitException,
          builder: _i11.InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidNextTokenException,
          builder: _i12.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationAggregatorException',
          ),
          _i1.ErrorKind.client,
          _i13.NoSuchConfigurationAggregatorException,
          builder: _i13.NoSuchConfigurationAggregatorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i14.ValidationException,
          builder: _i14.ValidationException.fromResponse,
        ),
      ];
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i15.Future<_i3.DescribeAggregateComplianceByconformancePacksResponse> run(
    _i2.DescribeAggregateComplianceByconformancePacksRequest input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i15.runZoned(
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
  String? getToken(
          _i3.DescribeAggregateComplianceByconformancePacksResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.AggregateComplianceByconformancePack> getItems(
          _i3.DescribeAggregateComplianceByconformancePacksResponse output) =>
      output.aggregateComplianceByconformancePacks ?? _i4.BuiltList();
  @override
  _i2.DescribeAggregateComplianceByconformancePacksRequest rebuildInput(
    _i2.DescribeAggregateComplianceByconformancePacksRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        if (token != null) {
          b.nextToken = token;
        }
        b.limit = pageSize;
      });
}
