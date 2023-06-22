// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.operation.confirm_device_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i22;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/confirm_device_response.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_lambda_response_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_password_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_user_pool_configuration_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i18;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i20;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i21;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/username_exists_exception.dart'
    as _i19;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Confirms tracking of the device. This API call is the call that begins device tracking.
///
/// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests to this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
class ConfirmDeviceOperation extends _i1.HttpOperation<
    _i2.ConfirmDeviceRequest,
    _i2.ConfirmDeviceRequest,
    _i3.ConfirmDeviceResponse,
    _i3.ConfirmDeviceResponse> {
  /// Confirms tracking of the device. This API call is the call that begins device tracking.
  ///
  /// Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests to this API operation. For this operation, you can't use IAM credentials to authorize requests, and you can't grant IAM permissions in policies. For more information about authorization models in Amazon Cognito, see [Using the Amazon Cognito native and OIDC APIs](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html).
  ConfirmDeviceOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.ConfirmDeviceRequest, _i2.ConfirmDeviceRequest,
          _i3.ConfirmDeviceResponse, _i3.ConfirmDeviceResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'AWSCognitoIdentityProviderService.ConfirmDevice',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cognitoIdentityProvider,
              credentialsProvider: _credentialsProvider,
              isOptional: true,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ConfirmDeviceRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ConfirmDeviceResponse? output]) => 200;
  @override
  _i3.ConfirmDeviceResponse buildOutput(
    _i3.ConfirmDeviceResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ConfirmDeviceResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ForbiddenException, _i9.ForbiddenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i9.ForbiddenException,
          statusCode: 403,
          builder: _i9.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError<_i10.InternalErrorException,
            _i10.InternalErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i10.InternalErrorException,
          builder: _i10.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError<_i11.InvalidLambdaResponseException,
            _i11.InvalidLambdaResponseException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidLambdaResponseException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidLambdaResponseException,
          statusCode: 400,
          builder: _i11.InvalidLambdaResponseException.fromResponse,
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
        _i1.SmithyError<_i13.InvalidPasswordException,
            _i13.InvalidPasswordException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidPasswordException',
          ),
          _i1.ErrorKind.client,
          _i13.InvalidPasswordException,
          statusCode: 400,
          builder: _i13.InvalidPasswordException.fromResponse,
        ),
        _i1.SmithyError<_i14.InvalidUserPoolConfigurationException,
            _i14.InvalidUserPoolConfigurationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidUserPoolConfigurationException',
          ),
          _i1.ErrorKind.client,
          _i14.InvalidUserPoolConfigurationException,
          statusCode: 400,
          builder: _i14.InvalidUserPoolConfigurationException.fromResponse,
        ),
        _i1.SmithyError<_i15.NotAuthorizedException,
            _i15.NotAuthorizedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i15.NotAuthorizedException,
          statusCode: 403,
          builder: _i15.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError<_i16.PasswordResetRequiredException,
            _i16.PasswordResetRequiredException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'PasswordResetRequiredException',
          ),
          _i1.ErrorKind.client,
          _i16.PasswordResetRequiredException,
          statusCode: 400,
          builder: _i16.PasswordResetRequiredException.fromResponse,
        ),
        _i1.SmithyError<_i17.ResourceNotFoundException,
            _i17.ResourceNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i17.ResourceNotFoundException,
          statusCode: 404,
          builder: _i17.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i18.TooManyRequestsException,
            _i18.TooManyRequestsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i18.TooManyRequestsException,
          statusCode: 429,
          builder: _i18.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError<_i19.UsernameExistsException,
            _i19.UsernameExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UsernameExistsException',
          ),
          _i1.ErrorKind.client,
          _i19.UsernameExistsException,
          statusCode: 400,
          builder: _i19.UsernameExistsException.fromResponse,
        ),
        _i1.SmithyError<_i20.UserNotConfirmedException,
            _i20.UserNotConfirmedException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotConfirmedException',
          ),
          _i1.ErrorKind.client,
          _i20.UserNotConfirmedException,
          statusCode: 400,
          builder: _i20.UserNotConfirmedException.fromResponse,
        ),
        _i1.SmithyError<_i21.UserNotFoundException, _i21.UserNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i21.UserNotFoundException,
          statusCode: 404,
          builder: _i21.UserNotFoundException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ConfirmDevice';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ConfirmDeviceResponse> run(
    _i2.ConfirmDeviceRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i22.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
