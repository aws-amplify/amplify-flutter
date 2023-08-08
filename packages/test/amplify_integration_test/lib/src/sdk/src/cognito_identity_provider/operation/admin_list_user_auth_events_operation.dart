// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_integration_test.cognito_identity_provider.operation.admin_list_user_auth_events_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/common/serializers.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_request.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/admin_list_user_auth_events_response.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/auth_event_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/user_pool_add_on_not_enabled_exception.dart';
import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;

/// A history of user activity and any risks detected as part of Amazon Cognito advanced security.
///
/// Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you must use IAM credentials to authorize requests, and you must grant yourself the corresponding IAM permission in a policy.
///
/// **Learn more**
///
/// *   [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)
///
/// *   [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
class AdminListUserAuthEventsOperation extends _i1.PaginatedHttpOperation<
    AdminListUserAuthEventsRequest,
    AdminListUserAuthEventsRequest,
    AdminListUserAuthEventsResponse,
    AdminListUserAuthEventsResponse,
    String,
    int,
    _i2.BuiltList<AuthEventType>> {
  /// A history of user activity and any risks detected as part of Amazon Cognito advanced security.
  ///
  /// Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you must use IAM credentials to authorize requests, and you must grant yourself the corresponding IAM permission in a policy.
  ///
  /// **Learn more**
  ///
  /// *   [Signing Amazon Web Services API Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)
  ///
  /// *   [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html)
  AdminListUserAuthEventsOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
          AdminListUserAuthEventsRequest,
          AdminListUserAuthEventsRequest,
          AdminListUserAuthEventsResponse,
          AdminListUserAuthEventsResponse>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.AdminListUserAuthEvents',
            ),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(AdminListUserAuthEventsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([AdminListUserAuthEventsResponse? output]) => 200;
  @override
  AdminListUserAuthEventsResponse buildOutput(
    AdminListUserAuthEventsResponse payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      AdminListUserAuthEventsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InternalErrorException, InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          InternalErrorException,
          builder: InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<InvalidParameterException, InvalidParameterException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          InvalidParameterException,
          statusCode: 400,
          builder: InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError<NotAuthorizedException, NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          NotAuthorizedException,
          statusCode: 403,
          builder: NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<ResourceNotFoundException, ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          ResourceNotFoundException,
          statusCode: 404,
          builder: ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<TooManyRequestsException, TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          TooManyRequestsException,
          statusCode: 429,
          builder: TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<UserNotFoundException, UserNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotFoundException',
          ),
          _i1.ErrorKind.client,
          UserNotFoundException,
          statusCode: 404,
          builder: UserNotFoundException.fromResponse,
        ),
        _i1.SmithyError<UserPoolAddOnNotEnabledException,
            UserPoolAddOnNotEnabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserPoolAddOnNotEnabledException',
          ),
          _i1.ErrorKind.client,
          UserPoolAddOnNotEnabledException,
          statusCode: 400,
          builder: UserPoolAddOnNotEnabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'AdminListUserAuthEvents';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<AdminListUserAuthEventsResponse> run(
    AdminListUserAuthEventsRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(AdminListUserAuthEventsResponse output) => output.nextToken;
  @override
  _i2.BuiltList<AuthEventType> getItems(
          AdminListUserAuthEventsResponse output) =>
      output.authEvents ?? _i2.BuiltList();
  @override
  AdminListUserAuthEventsRequest rebuildInput(
    AdminListUserAuthEventsRequest input,
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
