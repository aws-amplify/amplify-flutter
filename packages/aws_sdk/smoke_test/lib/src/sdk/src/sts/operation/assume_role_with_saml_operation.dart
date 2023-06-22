// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.operation.assume_role_with_saml_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_saml_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_with_saml_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/expired_token_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/sts/model/idp_rejected_claim_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/sts/model/invalid_identity_token_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/sts/model/malformed_policy_document_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/sts/model/packed_policy_too_large_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart'
    as _i14;

/// Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response. This operation provides a mechanism for tying an enterprise identity store or directory to role-based Amazon Web Services access without user-specific credentials or configuration. For a comparison of `AssumeRoleWithSAML` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
///
/// The temporary security credentials returned by this operation consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to Amazon Web Services services.
///
/// **Session Duration**
///
/// By default, the temporary security credentials created by `AssumeRoleWithSAML` last for one hour. However, you can use the optional `DurationSeconds` parameter to specify the duration of your session. Your role session lasts for the duration that you specify, or until the time specified in the SAML authentication response's `SessionNotOnOrAfter` value, whichever is shorter. You can provide a `DurationSeconds` value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how to view the maximum value for your role, see [View the Maximum Session Duration Setting for a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session) in the _IAM User Guide_. The maximum session duration limit applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI commands. However the limit does not apply when you use those operations to create a console URL. For more information, see [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the _IAM User Guide_.
///
/// [Role chaining](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-role-chaining) limits your CLI or Amazon Web Services API role session to a maximum of one hour. When you use the `AssumeRole` API operation to assume a role, you can specify the duration of your role session with the `DurationSeconds` parameter. You can specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum session duration setting for your role. However, if you assume a role using role chaining and provide a `DurationSeconds` parameter value greater than one hour, the operation fails.
///
/// **Permissions**
///
/// The temporary security credentials created by `AssumeRoleWithSAML` can be used to make API calls to any Amazon Web Services service with the following exception: you cannot call the STS `GetFederationToken` or `GetSessionToken` API operations.
///
/// (Optional) You can pass inline or managed [session policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
///
/// Calling `AssumeRoleWithSAML` does not require the use of Amazon Web Services security credentials. The identity of the caller is validated by using keys in the metadata document that is uploaded for the SAML provider entity for your identity provider.
///
/// Calling `AssumeRoleWithSAML` can result in an entry in your CloudTrail logs. The entry includes the value in the `NameID` element of the SAML assertion. We recommend that you use a `NameIDType` that is not associated with any personally identifiable information (PII). For example, you could instead use the persistent identifier (`urn:oasis:names:tc:SAML:2.0:nameid-format:persistent`).
///
/// **Tags**
///
/// (Optional) You can configure your IdP to pass attributes into your SAML assertion as session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
///
/// You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see [IAM and STS Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
///
/// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
///
/// You can pass a session tag with the same key as a tag that is attached to the role. When you do, session tags override the role's tags with the same key.
///
/// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
///
/// You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
///
/// **SAML Configuration**
///
/// Before your application can call `AssumeRoleWithSAML`, you must configure your SAML identity provider (IdP) to issue the claims required by Amazon Web Services. Additionally, you must use Identity and Access Management (IAM) to create a SAML provider entity in your Amazon Web Services account that represents your identity provider. You must also create an IAM role that specifies this SAML provider in its trust policy.
///
/// For more information, see the following resources:
///
/// *   [About SAML 2.0-based Federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) in the _IAM User Guide_.
///
/// *   [Creating SAML Identity Providers](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html) in the _IAM User Guide_.
///
/// *   [Configuring a Relying Party and Claims](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html) in the _IAM User Guide_.
///
/// *   [Creating a Role for SAML 2.0 Federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html) in the _IAM User Guide_.
class AssumeRoleWithSamlOperation extends _i1.HttpOperation<
    _i2.AssumeRoleWithSamlRequest,
    _i2.AssumeRoleWithSamlRequest,
    _i3.AssumeRoleWithSamlResponse,
    _i3.AssumeRoleWithSamlResponse> {
  /// Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response. This operation provides a mechanism for tying an enterprise identity store or directory to role-based Amazon Web Services access without user-specific credentials or configuration. For a comparison of `AssumeRoleWithSAML` with the other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
  ///
  /// The temporary security credentials returned by this operation consist of an access key ID, a secret access key, and a security token. Applications can use these temporary security credentials to sign calls to Amazon Web Services services.
  ///
  /// **Session Duration**
  ///
  /// By default, the temporary security credentials created by `AssumeRoleWithSAML` last for one hour. However, you can use the optional `DurationSeconds` parameter to specify the duration of your session. Your role session lasts for the duration that you specify, or until the time specified in the SAML authentication response's `SessionNotOnOrAfter` value, whichever is shorter. You can provide a `DurationSeconds` value from 900 seconds (15 minutes) up to the maximum session duration setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how to view the maximum value for your role, see [View the Maximum Session Duration Setting for a Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session) in the _IAM User Guide_. The maximum session duration limit applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI commands. However the limit does not apply when you use those operations to create a console URL. For more information, see [Using IAM Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the _IAM User Guide_.
  ///
  /// [Role chaining](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-role-chaining) limits your CLI or Amazon Web Services API role session to a maximum of one hour. When you use the `AssumeRole` API operation to assume a role, you can specify the duration of your role session with the `DurationSeconds` parameter. You can specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum session duration setting for your role. However, if you assume a role using role chaining and provide a `DurationSeconds` parameter value greater than one hour, the operation fails.
  ///
  /// **Permissions**
  ///
  /// The temporary security credentials created by `AssumeRoleWithSAML` can be used to make API calls to any Amazon Web Services service with the following exception: you cannot call the STS `GetFederationToken` or `GetSessionToken` API operations.
  ///
  /// (Optional) You can pass inline or managed [session policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// Calling `AssumeRoleWithSAML` does not require the use of Amazon Web Services security credentials. The identity of the caller is validated by using keys in the metadata document that is uploaded for the SAML provider entity for your identity provider.
  ///
  /// Calling `AssumeRoleWithSAML` can result in an entry in your CloudTrail logs. The entry includes the value in the `NameID` element of the SAML assertion. We recommend that you use a `NameIDType` that is not associated with any personally identifiable information (PII). For example, you could instead use the persistent identifier (`urn:oasis:names:tc:SAML:2.0:nameid-format:persistent`).
  ///
  /// **Tags**
  ///
  /// (Optional) You can configure your IdP to pass attributes into your SAML assertion as session tags. Each session tag consists of a key name and an associated value. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these and additional limits, see [IAM and STS Character Limits](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length) in the _IAM User Guide_.
  ///
  /// An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs, and session tags into a packed binary format that has a separate limit. Your request can fail for this limit even if your plaintext meets the other requirements. The `PackedPolicySize` response element indicates by percentage how close the policies and tags for your request are to the upper size limit.
  ///
  /// You can pass a session tag with the same key as a tag that is attached to the role. When you do, session tags override the role's tags with the same key.
  ///
  /// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
  ///
  /// You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
  ///
  /// **SAML Configuration**
  ///
  /// Before your application can call `AssumeRoleWithSAML`, you must configure your SAML identity provider (IdP) to issue the claims required by Amazon Web Services. Additionally, you must use Identity and Access Management (IAM) to create a SAML provider entity in your Amazon Web Services account that represents your identity provider. You must also create an IAM role that specifies this SAML provider in its trust policy.
  ///
  /// For more information, see the following resources:
  ///
  /// *   [About SAML 2.0-based Federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html) in the _IAM User Guide_.
  ///
  /// *   [Creating SAML Identity Providers](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html) in the _IAM User Guide_.
  ///
  /// *   [Configuring a Relying Party and Claims](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html) in the _IAM User Guide_.
  ///
  /// *   [Creating a Role for SAML 2.0 Federation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html) in the _IAM User Guide_.
  AssumeRoleWithSamlOperation({
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
          _i2.AssumeRoleWithSamlRequest,
          _i2.AssumeRoleWithSamlRequest,
          _i3.AssumeRoleWithSamlResponse,
          _i3.AssumeRoleWithSamlResponse>> protocols = [
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
      action: 'AssumeRoleWithSAML',
      version: '2011-06-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ExpiredTokenException',
          code: 'ExpiredTokenException',
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
  _i1.HttpRequest buildRequest(_i2.AssumeRoleWithSamlRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AssumeRoleWithSamlResponse? output]) => 200;
  @override
  _i3.AssumeRoleWithSamlResponse buildOutput(
    _i3.AssumeRoleWithSamlResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.AssumeRoleWithSamlResponse.fromResponse(
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
        _i1.SmithyError<_i10.IdpRejectedClaimException,
            _i10.IdpRejectedClaimException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'IDPRejectedClaimException',
          ),
          _i1.ErrorKind.client,
          _i10.IdpRejectedClaimException,
          statusCode: 403,
          builder: _i10.IdpRejectedClaimException.fromResponse,
        ),
        _i1.SmithyError<_i11.InvalidIdentityTokenException,
            _i11.InvalidIdentityTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'InvalidIdentityTokenException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidIdentityTokenException,
          statusCode: 400,
          builder: _i11.InvalidIdentityTokenException.fromResponse,
        ),
        _i1.SmithyError<_i12.MalformedPolicyDocumentException,
            _i12.MalformedPolicyDocumentException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'MalformedPolicyDocumentException',
          ),
          _i1.ErrorKind.client,
          _i12.MalformedPolicyDocumentException,
          statusCode: 400,
          builder: _i12.MalformedPolicyDocumentException.fromResponse,
        ),
        _i1.SmithyError<_i13.PackedPolicyTooLargeException,
            _i13.PackedPolicyTooLargeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'PackedPolicyTooLargeException',
          ),
          _i1.ErrorKind.client,
          _i13.PackedPolicyTooLargeException,
          statusCode: 400,
          builder: _i13.PackedPolicyTooLargeException.fromResponse,
        ),
        _i1.SmithyError<_i14.RegionDisabledException,
            _i14.RegionDisabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'RegionDisabledException',
          ),
          _i1.ErrorKind.client,
          _i14.RegionDisabledException,
          statusCode: 403,
          builder: _i14.RegionDisabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'AssumeRoleWithSAML';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.AssumeRoleWithSamlResponse> run(
    _i2.AssumeRoleWithSamlRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i15.runZoned(
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
