// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.operation.import_rest_api_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_rest_api_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/limit_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_api.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i15;

/// A feature of the API Gateway control service for creating a new API from an external API definition file.
class ImportRestApiOperation extends _i1.HttpOperation<_i2.Uint8List,
    _i3.ImportRestApiRequest, _i4.RestApi, _i4.RestApi> {
  /// A feature of the API Gateway control service for creating a new API from an external API definition file.
  ImportRestApiOperation({
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
      _i1.HttpProtocol<_i2.Uint8List, _i3.ImportRestApiRequest, _i4.RestApi,
          _i4.RestApi>> protocols = [
    _i6.RestJson1Protocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.apiGateway,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i6.WithSdkInvocationId(),
            const _i6.WithSdkRequest(),
            const _i1.WithHeader(
              'Accept',
              'application/json',
            ),
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
  _i1.HttpRequest buildRequest(_i3.ImportRestApiRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/restapis?mode=import';
        if (input.failOnWarnings != null) {
          b.queryParameters.add(
            'failonwarnings',
            input.failOnWarnings!.toString(),
          );
        }
        if (input.parameters != null) {
          for (var entry in input.parameters!.toMap().entries) {
            b.queryParameters.add(
              entry.key,
              entry.value,
            );
          }
        }
      });
  @override
  int successCode([_i4.RestApi? output]) => 201;
  @override
  _i4.RestApi buildOutput(
    _i4.RestApi payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i4.RestApi.fromResponse(
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
          _i10.BadRequestException,
          statusCode: 400,
          builder: _i10.BadRequestException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'ConflictException',
          ),
          _i1.ErrorKind.client,
          _i11.ConflictException,
          statusCode: 409,
          builder: _i11.ConflictException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i12.LimitExceededException,
          statusCode: 429,
          builder: _i12.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.NotFoundException,
          statusCode: 404,
          builder: _i13.NotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i14.TooManyRequestsException,
          statusCode: 429,
          builder: _i14.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'UnauthorizedException',
          ),
          _i1.ErrorKind.client,
          _i15.UnauthorizedException,
          statusCode: 401,
          builder: _i15.UnauthorizedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ImportRestApi';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i4.RestApi> run(
    _i3.ImportRestApiRequest input, {
    _i8.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }
}
