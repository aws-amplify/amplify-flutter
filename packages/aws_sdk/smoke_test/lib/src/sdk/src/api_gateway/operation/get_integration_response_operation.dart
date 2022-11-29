// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.operation.get_integration_response_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_integration_response_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/integration_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i12;

/// Represents a get integration response.
class GetIntegrationResponseOperation extends _i1.HttpOperation<
    _i2.GetIntegrationResponseRequestPayload,
    _i2.GetIntegrationResponseRequest,
    _i3.IntegrationResponse,
    _i3.IntegrationResponse> {
  /// Represents a get integration response.
  GetIntegrationResponseOperation({
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
          _i2.GetIntegrationResponseRequestPayload,
          _i2.GetIntegrationResponseRequest,
          _i3.IntegrationResponse,
          _i3.IntegrationResponse>> protocols = [
    _i5.RestJson1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithNoHeader('Content-Length'),
        const _i1.WithNoHeader('Content-Type'),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.apiGateway,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
        const _i1.WithHeader(
          'Accept',
          'application/json',
        ),
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
  _i1.HttpRequest buildRequest(_i2.GetIntegrationResponseRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path =
            r'/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}';
      });
  @override
  int successCode([_i3.IntegrationResponse? output]) => 200;
  @override
  _i3.IntegrationResponse buildOutput(
    _i3.IntegrationResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.IntegrationResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          _i9.BadRequestException,
          statusCode: 400,
          builder: _i9.BadRequestException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i10.NotFoundException,
          statusCode: 404,
          builder: _i10.NotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i11.TooManyRequestsException,
          statusCode: 429,
          builder: _i11.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'UnauthorizedException',
          ),
          _i1.ErrorKind.client,
          _i12.UnauthorizedException,
          statusCode: 401,
          builder: _i12.UnauthorizedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetIntegrationResponse';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.IntegrationResponse> run(
    _i2.GetIntegrationResponseRequest input, {
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
