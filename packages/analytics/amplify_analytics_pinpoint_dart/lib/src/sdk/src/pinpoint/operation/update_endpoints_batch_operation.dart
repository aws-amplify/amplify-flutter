// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.operation.update_endpoints_batch_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/endpoint_resolver.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_request.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoints_batch_response.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes for a batch of endpoints. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
class UpdateEndpointsBatchOperation extends _i1.HttpOperation<
    EndpointBatchRequest,
    UpdateEndpointsBatchRequest,
    MessageBody,
    UpdateEndpointsBatchResponse> {
  /// Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes for a batch of endpoints. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  UpdateEndpointsBatchOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<EndpointBatchRequest, UpdateEndpointsBatchRequest,
          MessageBody, UpdateEndpointsBatchResponse>> protocols = [
    _i3.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.pinpoint,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
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
  _i1.HttpRequest buildRequest(UpdateEndpointsBatchRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/v1/apps/{ApplicationId}/endpoints';
      });
  @override
  int successCode([UpdateEndpointsBatchResponse? output]) => 202;
  @override
  UpdateEndpointsBatchResponse buildOutput(
    MessageBody payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      UpdateEndpointsBatchResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<BadRequestException, BadRequestException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          BadRequestException,
          statusCode: 400,
          builder: BadRequestException.fromResponse,
        ),
        _i1.SmithyError<ForbiddenException, ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          ForbiddenException,
          statusCode: 403,
          builder: ForbiddenException.fromResponse,
        ),
        _i1.SmithyError<InternalServerErrorException,
            InternalServerErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'InternalServerErrorException',
          ),
          _i1.ErrorKind.server,
          InternalServerErrorException,
          statusCode: 500,
          builder: InternalServerErrorException.fromResponse,
        ),
        _i1.SmithyError<MethodNotAllowedException, MethodNotAllowedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'MethodNotAllowedException',
          ),
          _i1.ErrorKind.client,
          MethodNotAllowedException,
          statusCode: 405,
          builder: MethodNotAllowedException.fromResponse,
        ),
        _i1.SmithyError<NotFoundException, NotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          NotFoundException,
          statusCode: 404,
          builder: NotFoundException.fromResponse,
        ),
        _i1.SmithyError<PayloadTooLargeException, PayloadTooLargeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'PayloadTooLargeException',
          ),
          _i1.ErrorKind.client,
          PayloadTooLargeException,
          statusCode: 413,
          builder: PayloadTooLargeException.fromResponse,
        ),
        _i1.SmithyError<TooManyRequestsException, TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          TooManyRequestsException,
          statusCode: 429,
          builder: TooManyRequestsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateEndpointsBatch';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<UpdateEndpointsBatchResponse> run(
    UpdateEndpointsBatchRequest input, {
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
