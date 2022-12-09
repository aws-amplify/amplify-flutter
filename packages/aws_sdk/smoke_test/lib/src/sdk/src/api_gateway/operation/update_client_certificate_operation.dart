// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.operation.update_client_certificate_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

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
import 'package:smoke_test/src/sdk/src/api_gateway/model/client_certificate.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/limit_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/api_gateway/model/update_client_certificate_request.dart'
    as _i2;

/// Changes information about an ClientCertificate resource.
class UpdateClientCertificateOperation extends _i1.HttpOperation<
    _i2.UpdateClientCertificateRequestPayload,
    _i2.UpdateClientCertificateRequest,
    _i3.ClientCertificate,
    _i3.ClientCertificate> {
  /// Changes information about an ClientCertificate resource.
  UpdateClientCertificateOperation({
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
          _i2.UpdateClientCertificateRequestPayload,
          _i2.UpdateClientCertificateRequest,
          _i3.ClientCertificate,
          _i3.ClientCertificate>> protocols = [
    _i5.RestJson1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
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
  _i1.HttpRequest buildRequest(_i2.UpdateClientCertificateRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PATCH';
        b.path = r'/clientcertificates/{clientCertificateId}';
      });
  @override
  int successCode([_i3.ClientCertificate? output]) => 200;
  @override
  _i3.ClientCertificate buildOutput(
    _i3.ClientCertificate payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ClientCertificate.fromResponse(
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
            shape: 'ConflictException',
          ),
          _i1.ErrorKind.client,
          _i10.ConflictException,
          statusCode: 409,
          builder: _i10.ConflictException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.LimitExceededException,
          statusCode: 429,
          builder: _i11.LimitExceededException.fromResponse,
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
  String get runtimeTypeName => 'UpdateClientCertificate';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ClientCertificate> run(
    _i2.UpdateClientCertificateRequest input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
