// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.operation.put_events_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i18;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/endpoint_resolver.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart'
    as _i8;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_request.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/events_response.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i16;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_request.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/put_events_response.dart'
    as _i5;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i17;
import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;

/// Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
class PutEventsOperation extends _i1.HttpOperation<_i2.EventsRequest,
    _i3.PutEventsRequest, _i4.EventsResponse, _i5.PutEventsResponse> {
  /// Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
  PutEventsOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.EventsRequest, _i3.PutEventsRequest,
          _i4.EventsResponse, _i5.PutEventsResponse>> protocols = [
    _i7.RestJson1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.pinpoint,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i3.PutEventsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/v1/apps/{ApplicationId}/events';
      });
  @override
  int successCode([_i5.PutEventsResponse? output]) => 202;
  @override
  _i5.PutEventsResponse buildOutput(
    _i4.EventsResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i5.PutEventsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.BadRequestException, _i11.BadRequestException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          _i11.BadRequestException,
          statusCode: 400,
          builder: _i11.BadRequestException.fromResponse,
        ),
        _i1.SmithyError<_i12.ForbiddenException, _i12.ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i12.ForbiddenException,
          statusCode: 403,
          builder: _i12.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError<_i13.InternalServerErrorException,
            _i13.InternalServerErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'InternalServerErrorException',
          ),
          _i1.ErrorKind.server,
          _i13.InternalServerErrorException,
          statusCode: 500,
          builder: _i13.InternalServerErrorException.fromResponse,
        ),
        _i1.SmithyError<_i14.MethodNotAllowedException,
            _i14.MethodNotAllowedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'MethodNotAllowedException',
          ),
          _i1.ErrorKind.client,
          _i14.MethodNotAllowedException,
          statusCode: 405,
          builder: _i14.MethodNotAllowedException.fromResponse,
        ),
        _i1.SmithyError<_i15.NotFoundException, _i15.NotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i15.NotFoundException,
          statusCode: 404,
          builder: _i15.NotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i16.PayloadTooLargeException,
            _i16.PayloadTooLargeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'PayloadTooLargeException',
          ),
          _i1.ErrorKind.client,
          _i16.PayloadTooLargeException,
          statusCode: 413,
          builder: _i16.PayloadTooLargeException.fromResponse,
        ),
        _i1.SmithyError<_i17.TooManyRequestsException,
            _i17.TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.pinpoint',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i17.TooManyRequestsException,
          statusCode: 429,
          builder: _i17.TooManyRequestsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'PutEvents';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i5.PutEventsResponse> run(
    _i3.PutEventsRequest input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i18.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)},
      },
    );
  }
}
