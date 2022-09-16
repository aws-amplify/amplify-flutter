// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.operation.update_endpoint_operation;

import 'dart:async' as _i18;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/endpoint_resolver.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart'
    as _i8;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_request.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i16;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i17;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_request.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/update_endpoint_response.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;

/// Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
class UpdateEndpointOperation extends _i1.HttpOperation<_i2.EndpointRequest,
    _i3.UpdateEndpointRequest, _i4.MessageBody, _i5.UpdateEndpointResponse> {
  /// Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes for an endpoint. If an update includes one or more values for a custom attribute, Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  UpdateEndpointOperation(
      {required String region,
      Uri? baseUri,
      _i6.AWSCredentialsProvider credentialsProvider =
          const _i6.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<_i2.EndpointRequest, _i3.UpdateEndpointRequest,
          _i4.MessageBody, _i5.UpdateEndpointResponse>> protocols = [
    _i7.RestJson1Protocol(
        serializers: _i8.serializers,
        builderFactories: _i8.builderFactories,
        requestInterceptors: [
          const _i1.WithHost(),
          const _i1.WithContentLength(),
          _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.pinpoint,
              credentialsProvider: _credentialsProvider),
          const _i1.WithUserAgent('aws-sdk-dart/0.5.2'),
          const _i7.WithSdkInvocationId(),
          const _i7.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i7.AWSEndpoint _awsEndpoint =
      _i10.endpointResolver.resolve(_i10.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i3.UpdateEndpointRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/v1/apps/{ApplicationId}/endpoints/{EndpointId}';
      });
  @override
  int successCode([_i5.UpdateEndpointResponse? output]) => 202;
  @override
  _i5.UpdateEndpointResponse buildOutput(
          _i4.MessageBody payload, _i9.AWSStreamedHttpResponse response) =>
      _i5.UpdateEndpointResponse.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'BadRequestException'),
            _i1.ErrorKind.client,
            _i11.BadRequestException,
            statusCode: 400,
            builder: _i11.BadRequestException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'ForbiddenException'),
            _i1.ErrorKind.client,
            _i12.ForbiddenException,
            statusCode: 403,
            builder: _i12.ForbiddenException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'InternalServerErrorException'),
            _i1.ErrorKind.server,
            _i13.InternalServerErrorException,
            statusCode: 500,
            builder: _i13.InternalServerErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'MethodNotAllowedException'),
            _i1.ErrorKind.client,
            _i14.MethodNotAllowedException,
            statusCode: 405,
            builder: _i14.MethodNotAllowedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'NotFoundException'),
            _i1.ErrorKind.client,
            _i15.NotFoundException,
            statusCode: 404,
            builder: _i15.NotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'PayloadTooLargeException'),
            _i1.ErrorKind.client,
            _i16.PayloadTooLargeException,
            statusCode: 413,
            builder: _i16.PayloadTooLargeException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i17.TooManyRequestsException,
            statusCode: 429,
            builder: _i17.TooManyRequestsException.fromResponse)
      ];
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i18.Future<_i5.UpdateEndpointResponse> run(_i3.UpdateEndpointRequest input,
      {_i1.HttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i18.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
        });
  }
}
