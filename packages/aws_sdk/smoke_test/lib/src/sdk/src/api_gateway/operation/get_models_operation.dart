// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.operation.get_models_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_models_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/model.dart' as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/models.dart' as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i14;

/// Describes existing Models defined for a RestApi resource.
class GetModelsOperation extends _i1.PaginatedHttpOperation<
    _i2.GetModelsRequestPayload,
    _i2.GetModelsRequest,
    _i3.Models,
    _i3.Models,
    String,
    int,
    _i4.BuiltList<_i5.Model>> {
  /// Describes existing Models defined for a RestApi resource.
  GetModelsOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.GetModelsRequestPayload, _i2.GetModelsRequest,
          _i3.Models, _i3.Models>> protocols = [
    _i7.RestJson1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithNoHeader('Content-Length'),
        const _i1.WithNoHeader('Content-Type'),
        _i7.WithSigV4(
          region: _region,
          service: _i9.AWSService.apiGateway,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i7.WithSdkInvocationId(),
        const _i7.WithSdkRequest(),
        const _i1.WithHeader(
          'Accept',
          'application/json',
        ),
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
  _i1.HttpRequest buildRequest(_i2.GetModelsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/restapis/{restApiId}/models';
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
  int successCode([_i3.Models? output]) => 200;
  @override
  _i3.Models buildOutput(
    _i3.Models payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.Models.fromResponse(
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
          _i11.BadRequestException,
          statusCode: 400,
          builder: _i11.BadRequestException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i12.NotFoundException,
          statusCode: 404,
          builder: _i12.NotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i13.TooManyRequestsException,
          statusCode: 429,
          builder: _i13.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'UnauthorizedException',
          ),
          _i1.ErrorKind.client,
          _i14.UnauthorizedException,
          statusCode: 401,
          builder: _i14.UnauthorizedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetModels';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.Models> run(
    _i2.GetModelsRequest input, {
    _i9.AWSHttpClient? client,
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
  String? getToken(_i3.Models output) => output.position;
  @override
  _i4.BuiltList<_i5.Model> getItems(_i3.Models output) =>
      output.items ?? _i4.BuiltList();
  @override
  _i2.GetModelsRequest rebuildInput(
    _i2.GetModelsRequest input,
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
