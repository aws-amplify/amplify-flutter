// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.batch_get_aggregate_resource_config_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/batch_get_aggregate_resource_config_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/no_such_configuration_aggregator_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i10;

/// Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty `unprocessedResourceIdentifiers` list.
///
/// *   The API does not return results for deleted resources.
///
/// *   The API does not return tags and relationships.
class BatchGetAggregateResourceConfigOperation extends _i1.HttpOperation<
    _i2.BatchGetAggregateResourceConfigRequest,
    _i2.BatchGetAggregateResourceConfigRequest,
    _i3.BatchGetAggregateResourceConfigResponse,
    _i3.BatchGetAggregateResourceConfigResponse> {
  /// Returns the current configuration items for resources that are present in your Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty `unprocessedResourceIdentifiers` list.
  ///
  /// *   The API does not return results for deleted resources.
  ///
  /// *   The API does not return tags and relationships.
  BatchGetAggregateResourceConfigOperation({
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
          _i2.BatchGetAggregateResourceConfigRequest,
          _i2.BatchGetAggregateResourceConfigRequest,
          _i3.BatchGetAggregateResourceConfigResponse,
          _i3.BatchGetAggregateResourceConfigResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.BatchGetAggregateResourceConfig',
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
          _i2.BatchGetAggregateResourceConfigRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.BatchGetAggregateResourceConfigResponse? output]) => 200;
  @override
  _i3.BatchGetAggregateResourceConfigResponse buildOutput(
    _i3.BatchGetAggregateResourceConfigResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.BatchGetAggregateResourceConfigResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'NoSuchConfigurationAggregatorException',
          ),
          _i1.ErrorKind.client,
          _i9.NoSuchConfigurationAggregatorException,
          builder: _i9.NoSuchConfigurationAggregatorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i10.ValidationException,
          builder: _i10.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'BatchGetAggregateResourceConfig';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.BatchGetAggregateResourceConfigResponse> run(
    _i2.BatchGetAggregateResourceConfigRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
