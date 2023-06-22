// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.operation.get_session_token_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i10;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/get_session_token_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/get_session_token_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart'
    as _i9;

/// Returns a set of temporary credentials for an Amazon Web Services account or IAM user. The credentials consist of an access key ID, a secret access key, and a security token. Typically, you use `GetSessionToken` if you want to use MFA to protect programmatic calls to specific Amazon Web Services API operations like Amazon EC2 `StopInstances`.
///
/// MFA-enabled IAM users must call `GetSessionToken` and submit an MFA code that is associated with their MFA device. Using the temporary security credentials that the call returns, IAM users can then make programmatic calls to API operations that require MFA authentication. An incorrect MFA code causes the API to return an access denied error. For a comparison of `GetSessionToken` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
///
/// No permissions are required for users to perform this operation. The purpose of the `sts:GetSessionToken` operation is to authenticate the user using MFA. You cannot use policies to control authentication operations. For more information, see [Permissions for GetSessionToken](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html) in the _IAM User Guide_.
///
/// **Session Duration**
///
/// The `GetSessionToken` operation must be called by using the long-term Amazon Web Services security credentials of an IAM user. Credentials that are created by IAM users are valid for the duration that you specify. This duration can range from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds (12 hours). Credentials based on account credentials can range from 900 seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour.
///
/// **Permissions**
///
/// The temporary security credentials created by `GetSessionToken` can be used to make API calls to any Amazon Web Services service with the following exceptions:
///
/// *   You cannot call any IAM API operations unless MFA authentication information is included in the request.
///
/// *   You cannot call any STS API _except_ `AssumeRole` or `GetCallerIdentity`.
///
///
/// The credentials that `GetSessionToken` returns are based on permissions associated with the IAM user whose credentials were used to call the operation. The temporary credentials have the same permissions as the IAM user.
///
/// Although it is possible to call `GetSessionToken` using the security credentials of an Amazon Web Services account root user rather than an IAM user, we do not recommend it. If `GetSessionToken` is called using root user credentials, the temporary credentials have root user permissions. For more information, see [Safeguard your root user credentials and don't use them for everyday tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials) in the _IAM User Guide_
///
/// For more information about using `GetSessionToken` to create temporary credentials, see [Temporary Credentials for Users in Untrusted Environments](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken) in the _IAM User Guide_.
class GetSessionTokenOperation extends _i1.HttpOperation<
    _i2.GetSessionTokenRequest,
    _i2.GetSessionTokenRequest,
    _i3.GetSessionTokenResponse,
    _i3.GetSessionTokenResponse> {
  /// Returns a set of temporary credentials for an Amazon Web Services account or IAM user. The credentials consist of an access key ID, a secret access key, and a security token. Typically, you use `GetSessionToken` if you want to use MFA to protect programmatic calls to specific Amazon Web Services API operations like Amazon EC2 `StopInstances`.
  ///
  /// MFA-enabled IAM users must call `GetSessionToken` and submit an MFA code that is associated with their MFA device. Using the temporary security credentials that the call returns, IAM users can then make programmatic calls to API operations that require MFA authentication. An incorrect MFA code causes the API to return an access denied error. For a comparison of `GetSessionToken` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
  ///
  /// No permissions are required for users to perform this operation. The purpose of the `sts:GetSessionToken` operation is to authenticate the user using MFA. You cannot use policies to control authentication operations. For more information, see [Permissions for GetSessionToken](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html) in the _IAM User Guide_.
  ///
  /// **Session Duration**
  ///
  /// The `GetSessionToken` operation must be called by using the long-term Amazon Web Services security credentials of an IAM user. Credentials that are created by IAM users are valid for the duration that you specify. This duration can range from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours), with a default of 43,200 seconds (12 hours). Credentials based on account credentials can range from 900 seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour.
  ///
  /// **Permissions**
  ///
  /// The temporary security credentials created by `GetSessionToken` can be used to make API calls to any Amazon Web Services service with the following exceptions:
  ///
  /// *   You cannot call any IAM API operations unless MFA authentication information is included in the request.
  ///
  /// *   You cannot call any STS API _except_ `AssumeRole` or `GetCallerIdentity`.
  ///
  ///
  /// The credentials that `GetSessionToken` returns are based on permissions associated with the IAM user whose credentials were used to call the operation. The temporary credentials have the same permissions as the IAM user.
  ///
  /// Although it is possible to call `GetSessionToken` using the security credentials of an Amazon Web Services account root user rather than an IAM user, we do not recommend it. If `GetSessionToken` is called using root user credentials, the temporary credentials have root user permissions. For more information, see [Safeguard your root user credentials and don't use them for everyday tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials) in the _IAM User Guide_
  ///
  /// For more information about using `GetSessionToken` to create temporary credentials, see [Temporary Credentials for Users in Untrusted Environments](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken) in the _IAM User Guide_.
  GetSessionTokenOperation({
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
      _i1.HttpProtocol<
          _i2.GetSessionTokenRequest,
          _i2.GetSessionTokenRequest,
          _i3.GetSessionTokenResponse,
          _i3.GetSessionTokenResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.sts,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'GetSessionToken',
      version: '2011-06-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'RegionDisabledException',
          code: 'RegionDisabledException',
          httpResponseCode: 403,
        )
      ],
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
  _i1.HttpRequest buildRequest(_i2.GetSessionTokenRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetSessionTokenResponse? output]) => 200;
  @override
  _i3.GetSessionTokenResponse buildOutput(
    _i3.GetSessionTokenResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetSessionTokenResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.RegionDisabledException,
            _i9.RegionDisabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'RegionDisabledException',
          ),
          _i1.ErrorKind.client,
          _i9.RegionDisabledException,
          statusCode: 403,
          builder: _i9.RegionDisabledException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'GetSessionToken';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetSessionTokenResponse> run(
    _i2.GetSessionTokenRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i10.runZoned(
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
