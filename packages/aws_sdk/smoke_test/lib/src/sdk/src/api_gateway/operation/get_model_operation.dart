// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.operation.get_model_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_model_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/model.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart';

/// Describes an existing model defined for a RestApi resource.
class GetModelOperation extends _i1
    .HttpOperation<GetModelRequestPayload, GetModelRequest, Model, Model> {
  /// Describes an existing model defined for a RestApi resource.
  GetModelOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
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
          .HttpProtocol<GetModelRequestPayload, GetModelRequest, Model, Model>>
      protocols = [
    _i3.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.apiGateway,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
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

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(GetModelRequest input) => _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/restapis/{restApiId}/models/{modelName}';
        b.queryParameters.add(
          'flatten',
          input.flatten.toString(),
        );
      });
  @override
  int successCode([Model? output]) => 200;
  @override
  Model buildOutput(
    Model payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      Model.fromResponse(
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
  String get runtimeTypeName => 'GetModel';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<Model> run(
    GetModelRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
