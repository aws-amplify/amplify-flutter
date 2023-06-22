// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.operation.get_federation_token_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/get_federation_token_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/get_federation_token_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/malformed_policy_document_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/sts/model/packed_policy_too_large_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart'
    as _i11;

/// Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a user. A typical use is in a proxy application that gets temporary security credentials on behalf of distributed applications inside a corporate network.
///
/// You must call the `GetFederationToken` operation using the long-term security credentials of an IAM user. As a result, this call is appropriate in contexts where those credentials can be safeguarded, usually in a server-based application. For a comparison of `GetFederationToken` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
///
/// Although it is possible to call `GetFederationToken` using the security credentials of an Amazon Web Services account root user rather than an IAM user that you create for the purpose of a proxy application, we do not recommend it. For more information, see [Safeguard your root user credentials and don't use them for everyday tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials) in the _IAM User Guide_.
///
/// You can create a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider. In this case, we recommend that you use [Amazon Cognito](http://aws.amazon.com/cognito/) or `AssumeRoleWithWebIdentity`. For more information, see [Federation Through a Web-based Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity) in the _IAM User Guide_.
///
/// **Session duration**
///
/// The temporary credentials are valid for the specified duration, from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is 43,200 seconds (12 hours). Temporary credentials obtained by using the root user credentials have a maximum duration of 3,600 seconds (1 hour).
///
/// **Permissions**
///
/// You can use the temporary credentials created by `GetFederationToken` in any Amazon Web Services service with the following exceptions:
///
/// *   You cannot call any IAM operations using the CLI or the Amazon Web Services API. This limitation does not apply to console sessions.
///
/// *   You cannot call any STS operations except `GetCallerIdentity`.
///
///
/// You can use temporary credentials for single sign-on (SSO) to the console.
///
/// You must pass an inline or managed [session policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters.
///
/// Though the session policy parameters are optional, if you do not pass a policy, then the resulting federated user session has no permissions. When you pass session policies, the session permissions are the intersection of the IAM user policies and the session policies that you pass. This gives you a way to further restrict the permissions for a federated user. You cannot use session policies to grant more permissions than those that are defined in the permissions policy of the IAM user. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_. For information about using `GetFederationToken` to create temporary security credentials, see [GetFederationToken—Federation Through a Custom Identity Broker](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).
///
/// You can use the credentials to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the `Principal` element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions granted by the session policies.
///
/// **Tags**
///
/// (Optional) You can pass tag key-value pairs to your session. These are called session tags. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
///
/// You can create a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider. In this case, we recommend that you use [Amazon Cognito](http://aws.amazon.com/cognito/) or `AssumeRoleWithWebIdentity`. For more information, see [Federation Through a Web-based Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity) in the _IAM User Guide_.
///
/// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
///
/// Tag key–value pairs are not case sensitive, but case is preserved. This means that you cannot have separate `Department` and `department` tag keys. Assume that the user that you are federating has the `Department`=`Marketing` tag and you pass the `department`=`engineering` session tag. `Department` and `department` are not saved as separate tags, and the session tag passed in the request takes precedence over the user tag.
class GetFederationTokenOperation extends _i1.HttpOperation<
    _i2.GetFederationTokenRequest,
    _i2.GetFederationTokenRequest,
    _i3.GetFederationTokenResponse,
    _i3.GetFederationTokenResponse> {
  /// Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a user. A typical use is in a proxy application that gets temporary security credentials on behalf of distributed applications inside a corporate network.
  ///
  /// You must call the `GetFederationToken` operation using the long-term security credentials of an IAM user. As a result, this call is appropriate in contexts where those credentials can be safeguarded, usually in a server-based application. For a comparison of `GetFederationToken` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
  ///
  /// Although it is possible to call `GetFederationToken` using the security credentials of an Amazon Web Services account root user rather than an IAM user that you create for the purpose of a proxy application, we do not recommend it. For more information, see [Safeguard your root user credentials and don't use them for everyday tasks](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials) in the _IAM User Guide_.
  ///
  /// You can create a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider. In this case, we recommend that you use [Amazon Cognito](http://aws.amazon.com/cognito/) or `AssumeRoleWithWebIdentity`. For more information, see [Federation Through a Web-based Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity) in the _IAM User Guide_.
  ///
  /// **Session duration**
  ///
  /// The temporary credentials are valid for the specified duration, from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is 43,200 seconds (12 hours). Temporary credentials obtained by using the root user credentials have a maximum duration of 3,600 seconds (1 hour).
  ///
  /// **Permissions**
  ///
  /// You can use the temporary credentials created by `GetFederationToken` in any Amazon Web Services service with the following exceptions:
  ///
  /// *   You cannot call any IAM operations using the CLI or the Amazon Web Services API. This limitation does not apply to console sessions.
  ///
  /// *   You cannot call any STS operations except `GetCallerIdentity`.
  ///
  ///
  /// You can use temporary credentials for single sign-on (SSO) to the console.
  ///
  /// You must pass an inline or managed [session policy](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters.
  ///
  /// Though the session policy parameters are optional, if you do not pass a policy, then the resulting federated user session has no permissions. When you pass session policies, the session permissions are the intersection of the IAM user policies and the session policies that you pass. This gives you a way to further restrict the permissions for a federated user. You cannot use session policies to grant more permissions than those that are defined in the permissions policy of the IAM user. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_. For information about using `GetFederationToken` to create temporary security credentials, see [GetFederationToken—Federation Through a Custom Identity Broker](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken).
  ///
  /// You can use the credentials to access a resource that has a resource-based policy. If that policy specifically references the federated user session in the `Principal` element of the policy, the session has the permissions allowed by the policy. These permissions are granted in addition to the permissions granted by the session policies.
  ///
  /// **Tags**
  ///
  /// (Optional) You can pass tag key-value pairs to your session. These are called session tags. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// You can create a mobile-based or browser-based app that can authenticate users using a web identity provider like Login with Amazon, Facebook, Google, or an OpenID Connect-compatible identity provider. In this case, we recommend that you use [Amazon Cognito](http://aws.amazon.com/cognito/) or `AssumeRoleWithWebIdentity`. For more information, see [Federation Through a Web-based Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity) in the _IAM User Guide_.
  ///
  /// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
  ///
  /// Tag key–value pairs are not case sensitive, but case is preserved. This means that you cannot have separate `Department` and `department` tag keys. Assume that the user that you are federating has the `Department`=`Marketing` tag and you pass the `department`=`engineering` session tag. `Department` and `department` are not saved as separate tags, and the session tag passed in the request takes precedence over the user tag.
  GetFederationTokenOperation({
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
          _i2.GetFederationTokenRequest,
          _i2.GetFederationTokenRequest,
          _i3.GetFederationTokenResponse,
          _i3.GetFederationTokenResponse>> protocols = [
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
      action: 'GetFederationToken',
      version: '2011-06-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'MalformedPolicyDocumentException',
          code: 'MalformedPolicyDocument',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'PackedPolicyTooLargeException',
          code: 'PackedPolicyTooLarge',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'RegionDisabledException',
          code: 'RegionDisabledException',
          httpResponseCode: 403,
        ),
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
  _i1.HttpRequest buildRequest(_i2.GetFederationTokenRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetFederationTokenResponse? output]) => 200;
  @override
  _i3.GetFederationTokenResponse buildOutput(
    _i3.GetFederationTokenResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetFederationTokenResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.MalformedPolicyDocumentException,
            _i9.MalformedPolicyDocumentException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'MalformedPolicyDocumentException',
          ),
          _i1.ErrorKind.client,
          _i9.MalformedPolicyDocumentException,
          statusCode: 400,
          builder: _i9.MalformedPolicyDocumentException.fromResponse,
        ),
        _i1.SmithyError<_i10.PackedPolicyTooLargeException,
            _i10.PackedPolicyTooLargeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'PackedPolicyTooLargeException',
          ),
          _i1.ErrorKind.client,
          _i10.PackedPolicyTooLargeException,
          statusCode: 400,
          builder: _i10.PackedPolicyTooLargeException.fromResponse,
        ),
        _i1.SmithyError<_i11.RegionDisabledException,
            _i11.RegionDisabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'RegionDisabledException',
          ),
          _i1.ErrorKind.client,
          _i11.RegionDisabledException,
          statusCode: 403,
          builder: _i11.RegionDisabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetFederationToken';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetFederationTokenResponse> run(
    _i2.GetFederationTokenRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
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
