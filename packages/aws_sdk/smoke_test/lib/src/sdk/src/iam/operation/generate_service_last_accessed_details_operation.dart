// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.generate_service_last_accessed_details_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/generate_service_last_accessed_details_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i10;

/// Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access Amazon Web Services services. Recent activity usually appears within four hours. IAM reports activity for at least the last 400 days, or less if your Region began supporting this feature within the last year. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period).
///
/// The service last accessed data includes all attempts to access an Amazon Web Services API, not just the successful ones. This includes all attempts that were made using the Amazon Web Services Management Console, the Amazon Web Services API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that your account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html) in the _IAM User Guide_.
///
/// The `GenerateServiceLastAccessedDetails` operation returns a `JobId`. Use this parameter in the following operations to retrieve the following details from your report:
///
/// *   GetServiceLastAccessedDetails – Use this operation for users, groups, roles, or policies to list every Amazon Web Services service that the resource could access using permissions policies. For each service, the response includes information about the most recent access attempt.
///
///     The `JobId` returned by `GenerateServiceLastAccessedDetail` must be used by the same role within a session, or by the same user when used to call `GetServiceLastAccessedDetail`.
///
/// *   GetServiceLastAccessedDetailsWithEntities – Use this operation for groups and policies to list information about the associated entities (users or roles) that attempted to access a specific Amazon Web Services service.
///
///
/// To check the status of the `GenerateServiceLastAccessedDetails` request, use the `JobId` parameter in the same operations and test the `JobStatus` response parameter.
///
/// For additional information about the permissions policies that allow an identity (user, group, or role) to access specific services, use the ListPoliciesGrantingServiceAccess operation.
///
/// Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
///
/// For more information about service and action last accessed data, see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
class GenerateServiceLastAccessedDetailsOperation extends _i1.HttpOperation<
    _i2.GenerateServiceLastAccessedDetailsRequest,
    _i2.GenerateServiceLastAccessedDetailsRequest,
    _i3.GenerateServiceLastAccessedDetailsResponse,
    _i3.GenerateServiceLastAccessedDetailsResponse> {
  /// Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access Amazon Web Services services. Recent activity usually appears within four hours. IAM reports activity for at least the last 400 days, or less if your Region began supporting this feature within the last year. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period).
  ///
  /// The service last accessed data includes all attempts to access an Amazon Web Services API, not just the successful ones. This includes all attempts that were made using the Amazon Web Services Management Console, the Amazon Web Services API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that your account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see [Logging IAM events with CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html) in the _IAM User Guide_.
  ///
  /// The `GenerateServiceLastAccessedDetails` operation returns a `JobId`. Use this parameter in the following operations to retrieve the following details from your report:
  ///
  /// *   GetServiceLastAccessedDetails – Use this operation for users, groups, roles, or policies to list every Amazon Web Services service that the resource could access using permissions policies. For each service, the response includes information about the most recent access attempt.
  ///
  ///     The `JobId` returned by `GenerateServiceLastAccessedDetail` must be used by the same role within a session, or by the same user when used to call `GetServiceLastAccessedDetail`.
  ///
  /// *   GetServiceLastAccessedDetailsWithEntities – Use this operation for groups and policies to list information about the associated entities (users or roles) that attempted to access a specific Amazon Web Services service.
  ///
  ///
  /// To check the status of the `GenerateServiceLastAccessedDetails` request, use the `JobId` parameter in the same operations and test the `JobStatus` response parameter.
  ///
  /// For additional information about the permissions policies that allow an identity (user, group, or role) to access specific services, use the ListPoliciesGrantingServiceAccess operation.
  ///
  /// Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// For more information about service and action last accessed data, see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  GenerateServiceLastAccessedDetailsOperation({
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
          _i2.GenerateServiceLastAccessedDetailsRequest,
          _i2.GenerateServiceLastAccessedDetailsRequest,
          _i3.GenerateServiceLastAccessedDetailsResponse,
          _i3.GenerateServiceLastAccessedDetailsResponse>> protocols = [
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
      action: 'GenerateServiceLastAccessedDetails',
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
          _i2.GenerateServiceLastAccessedDetailsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GenerateServiceLastAccessedDetailsResponse? output]) =>
      200;
  @override
  _i3.GenerateServiceLastAccessedDetailsResponse buildOutput(
    _i3.GenerateServiceLastAccessedDetailsResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GenerateServiceLastAccessedDetailsResponse.fromResponse(
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
  String get runtimeTypeName => 'GenerateServiceLastAccessedDetails';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GenerateServiceLastAccessedDetailsResponse> run(
    _i2.GenerateServiceLastAccessedDetailsRequest input, {
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
