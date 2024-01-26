// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.api_gateway.operation.get_rest_apis_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:rest_json1_v1/src/api_gateway/common/endpoint_resolver.dart';
import 'package:rest_json1_v1/src/api_gateway/common/serializers.dart';
import 'package:rest_json1_v1/src/api_gateway/model/bad_request_exception.dart';
import 'package:rest_json1_v1/src/api_gateway/model/get_rest_apis_request.dart';
import 'package:rest_json1_v1/src/api_gateway/model/rest_api.dart';
import 'package:rest_json1_v1/src/api_gateway/model/rest_apis.dart';
import 'package:rest_json1_v1/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:rest_json1_v1/src/api_gateway/model/unauthorized_exception.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

class GetRestApisOperation extends _i1.PaginatedHttpOperation<
    GetRestApisRequestPayload,
    GetRestApisRequest,
    RestApis,
    RestApis,
    String,
    int,
    _i2.BuiltList<RestApi>> {
  GetRestApisOperation({
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
      _i1.HttpProtocol<GetRestApisRequestPayload, GetRestApisRequest, RestApis,
          RestApis>> protocols = [
    _i4.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.apiGateway,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
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
  _i1.HttpRequest buildRequest(GetRestApisRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/restapis';
        if (input.position != null) {
          b.queryParameters.add(
            'position',
            input.position!,
          );
        }
        if (input.limit != null) {
          b.queryParameters.add(
            'limit',
            input.limit!.toString(),
          );
        }
      });

  @override
  int successCode([RestApis? output]) => 200;

  @override
  RestApis buildOutput(
    RestApis payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      RestApis.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<BadRequestException, BadRequestException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          BadRequestException,
          statusCode: 400,
          builder: BadRequestException.fromResponse,
        ),
        _i1.SmithyError<TooManyRequestsExceptionPayload,
            TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          TooManyRequestsException,
          statusCode: 429,
          builder: TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<UnauthorizedException, UnauthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'UnauthorizedException',
          ),
          _i1.ErrorKind.client,
          UnauthorizedException,
          statusCode: 401,
          builder: UnauthorizedException.fromResponse,
        ),
      ];

  @override
  String get runtimeTypeName => 'GetRestApis';

  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<RestApis> run(
    GetRestApisRequest input, {
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
  String? getToken(RestApis output) => output.position;

  @override
  _i2.BuiltList<RestApi> getItems(RestApis output) =>
      output.items ?? _i2.BuiltList();

  @override
  GetRestApisRequest rebuildInput(
    GetRestApisRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.position = token;
        if (pageSize != null) {
          b.limit = pageSize;
        }
      });
}
