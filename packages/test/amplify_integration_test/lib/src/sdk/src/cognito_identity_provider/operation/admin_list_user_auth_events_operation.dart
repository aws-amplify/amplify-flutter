// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_integration_test.cognito_identity_provider.operation.admin_list_user_auth_events_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i18;

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i10;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i8;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_request.dart'
    as _i2;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_response.dart'
    as _i3;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart'
    as _i5;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i11;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i12;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i13;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i14;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i15;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i16;
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_pool_add_on_not_enabled_exception.dart'
    as _i17;
import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;

/// A history of user activity and any risks detected as part of Amazon Cognito advanced security.
class AdminListUserAuthEventsOperation extends _i1.PaginatedHttpOperation<
    _i2.AdminListUserAuthEventsRequest,
    _i2.AdminListUserAuthEventsRequest,
    _i3.AdminListUserAuthEventsResponse,
    _i3.AdminListUserAuthEventsResponse,
    String,
    int,
    _i4.BuiltList<_i5.AuthEventType>> {
  /// A history of user activity and any risks detected as part of Amazon Cognito advanced security.
  AdminListUserAuthEventsOperation({
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
      _i1.HttpProtocol<
          _i2.AdminListUserAuthEventsRequest,
          _i2.AdminListUserAuthEventsRequest,
          _i3.AdminListUserAuthEventsResponse,
          _i3.AdminListUserAuthEventsResponse>> protocols = [
    _i7.AwsJson1_1Protocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.AdminListUserAuthEvents',
            ),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.cognitoIdentityProvider,
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
  _i1.HttpRequest buildRequest(_i2.AdminListUserAuthEventsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AdminListUserAuthEventsResponse? output]) => 200;
  @override
  _i3.AdminListUserAuthEventsResponse buildOutput(
    _i3.AdminListUserAuthEventsResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.AdminListUserAuthEventsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.InternalErrorException,
            _i11.InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i11.InternalErrorException,
          builder: _i11.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidParameterException,
            _i12.InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidParameterException,
          statusCode: 400,
          builder: _i12.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<_i13.NotAuthorizedException,
            _i13.NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i13.NotAuthorizedException,
          statusCode: 403,
          builder: _i13.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<_i14.ResourceNotFoundException,
            _i14.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i14.ResourceNotFoundException,
          statusCode: 404,
          builder: _i14.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i15.TooManyRequestsException,
            _i15.TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i15.TooManyRequestsException,
          statusCode: 429,
          builder: _i15.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<_i16.UserNotFoundException, _i16.UserNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i16.UserNotFoundException,
          statusCode: 404,
          builder: _i16.UserNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i17.UserPoolAddOnNotEnabledException,
            _i17.UserPoolAddOnNotEnabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserPoolAddOnNotEnabledException',
          ),
          _i1.ErrorKind.client,
          _i17.UserPoolAddOnNotEnabledException,
          statusCode: 400,
          builder: _i17.UserPoolAddOnNotEnabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'AdminListUserAuthEvents';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.AdminListUserAuthEventsResponse> run(
    _i2.AdminListUserAuthEventsRequest input, {
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

  @override
  String? getToken(_i3.AdminListUserAuthEventsResponse output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.AuthEventType> getItems(
          _i3.AdminListUserAuthEventsResponse output) =>
      output.authEvents ?? _i4.BuiltList();
  @override
  _i2.AdminListUserAuthEventsRequest rebuildInput(
    _i2.AdminListUserAuthEventsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        if (pageSize != null) {
          b.maxResults = pageSize;
        }
      });
}
