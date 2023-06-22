// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.operation.assume_role_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/sts/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/sts/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/sts/model/assume_role_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/sts/model/expired_token_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/sts/model/malformed_policy_document_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/sts/model/packed_policy_too_large_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/sts/model/region_disabled_exception.dart'
    as _i12;

/// Returns a set of temporary security credentials that you can use to access Amazon Web Services resources. These temporary credentials consist of an access key ID, a secret access key, and a security token. Typically, you use `AssumeRole` within your account or for cross-account access. For a comparison of `AssumeRole` with other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
///
/// **Permissions**
///
/// The temporary security credentials created by `AssumeRole` can be used to make API calls to any Amazon Web Services service with the following exception: You cannot call the Amazon Web Services STS `GetFederationToken` or `GetSessionToken` API operations.
///
/// (Optional) You can pass inline or managed [session policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
///
/// When you create a role, you create two policies: a role trust policy that specifies _who_ can assume the role, and a permissions policy that specifies _what_ can be done with the role. You specify the trusted principal that is allowed to assume the role in the role trust policy.
///
/// To assume a role from a different account, your Amazon Web Services account must be trusted by the role. The trust relationship is defined in the role's trust policy when the role is created. That trust policy states which accounts are allowed to delegate that access to users in the account.
///
/// A user who wants to access a role in a different account must also have permissions that are delegated from the account administrator. The administrator must attach a policy that allows the user to call `AssumeRole` for the ARN of the role in the other account.
///
/// To allow a user to assume a role in the same account, you can do either of the following:
///
/// *   Attach a policy to the user that allows the user to call `AssumeRole` (as long as the role's trust policy trusts the account).
///
/// *   Add the user as a principal directly in the role's trust policy.
///
///
/// You can do either because the role’s trust policy acts as an IAM resource-based policy. When a resource-based policy grants access to a principal in the same account, no additional identity-based policy is required. For more information about trust policies and resource-based policies, see [IAM Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) in the _IAM User Guide_.
///
/// **Tags**
///
/// (Optional) You can pass tag key-value pairs to your session. These tags are called session tags. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
///
/// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
///
/// You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
///
/// **Using MFA with AssumeRole**
///
/// (Optional) You can include multi-factor authentication (MFA) information when you call `AssumeRole`. This is useful for cross-account scenarios to ensure that the user that assumes the role has been authenticated with an Amazon Web Services MFA device. In that scenario, the trust policy of the role being assumed includes a condition that tests for MFA authentication. If the caller does not include valid MFA information, the request to assume the role is denied. The condition in a trust policy that tests for MFA authentication might look like the following example.
///
/// `"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}`
///
/// For more information, see [Configuring MFA-Protected API Access](https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html) in the _IAM User Guide_ guide.
///
/// To use MFA with `AssumeRole`, you pass values for the `SerialNumber` and `TokenCode` parameters. The `SerialNumber` value identifies the user's hardware or virtual MFA device. The `TokenCode` is the time-based one-time password (TOTP) that the MFA device produces.
class AssumeRoleOperation extends _i1.HttpOperation<_i2.AssumeRoleRequest,
    _i2.AssumeRoleRequest, _i3.AssumeRoleResponse, _i3.AssumeRoleResponse> {
  /// Returns a set of temporary security credentials that you can use to access Amazon Web Services resources. These temporary credentials consist of an access key ID, a secret access key, and a security token. Typically, you use `AssumeRole` within your account or for cross-account access. For a comparison of `AssumeRole` with other API operations that produce temporary credentials, see [Requesting Temporary Security Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html) and [Comparing the Amazon Web Services STS API operations](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison) in the _IAM User Guide_.
  ///
  /// **Permissions**
  ///
  /// The temporary security credentials created by `AssumeRole` can be used to make API calls to any Amazon Web Services service with the following exception: You cannot call the Amazon Web Services STS `GetFederationToken` or `GetSessionToken` API operations.
  ///
  /// (Optional) You can pass inline or managed [session policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) to this operation. You can pass a single JSON policy document to use as an inline session policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies. The plaintext that you use for both inline and managed session policies can't exceed 2,048 characters. Passing policies to this operation returns new temporary credentials. The resulting session's permissions are the intersection of the role's identity-based policy and the session policies. You can use the role's temporary credentials in subsequent Amazon Web Services API calls to access resources in the account that owns the role. You cannot use session policies to grant more permissions than those allowed by the identity-based policy of the role that is being assumed. For more information, see [Session Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session) in the _IAM User Guide_.
  ///
  /// When you create a role, you create two policies: a role trust policy that specifies _who_ can assume the role, and a permissions policy that specifies _what_ can be done with the role. You specify the trusted principal that is allowed to assume the role in the role trust policy.
  ///
  /// To assume a role from a different account, your Amazon Web Services account must be trusted by the role. The trust relationship is defined in the role's trust policy when the role is created. That trust policy states which accounts are allowed to delegate that access to users in the account.
  ///
  /// A user who wants to access a role in a different account must also have permissions that are delegated from the account administrator. The administrator must attach a policy that allows the user to call `AssumeRole` for the ARN of the role in the other account.
  ///
  /// To allow a user to assume a role in the same account, you can do either of the following:
  ///
  /// *   Attach a policy to the user that allows the user to call `AssumeRole` (as long as the role's trust policy trusts the account).
  ///
  /// *   Add the user as a principal directly in the role's trust policy.
  ///
  ///
  /// You can do either because the role’s trust policy acts as an IAM resource-based policy. When a resource-based policy grants access to a principal in the same account, no additional identity-based policy is required. For more information about trust policies and resource-based policies, see [IAM Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) in the _IAM User Guide_.
  ///
  /// **Tags**
  ///
  /// (Optional) You can pass tag key-value pairs to your session. These tags are called session tags. For more information about session tags, see [Passing Session Tags in STS](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html) in the _IAM User Guide_.
  ///
  /// An administrator must grant you the permissions necessary to pass session tags. The administrator can also create granular permissions to allow you to pass only specific session tags. For more information, see [Tutorial: Using Tags for Attribute-Based Access Control](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html) in the _IAM User Guide_.
  ///
  /// You can set the session tags as transitive. Transitive tags persist during role chaining. For more information, see [Chaining Roles with Session Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining) in the _IAM User Guide_.
  ///
  /// **Using MFA with AssumeRole**
  ///
  /// (Optional) You can include multi-factor authentication (MFA) information when you call `AssumeRole`. This is useful for cross-account scenarios to ensure that the user that assumes the role has been authenticated with an Amazon Web Services MFA device. In that scenario, the trust policy of the role being assumed includes a condition that tests for MFA authentication. If the caller does not include valid MFA information, the request to assume the role is denied. The condition in a trust policy that tests for MFA authentication might look like the following example.
  ///
  /// `"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}`
  ///
  /// For more information, see [Configuring MFA-Protected API Access](https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html) in the _IAM User Guide_ guide.
  ///
  /// To use MFA with `AssumeRole`, you pass values for the `SerialNumber` and `TokenCode` parameters. The `SerialNumber` value identifies the user's hardware or virtual MFA device. The `TokenCode` is the time-based one-time password (TOTP) that the MFA device produces.
  AssumeRoleOperation({
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
      _i1.HttpProtocol<_i2.AssumeRoleRequest, _i2.AssumeRoleRequest,
          _i3.AssumeRoleResponse, _i3.AssumeRoleResponse>> protocols = [
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
      action: 'AssumeRole',
      version: '2011-06-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ExpiredTokenException',
          code: 'ExpiredTokenException',
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
  _i1.HttpRequest buildRequest(_i2.AssumeRoleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AssumeRoleResponse? output]) => 200;
  @override
  _i3.AssumeRoleResponse buildOutput(
    _i3.AssumeRoleResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.AssumeRoleResponse.fromResponse(
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
        _i1.SmithyError<_i10.MalformedPolicyDocumentException,
            _i10.MalformedPolicyDocumentException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'MalformedPolicyDocumentException',
          ),
          _i1.ErrorKind.client,
          _i10.MalformedPolicyDocumentException,
          statusCode: 400,
          builder: _i10.MalformedPolicyDocumentException.fromResponse,
        ),
        _i1.SmithyError<_i11.PackedPolicyTooLargeException,
            _i11.PackedPolicyTooLargeException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'PackedPolicyTooLargeException',
          ),
          _i1.ErrorKind.client,
          _i11.PackedPolicyTooLargeException,
          statusCode: 400,
          builder: _i11.PackedPolicyTooLargeException.fromResponse,
        ),
        _i1.SmithyError<_i12.RegionDisabledException,
            _i12.RegionDisabledException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.sts',
            shape: 'RegionDisabledException',
          ),
          _i1.ErrorKind.client,
          _i12.RegionDisabledException,
          statusCode: 403,
          builder: _i12.RegionDisabledException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'AssumeRole';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.AssumeRoleResponse> run(
    _i2.AssumeRoleRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i13.runZoned(
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
