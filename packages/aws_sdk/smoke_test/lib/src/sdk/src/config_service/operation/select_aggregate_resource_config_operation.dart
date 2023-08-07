// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.select_aggregate_resource_config_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_expression_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/select_aggregate_resource_config_response.dart';

/// Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties.
///
/// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
///
/// If you run an aggregation query (i.e., using `GROUP BY` or using aggregate functions such as `COUNT`; e.g., `SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 500.
///
/// If you run a non-aggregation query (i.e., not using `GROUP BY` or aggregate function; e.g., `SELECT * WHERE resourceType = 'AWS::IAM::Role'`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 25.
class SelectAggregateResourceConfigOperation extends _i1.PaginatedHttpOperation<
    SelectAggregateResourceConfigRequest,
    SelectAggregateResourceConfigRequest,
    SelectAggregateResourceConfigResponse,
    SelectAggregateResourceConfigResponse,
    String,
    int,
    _i2.BuiltList<String>> {
  /// Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of Amazon Web Services resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties.
  ///
  /// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
  ///
  /// If you run an aggregation query (i.e., using `GROUP BY` or using aggregate functions such as `COUNT`; e.g., `SELECT resourceId, COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY resourceId`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 500.
  ///
  /// If you run a non-aggregation query (i.e., not using `GROUP BY` or aggregate function; e.g., `SELECT * WHERE resourceType = 'AWS::IAM::Role'`) and do not specify the `MaxResults` or the `Limit` query parameters, the default page size is set to 25.
  SelectAggregateResourceConfigOperation({
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
          SelectAggregateResourceConfigRequest,
          SelectAggregateResourceConfigRequest,
          SelectAggregateResourceConfigResponse,
          SelectAggregateResourceConfigResponse>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.SelectAggregateResourceConfig',
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
  _i1.HttpRequest buildRequest(SelectAggregateResourceConfigRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([SelectAggregateResourceConfigResponse? output]) => 200;
  @override
  SelectAggregateResourceConfigResponse buildOutput(
    SelectAggregateResourceConfigResponse payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      SelectAggregateResourceConfigResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidExpressionException, InvalidExpressionException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidExpressionException',
          ),
          _i1.ErrorKind.client,
          InvalidExpressionException,
          builder: InvalidExpressionException.fromResponse,
        ),
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
      ];
  @override
  String get runtimeTypeName => 'SelectAggregateResourceConfig';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<SelectAggregateResourceConfigResponse> run(
    SelectAggregateResourceConfigRequest input, {
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
  String? getToken(SelectAggregateResourceConfigResponse output) =>
      output.nextToken;
  @override
  _i2.BuiltList<String> getItems(
          SelectAggregateResourceConfigResponse output) =>
      output.results ?? _i2.BuiltList();
  @override
  SelectAggregateResourceConfigRequest rebuildInput(
    SelectAggregateResourceConfigRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.limit = pageSize;
      });
}
