// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.operation.get_in_app_messages_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i17;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/endpoint_resolver.dart'
    as _i9;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart'
    as _i7;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_request.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_in_app_messages_response.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_messages_response.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i16;
import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;

/// Retrieves the in-app messages targeted for the provided endpoint ID.
class GetInAppMessagesOperation extends _i1.HttpOperation<
    _i2.GetInAppMessagesRequestPayload,
    _i2.GetInAppMessagesRequest,
    _i3.InAppMessagesResponse,
    _i4.GetInAppMessagesResponse> {
  /// Retrieves the in-app messages targeted for the provided endpoint ID.
  GetInAppMessagesOperation({
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
          _i2.GetInAppMessagesRequestPayload,
          _i2.GetInAppMessagesRequest,
          _i3.InAppMessagesResponse,
          _i4.GetInAppMessagesResponse>> protocols = [
    _i6.RestJson1Protocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithNoHeader('Content-Length'),
            const _i1.WithNoHeader('Content-Type'),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.pinpoint,
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
  _i1.HttpRequest buildRequest(_i2.GetInAppMessagesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path =
            r'/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages';
      });
  @override
  int successCode([_i4.GetInAppMessagesResponse? output]) => 200;
  @override
  _i4.GetInAppMessagesResponse buildOutput(
    _i3.InAppMessagesResponse payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i4.GetInAppMessagesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          _i10.BadRequestException,
          statusCode: 400,
          builder: _i10.BadRequestException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i11.ForbiddenException,
          statusCode: 403,
          builder: _i11.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'InternalServerErrorException',
          ),
          _i1.ErrorKind.server,
          _i12.InternalServerErrorException,
          statusCode: 500,
          builder: _i12.InternalServerErrorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'MethodNotAllowedException',
          ),
          _i1.ErrorKind.client,
          _i13.MethodNotAllowedException,
          statusCode: 405,
          builder: _i13.MethodNotAllowedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i14.NotFoundException,
          statusCode: 404,
          builder: _i14.NotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'PayloadTooLargeException',
          ),
          _i1.ErrorKind.client,
          _i15.PayloadTooLargeException,
          statusCode: 413,
          builder: _i15.PayloadTooLargeException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i16.TooManyRequestsException,
          statusCode: 429,
          builder: _i16.TooManyRequestsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetInAppMessages';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i4.GetInAppMessagesResponse> run(
    _i2.GetInAppMessagesRequest input, {
    _i8.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i17.runZoned(
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
}
