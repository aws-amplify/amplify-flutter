// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.operation.get_user_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_request.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/get_user_response.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart';
import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// Gets the user attributes and metadata for a user.
///
/// Authorize this action with a signed-in user's access token. It must include the scope `aws.cognito.signin.user.admin`.
///
/// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
class GetUserOperation extends _i1.HttpOperation<GetUserRequest, GetUserRequest,
    GetUserResponse, GetUserResponse> {
  /// Gets the user attributes and metadata for a user.
  ///
  /// Authorize this action with a signed-in user's access token. It must include the scope `aws.cognito.signin.user.admin`.
  ///
  /// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito user pools API and user pool endpoints](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  GetUserOperation({
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
      _i1.HttpProtocol<GetUserRequest, GetUserRequest, GetUserResponse,
          GetUserResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.GetUser',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true,
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
  _i1.HttpRequest buildRequest(GetUserRequest input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });

  @override
  int successCode([GetUserResponse? output]) => 200;

  @override
  GetUserResponse buildOutput(
    GetUserResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetUserResponse.fromResponse(
        payload,
        response,
      );

  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ForbiddenException, ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          ForbiddenException,
          statusCode: 403,
          builder: ForbiddenException.fromResponse,
        ),
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
        _i1.SmithyError<PasswordResetRequiredException,
            PasswordResetRequiredException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'PasswordResetRequiredException',
          ),
          _i1.ErrorKind.client,
          PasswordResetRequiredException,
          statusCode: 400,
          builder: PasswordResetRequiredException.fromResponse,
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
        _i1.SmithyError<UserNotConfirmedException, UserNotConfirmedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotConfirmedException',
          ),
          _i1.ErrorKind.client,
          UserNotConfirmedException,
          statusCode: 400,
          builder: UserNotConfirmedException.fromResponse,
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
      ];

  @override
  String get runtimeTypeName => 'GetUser';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<GetUserResponse> run(
    GetUserRequest input, {
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
