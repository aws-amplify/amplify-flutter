// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.operation.select_resource_config_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_expression_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/select_resource_config_response.dart'
    as _i3;

/// Accepts a structured query language (SQL) `SELECT` command, performs the corresponding search, and returns resource configurations matching the properties.
///
/// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
class SelectResourceConfigOperation extends _i1.PaginatedHttpOperation<
    _i2.SelectResourceConfigRequest,
    _i2.SelectResourceConfigRequest,
    _i3.SelectResourceConfigResponse,
    _i3.SelectResourceConfigResponse,
    String,
    int,
    _i4.BuiltList<String>> {
  /// Accepts a structured query language (SQL) `SELECT` command, performs the corresponding search, and returns resource configurations matching the properties.
  ///
  /// For more information about query components, see the [**Query Components**](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html) section in the _Config Developer Guide_.
  SelectResourceConfigOperation({
    required String region,
    Uri? baseUri,
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
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
          _i2.SelectResourceConfigRequest,
          _i2.SelectResourceConfigRequest,
          _i3.SelectResourceConfigResponse,
          _i3.SelectResourceConfigResponse>> protocols = [
    _i6.AwsJson1_1Protocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.SelectResourceConfig',
            ),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i6.WithSdkInvocationId(),
            const _i6.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i6.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.SelectResourceConfigRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.SelectResourceConfigResponse? output]) => 200;
  @override
  _i3.SelectResourceConfigResponse buildOutput(
    _i3.SelectResourceConfigResponse payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i3.SelectResourceConfigResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidExpressionException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidExpressionException,
          builder: _i10.InvalidExpressionException.fromResponse,
        ),
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
      ];
  @override
  String get runtimeTypeName => 'SelectResourceConfig';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.SelectResourceConfigResponse> run(
    _i2.SelectResourceConfigRequest input, {
    _i8.AWSHttpClient? client,
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
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.SelectResourceConfigResponse output) => output.nextToken;
  @override
  _i4.BuiltList<String> getItems(_i3.SelectResourceConfigResponse output) =>
      output.results ?? _i4.BuiltList();
  @override
  _i2.SelectResourceConfigRequest rebuildInput(
    _i2.SelectResourceConfigRequest input,
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
