// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.operation.assume_role_with_web_identity_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i16;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_web_identity_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_web_identity_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/expired_token_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/sts/model/idp_communication_error_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/sts/model/idp_rejected_claim_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/sts/model/invalid_identity_token_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/sts/model/malformed_policy_document_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/sts/model/packed_policy_too_large_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart'
    as _i15;

/// Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider. Example providers include the OAuth 2.0 providers Login with Amazon and Facebook, or any OpenID Connect-compatible identity provider such as Google or [Amazon Cognito federated identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
///
/// For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the [Amazon Web Services SDK for iOS Developer Guide](http://aws.amazon.com/sdkforios/) and the [Amazon Web Services SDK for Android Developer Guide](http://aws.amazon.com/sdkforandroid/) to uniquely identify a user. You can also supply the user with a consistent identity throughout the lifetime of an application.
///
/// To learn more about Amazon Cognito, see [Amazon Cognito identity pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html) in _Amazon Cognito Developer Guide_.
///
/// Calling `AssumeRoleWithWebIdentity` does not require the use of Amazon Web Services security credentials. Therefore, you can distribute an application (for example, on mobile devices) that requests temporary security credentials without including long-term Amazon Web Services credentials in the application. You also don't need to deploy server-based proxy services that use long-term Amazon Web Services credentials. Instead, the identity of the caller is validated by using a token from the web identity provider. For a comparison of `AssumeRoleWithWebIdentity` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
///
/// The temporary security credentials returned by this API consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to Amazon Web Services service API operations.
///
/// **Session Duration**
///
/// By default, the temporary security credentials created by `AssumeRoleWithWebIdentity` last for one hour. However, you can use the optional `DurationSeconds` parameter to specify the duration of your session. You can provide a value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how to view the maximum value for your role, see [View the Maximum Session Duration Setting for a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session) in the _IAM User Guide_. The maximum session duration limit applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI commands. However the limit does not apply when you use those operations to create a console URL. For more information, see [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the _IAM User Guide_.
///
/// **Permissions**
///
/// The temporary security credentials created by `AssumeRoleWithWebIdentity` can be used to make API calls to any Amazon Web Services service with the following exception: you cannot call the STS `GetFederationToken` or `GetSessionToken` API operations.
///
/// (Optional) You can pass inline or managed [session policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
///
/// **Tags**
///
/// (Optional) You can configure your IdP to pass attributes into your web identity token as session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
///
/// You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see [IAM and STS Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
///
/// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
///
/// You can pass a session tag with the same key as a tag that is attached to the role. When you do, the session tag overrides the role tag with the same key.
///
/// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
///
/// You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
///
/// **Identities**
///
/// Before your application can call `AssumeRoleWithWebIdentity`, you must have an identity token from a supported identity provider and create a role that the application can assume. The role that your application assumes must trust the identity provider that is associated with the identity token. In other words, the identity provider must be specified in the role's trust policy.
///
/// Calling `AssumeRoleWithWebIdentity` can result in an entry in your CloudTrail logs. The entry includes the [Subject](http://openid.net/specs/openid-connect-core-1_0.html#Claims) of the provided web identity token. We recommend that you avoid using any personally identifiable information (PII) in this field. For example, you could instead use a GUID or a pairwise identifier, as [suggested in the OIDC specification](http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes).
///
/// For more information about how to use web identity federation and the `AssumeRoleWithWebIdentity` API, see the following resources:
///
/// *   [Using Web Identity Federation API Operations for Mobile Apps](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html) and [Federation Through a Web-based Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).
///
/// *   [Web Identity Federation Playground](https://aws.amazon.com/blogs/aws/the-aws-web-identity-federation-playground/). Walk through the process of authenticating through Login with Amazon, Facebook, or Google, getting temporary security credentials, and then using those credentials to make a request to Amazon Web Services.
///
/// *   [Amazon Web Services SDK for iOS Developer Guide](http://aws.amazon.com/sdkforios/) and [Amazon Web Services SDK for Android Developer Guide](http://aws.amazon.com/sdkforandroid/). These toolkits contain sample apps that show how to invoke the identity providers. The toolkits then show how to use the information from these providers to get and use temporary security credentials.
///
/// *   [Web Identity Federation with Mobile Applications](http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications). This article discusses web identity federation and shows an example of how to use web identity federation to get access to content in Amazon S3.
class AssumeRoleWithWebIdentityOperation extends _i1.HttpOperation<
    _i2.AssumeRoleWithWebIdentityRequest,
    _i2.AssumeRoleWithWebIdentityRequest,
    _i3.AssumeRoleWithWebIdentityResponse,
    _i3.AssumeRoleWithWebIdentityResponse> {
  /// Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider. Example providers include the OAuth 2.0 providers Login with Amazon and Facebook, or any OpenID Connect-compatible identity provider such as Google or [Amazon Cognito federated identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
  ///
  /// For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the [Amazon Web Services SDK for iOS Developer Guide](http://aws.amazon.com/sdkforios/) and the [Amazon Web Services SDK for Android Developer Guide](http://aws.amazon.com/sdkforandroid/) to uniquely identify a user. You can also supply the user with a consistent identity throughout the lifetime of an application.
  ///
  /// To learn more about Amazon Cognito, see [Amazon Cognito identity pools](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html) in _Amazon Cognito Developer Guide_.
  ///
  /// Calling `AssumeRoleWithWebIdentity` does not require the use of Amazon Web Services security credentials. Therefore, you can distribute an application (for example, on mobile devices) that requests temporary security credentials without including long-term Amazon Web Services credentials in the application. You also don't need to deploy server-based proxy services that use long-term Amazon Web Services credentials. Instead, the identity of the caller is validated by using a token from the web identity provider. For a comparison of `AssumeRoleWithWebIdentity` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
  ///
  /// The temporary security credentials returned by this API consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to Amazon Web Services service API operations.
  ///
  /// **Session Duration**
  ///
  /// By default, the temporary security credentials created by `AssumeRoleWithWebIdentity` last for one hour. However, you can use the optional `DurationSeconds` parameter to specify the duration of your session. You can provide a value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how to view the maximum value for your role, see [View the Maximum Session Duration Setting for a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session) in the _IAM User Guide_. The maximum session duration limit applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI commands. However the limit does not apply when you use those operations to create a console URL. For more information, see [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the _IAM User Guide_.
  ///
  /// **Permissions**
  ///
  /// The temporary security credentials created by `AssumeRoleWithWebIdentity` can be used to make API calls to any Amazon Web Services service with the following exception: you cannot call the STS `GetFederationToken` or `GetSessionToken` API operations.
  ///
  /// (Optional) You can pass inline or managed [session policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// **Tags**
  ///
  /// (Optional) You can configure your IdP to pass attributes into your web identity token as session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see [IAM and STS Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  ///
  /// You can pass a session tag with the same key as a tag that is attached to the role. When you do, the session tag overrides the role tag with the same key.
  ///
  /// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
  ///
  /// You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
  ///
  /// **Identities**
  ///
  /// Before your application can call `AssumeRoleWithWebIdentity`, you must have an identity token from a supported identity provider and create a role that the application can assume. The role that your application assumes must trust the identity provider that is associated with the identity token. In other words, the identity provider must be specified in the role's trust policy.
  ///
  /// Calling `AssumeRoleWithWebIdentity` can result in an entry in your CloudTrail logs. The entry includes the [Subject](http://openid.net/specs/openid-connect-core-1_0.html#Claims) of the provided web identity token. We recommend that you avoid using any personally identifiable information (PII) in this field. For example, you could instead use a GUID or a pairwise identifier, as [suggested in the OIDC specification](http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes).
  ///
  /// For more information about how to use web identity federation and the `AssumeRoleWithWebIdentity` API, see the following resources:
  ///
  /// *   [Using Web Identity Federation API Operations for Mobile Apps](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html) and [Federation Through a Web-based Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity).
  ///
  /// *   [Web Identity Federation Playground](https://aws.amazon.com/blogs/aws/the-aws-web-identity-federation-playground/). Walk through the process of authenticating through Login with Amazon, Facebook, or Google, getting temporary security credentials, and then using those credentials to make a request to Amazon Web Services.
  ///
  /// *   [Amazon Web Services SDK for iOS Developer Guide](http://aws.amazon.com/sdkforios/) and [Amazon Web Services SDK for Android Developer Guide](http://aws.amazon.com/sdkforandroid/). These toolkits contain sample apps that show how to invoke the identity providers. The toolkits then show how to use the information from these providers to get and use temporary security credentials.
  ///
  /// *   [Web Identity Federation with Mobile Applications](http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications). This article discusses web identity federation and shows an example of how to use web identity federation to get access to content in Amazon S3.
  AssumeRoleWithWebIdentityOperation({
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
          _i2.AssumeRoleWithWebIdentityRequest,
          _i2.AssumeRoleWithWebIdentityRequest,
          _i3.AssumeRoleWithWebIdentityResponse,
          _i3.AssumeRoleWithWebIdentityResponse>> protocols = [
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
      action: 'AssumeRoleWithWebIdentity',
      version: '2011-06-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ExpiredTokenException',
          code: 'ExpiredTokenException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'IDPCommunicationErrorException',
          code: 'IDPCommunicationError',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'IDPRejectedClaimException',
          code: 'IDPRejectedClaim',
          httpResponseCode: 403,
        ),
        _i5.AwsQueryError(
          shape: 'InvalidIdentityTokenException',
          code: 'InvalidIdentityToken',
          httpResponseCode: 400,
        ),
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
  _i1.HttpRequest buildRequest(_i2.AssumeRoleWithWebIdentityRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AssumeRoleWithWebIdentityResponse? output]) => 200;
  @override
  _i3.AssumeRoleWithWebIdentityResponse buildOutput(
    _i3.AssumeRoleWithWebIdentityResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.AssumeRoleWithWebIdentityResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ExpiredTokenException, _i9.ExpiredTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'ExpiredTokenException',
          ),
          _i1.ErrorKind.client,
          _i9.ExpiredTokenException,
          statusCode: 400,
          builder: _i9.ExpiredTokenException.fromResponse,
        ),
        _i1.SmithyError<_i10.IdpCommunicationErrorException,
            _i10.IdpCommunicationErrorException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'IDPCommunicationErrorException',
          ),
          _i1.ErrorKind.client,
          _i10.IdpCommunicationErrorException,
          statusCode: 400,
          builder: _i10.IdpCommunicationErrorException.fromResponse,
        ),
        _i1.SmithyError<_i11.IdpRejectedClaimException,
            _i11.IdpRejectedClaimException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'IDPRejectedClaimException',
          ),
          _i1.ErrorKind.client,
          _i11.IdpRejectedClaimException,
          statusCode: 403,
          builder: _i11.IdpRejectedClaimException.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidIdentityTokenException,
            _i12.InvalidIdentityTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'InvalidIdentityTokenException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidIdentityTokenException,
          statusCode: 400,
          builder: _i12.InvalidIdentityTokenException.fromResponse,
        ),
        _i1.SmithyError<_i13.MalformedPolicyDocumentException,
            _i13.MalformedPolicyDocumentException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'MalformedPolicyDocumentException',
          ),
          _i1.ErrorKind.client,
          _i13.MalformedPolicyDocumentException,
          statusCode: 400,
          builder: _i13.MalformedPolicyDocumentException.fromResponse,
        ),
        _i1.SmithyError<_i14.PackedPolicyTooLargeException,
            _i14.PackedPolicyTooLargeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'PackedPolicyTooLargeException',
          ),
          _i1.ErrorKind.client,
          _i14.PackedPolicyTooLargeException,
          statusCode: 400,
          builder: _i14.PackedPolicyTooLargeException.fromResponse,
        ),
        _i1.SmithyError<_i15.RegionDisabledException,
            _i15.RegionDisabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'RegionDisabledException',
          ),
          _i1.ErrorKind.client,
          _i15.RegionDisabledException,
          statusCode: 403,
          builder: _i15.RegionDisabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'AssumeRoleWithWebIdentity';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.AssumeRoleWithWebIdentityResponse> run(
    _i2.AssumeRoleWithWebIdentityRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i16.runZoned(
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
