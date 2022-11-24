// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.operation.get_user_profile_operation;

import 'dart:async' as _i17;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/endpoint_resolver.dart'
    as _i9;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart'
    as _i7;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/bad_request_exception.dart'
    as _i10;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/forbidden_exception.dart'
    as _i13;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profile_request.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/get_user_profile_response.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/internal_server_error_exception.dart'
    as _i11;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/method_not_allowed_exception.dart'
    as _i15;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/not_found_exception.dart'
    as _i14;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/payload_too_large_exception.dart'
    as _i12;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/too_many_requests_exception.dart'
    as _i16;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/user_profile_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;

class GetUserProfileOperation extends _i1.HttpOperation<
    _i2.GetUserProfileRequestPayload,
    _i2.GetUserProfileRequest,
    _i3.UserProfileResponse,
    _i4.GetUserProfileResponse> {
  GetUserProfileOperation(
      {required String region,
      Uri? baseUri,
      _i5.AWSCredentialsProvider credentialsProvider =
          const _i5.AWSCredentialsProvider.environment()})
      : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.GetUserProfileRequestPayload,
          _i2.GetUserProfileRequest,
          _i3.UserProfileResponse,
          _i4.GetUserProfileResponse>> protocols = [
    _i6.RestJson1Protocol(
        serializers: _i7.serializers,
        builderFactories: _i7.builderFactories,
        requestInterceptors: [
          const _i1.WithHost(),
          const _i1.WithNoHeader('Content-Length'),
          const _i1.WithNoHeader('Content-Type'),
          _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.pinpoint,
              credentialsProvider: _credentialsProvider),
          const _i1.WithUserAgent('aws-sdk-dart/0.5.2'),
          const _i6.WithSdkInvocationId(),
          const _i6.WithSdkRequest()
        ],
        responseInterceptors: [])
  ];

  late final _i6.AWSEndpoint _awsEndpoint =
      _i9.endpointResolver.resolve(_i9.sdkId, _region);

  final String _region;

  final Uri? _baseUri;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.GetUserProfileRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = r'/v1/apps/{ApplicationId}/user-profiles/{UserId}';
      });
  @override
  int successCode([_i4.GetUserProfileResponse? output]) => 200;
  @override
  _i4.GetUserProfileResponse buildOutput(
          _i3.UserProfileResponse payload, _i8.AWSBaseHttpResponse response) =>
      _i4.GetUserProfileResponse.fromResponse(payload, response);
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'BadRequestException'),
            _i1.ErrorKind.client,
            _i10.BadRequestException,
            statusCode: 400,
            builder: _i10.BadRequestException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'InternalServerErrorException'),
            _i1.ErrorKind.server,
            _i11.InternalServerErrorException,
            statusCode: 500,
            builder: _i11.InternalServerErrorException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'PayloadTooLargeException'),
            _i1.ErrorKind.client,
            _i12.PayloadTooLargeException,
            statusCode: 413,
            builder: _i12.PayloadTooLargeException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'ForbiddenException'),
            _i1.ErrorKind.client,
            _i13.ForbiddenException,
            statusCode: 403,
            builder: _i13.ForbiddenException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'NotFoundException'),
            _i1.ErrorKind.client,
            _i14.NotFoundException,
            statusCode: 404,
            builder: _i14.NotFoundException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'MethodNotAllowedException'),
            _i1.ErrorKind.client,
            _i15.MethodNotAllowedException,
            statusCode: 405,
            builder: _i15.MethodNotAllowedException.fromResponse),
        _i1.SmithyError(
            _i1.ShapeId(
                namespace: 'com.amazonaws.pinpoint',
                shape: 'TooManyRequestsException'),
            _i1.ErrorKind.client,
            _i16.TooManyRequestsException,
            statusCode: 429,
            builder: _i16.TooManyRequestsException.fromResponse)
      ];
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i17.Future<_i4.GetUserProfileResponse> run(_i2.GetUserProfileRequest input,
      {_i8.AWSHttpClient? client, _i1.ShapeId? useProtocol}) {
    return _i17.runZoned(
        () => super.run(input, client: client, useProtocol: useProtocol),
        zoneValues: {
          ...?_awsEndpoint.credentialScope?.zoneValues,
          ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)}
        });
  }
}
