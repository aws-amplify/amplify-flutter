// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.operation.import_rest_api_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/import_rest_api_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/limit_exceeded_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/rest_api.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart';

/// A feature of the API Gateway control service for creating a new API from an external API definition file.
class ImportRestApiOperation extends _i1
    .HttpOperation<_i2.Uint8List, ImportRestApiRequest, RestApi, RestApi> {
  /// A feature of the API Gateway control service for creating a new API from an external API definition file.
  ImportRestApiOperation({
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
          _i1
          .HttpProtocol<_i2.Uint8List, ImportRestApiRequest, RestApi, RestApi>>
      protocols = [
    _i4.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
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
  _i1.HttpRequest buildRequest(ImportRestApiRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/restapis?mode=import';
        b.queryParameters.add(
          'failonwarnings',
          input.failOnWarnings.toString(),
        );
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
  int successCode([RestApi? output]) => 201;
  @override
  RestApi buildOutput(
    RestApi payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      RestApi.fromResponse(
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
        _i1.SmithyError<ConflictException, ConflictException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'ConflictException',
          ),
          _i1.ErrorKind.client,
          ConflictException,
          statusCode: 409,
          builder: ConflictException.fromResponse,
        ),
        _i1.SmithyError<LimitExceededExceptionPayload, LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          LimitExceededException,
          statusCode: 429,
          builder: LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<NotFoundException, NotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          NotFoundException,
          statusCode: 404,
          builder: NotFoundException.fromResponse,
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
  String get runtimeTypeName => 'ImportRestApi';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<RestApi> run(
    ImportRestApiRequest input, {
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
}
