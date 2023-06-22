// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_policies_granting_service_access_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_policies_granting_service_access_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i10;

/// Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.
///
/// This operation does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
///
/// The list of policies returned by the operation depends on the ARN of the identity that you provide.
///
/// *   **User** – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs.
///
/// *   **Group** – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.
///
/// *   **Role** – The list of policies includes only the managed and inline policies that are attached to the role.
///
///
/// For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html) in the _IAM User Guide_.
///
/// Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the GetUser or GetRole operations.
class ListPoliciesGrantingServiceAccessOperation extends _i1.HttpOperation<
    _i2.ListPoliciesGrantingServiceAccessRequest,
    _i2.ListPoliciesGrantingServiceAccessRequest,
    _i3.ListPoliciesGrantingServiceAccessResponse,
    _i3.ListPoliciesGrantingServiceAccessResponse> {
  /// Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.
  ///
  /// This operation does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// The list of policies returned by the operation depends on the ARN of the identity that you provide.
  ///
  /// *   **User** – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs.
  ///
  /// *   **Group** – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.
  ///
  /// *   **Role** – The list of policies includes only the managed and inline policies that are attached to the role.
  ///
  ///
  /// For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the GetUser or GetRole operations.
  ListPoliciesGrantingServiceAccessOperation({
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
          _i2.ListPoliciesGrantingServiceAccessRequest,
          _i2.ListPoliciesGrantingServiceAccessRequest,
          _i3.ListPoliciesGrantingServiceAccessResponse,
          _i3.ListPoliciesGrantingServiceAccessResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListPoliciesGrantingServiceAccess',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
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
  _i1.HttpRequest buildRequest(
          _i2.ListPoliciesGrantingServiceAccessRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListPoliciesGrantingServiceAccessResponse? output]) =>
      200;
  @override
  _i3.ListPoliciesGrantingServiceAccessResponse buildOutput(
    _i3.ListPoliciesGrantingServiceAccessResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListPoliciesGrantingServiceAccessResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InvalidInputException, _i9.InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidInputException,
          statusCode: 400,
          builder: _i9.InvalidInputException.fromResponse,
        ),
        _i1.SmithyError<_i10.NoSuchEntityException, _i10.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i10.NoSuchEntityException,
          statusCode: 404,
          builder: _i10.NoSuchEntityException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ListPoliciesGrantingServiceAccess';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListPoliciesGrantingServiceAccessResponse> run(
    _i2.ListPoliciesGrantingServiceAccessRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
