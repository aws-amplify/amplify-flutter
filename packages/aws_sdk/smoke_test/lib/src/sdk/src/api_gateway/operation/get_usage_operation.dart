// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.operation.get_usage_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/get_usage_request.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart';
import 'package:smoke_test/src/sdk/src/api_gateway/model/usage.dart';

/// Gets the usage data of a usage plan in a specified time interval.
class GetUsageOperation extends _i1.PaginatedHttpOperation<
    GetUsageRequestPayload,
    GetUsageRequest,
    Usage,
    Usage,
    String,
    int,
    _i2.BuiltListMultimap<String, _i2.BuiltList<_i3.Int64>>> {
  /// Gets the usage data of a usage plan in a specified time interval.
  GetUsageOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.defaultChain(),
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
          .HttpProtocol<GetUsageRequestPayload, GetUsageRequest, Usage, Usage>>
      protocols = [
    _i5.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            _i5.WithSigV4(
              region: _region,
              service: _i6.AWSService.apiGateway,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
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

  late final _i5.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(GetUsageRequest input) => _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/usageplans/{usagePlanId}/usage';
        if (input.keyId != null) {
          b.queryParameters.add(
            'keyId',
            input.keyId!,
          );
        }
        b.queryParameters.add(
          'startDate',
          input.startDate,
        );
        b.queryParameters.add(
          'endDate',
          input.endDate,
        );
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
  int successCode([Usage? output]) => 200;
  @override
  Usage buildOutput(
    Usage payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      Usage.fromResponse(
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
  String get runtimeTypeName => 'GetUsage';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<Usage> run(
    GetUsageRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i7.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(Usage output) => output.position;
  @override
  _i2.BuiltListMultimap<String, _i2.BuiltList<_i3.Int64>> getItems(
          Usage output) =>
      output.items ?? _i2.BuiltListMultimap();
  @override
  GetUsageRequest rebuildInput(
    GetUsageRequest input,
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
