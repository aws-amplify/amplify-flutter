// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.operation.verify_software_token_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i22;

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/endpoint_resolver.dart'
    as _i8;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/common/serializers.dart'
    as _i6;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/code_mismatch_exception.dart'
    as _i9;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/enable_software_token_mfa_exception.dart'
    as _i10;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/forbidden_exception.dart'
    as _i11;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/internal_error_exception.dart'
    as _i12;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_parameter_exception.dart'
    as _i13;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/invalid_user_pool_configuration_exception.dart'
    as _i14;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/not_authorized_exception.dart'
    as _i15;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/password_reset_required_exception.dart'
    as _i16;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/resource_not_found_exception.dart'
    as _i17;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/software_token_mfa_not_found_exception.dart'
    as _i18;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/too_many_requests_exception.dart'
    as _i19;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_confirmed_exception.dart'
    as _i20;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_not_found_exception.dart'
    as _i21;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_request.dart'
    as _i2;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/verify_software_token_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;

/// Use this API to register a user's entered time-based one-time password (TOTP) code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.
class VerifySoftwareTokenOperation extends _i1.HttpOperation<
    _i2.VerifySoftwareTokenRequest,
    _i2.VerifySoftwareTokenRequest,
    _i3.VerifySoftwareTokenResponse,
    _i3.VerifySoftwareTokenResponse> {
  /// Use this API to register a user's entered time-based one-time password (TOTP) code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.
  VerifySoftwareTokenOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.VerifySoftwareTokenRequest,
          _i2.VerifySoftwareTokenRequest,
          _i3.VerifySoftwareTokenResponse,
          _i3.VerifySoftwareTokenResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'AWSCognitoIdentityProviderService.VerifySoftwareToken',
        ),
        _i5.WithSigV4(
          region: _region,
          service: _i7.AWSService.cognitoIdentityProvider,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.3.0'),
        const _i5.WithSdkInvocationId(),
        const _i5.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i2.VerifySoftwareTokenRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.VerifySoftwareTokenResponse? output]) => 200;
  @override
  _i3.VerifySoftwareTokenResponse buildOutput(
    _i3.VerifySoftwareTokenResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.VerifySoftwareTokenResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'CodeMismatchException',
          ),
          _i1.ErrorKind.client,
          _i9.CodeMismatchException,
          statusCode: 400,
          builder: _i9.CodeMismatchException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'EnableSoftwareTokenMFAException',
          ),
          _i1.ErrorKind.client,
          _i10.EnableSoftwareTokenMfaException,
          statusCode: 400,
          builder: _i10.EnableSoftwareTokenMfaException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ForbiddenException',
          ),
          _i1.ErrorKind.client,
          _i11.ForbiddenException,
          statusCode: 403,
          builder: _i11.ForbiddenException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InternalErrorException',
          ),
          _i1.ErrorKind.server,
          _i12.InternalErrorException,
          builder: _i12.InternalErrorException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidParameterException',
          ),
          _i1.ErrorKind.client,
          _i13.InvalidParameterException,
          statusCode: 400,
          builder: _i13.InvalidParameterException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'InvalidUserPoolConfigurationException',
          ),
          _i1.ErrorKind.client,
          _i14.InvalidUserPoolConfigurationException,
          statusCode: 400,
          builder: _i14.InvalidUserPoolConfigurationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'NotAuthorizedException',
          ),
          _i1.ErrorKind.client,
          _i15.NotAuthorizedException,
          statusCode: 403,
          builder: _i15.NotAuthorizedException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'PasswordResetRequiredException',
          ),
          _i1.ErrorKind.client,
          _i16.PasswordResetRequiredException,
          statusCode: 400,
          builder: _i16.PasswordResetRequiredException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'ResourceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i17.ResourceNotFoundException,
          statusCode: 404,
          builder: _i17.ResourceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'SoftwareTokenMFANotFoundException',
          ),
          _i1.ErrorKind.client,
          _i18.SoftwareTokenMfaNotFoundException,
          statusCode: 400,
          builder: _i18.SoftwareTokenMfaNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i19.TooManyRequestsException,
          statusCode: 429,
          builder: _i19.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cognitoidentityprovider',
            shape: 'UserNotConfirmedException',
          ),
          _i1.ErrorKind.client,
          _i20.UserNotConfirmedException,
          statusCode: 400,
          builder: _i20.UserNotConfirmedException.fromResponse,
        ),
        _i1.SmithyError(
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
  String get runtimeTypeName => 'VerifySoftwareToken';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.VerifySoftwareTokenResponse> run(
    _i2.VerifySoftwareTokenRequest input, {
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
