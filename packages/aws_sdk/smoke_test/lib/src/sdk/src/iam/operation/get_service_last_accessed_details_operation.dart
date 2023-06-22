// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.get_service_last_accessed_details_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/get_service_last_accessed_details_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i10;

/// Retrieves a service last accessed report that was created using the `GenerateServiceLastAccessedDetails` operation. You can use the `JobId` parameter in `GetServiceLastAccessedDetails` to retrieve the status of your report job. When the report is complete, you can retrieve the generated report. The report includes a list of Amazon Web Services services that the resource (user, group, role, or managed policy) can access.
///
/// Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
///
/// For each service that the resource could access using permissions policies, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, the `GetServiceLastAccessedDetails` operation returns the reason that it failed.
///
/// The `GetServiceLastAccessedDetails` operation returns a list of services. This list includes the number of entities that have attempted to access the service and the date and time of the last attempt. It also returns the ARN of the following entity, depending on the resource ARN that you used to generate the report:
///
/// *   **User** – Returns the user ARN that you used to generate the report
///
/// *   **Group** – Returns the ARN of the group member (user) that last attempted to access the service
///
/// *   **Role** – Returns the role ARN that you used to generate the report
///
/// *   **Policy** – Returns the ARN of the user or role that last used the policy to attempt to access the service
///
///
/// By default, the list is sorted by service namespace.
///
/// If you specified `ACTION_LEVEL` granularity when you generated the report, this operation returns service and action last accessed data. This includes the most recent access attempt for each tracked action within a service. Otherwise, this operation returns only service data.
///
/// For more information about service and action last accessed data, see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
class GetServiceLastAccessedDetailsOperation extends _i1.HttpOperation<
    _i2.GetServiceLastAccessedDetailsRequest,
    _i2.GetServiceLastAccessedDetailsRequest,
    _i3.GetServiceLastAccessedDetailsResponse,
    _i3.GetServiceLastAccessedDetailsResponse> {
  /// Retrieves a service last accessed report that was created using the `GenerateServiceLastAccessedDetails` operation. You can use the `JobId` parameter in `GetServiceLastAccessedDetails` to retrieve the status of your report job. When the report is complete, you can retrieve the generated report. The report includes a list of Amazon Web Services services that the resource (user, group, role, or managed policy) can access.
  ///
  /// Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, Organizations policies, IAM permissions boundaries, and STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see [Evaluating policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics) in the _IAM User Guide_.
  ///
  /// For each service that the resource could access using permissions policies, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, the `GetServiceLastAccessedDetails` operation returns the reason that it failed.
  ///
  /// The `GetServiceLastAccessedDetails` operation returns a list of services. This list includes the number of entities that have attempted to access the service and the date and time of the last attempt. It also returns the ARN of the following entity, depending on the resource ARN that you used to generate the report:
  ///
  /// *   **User** – Returns the user ARN that you used to generate the report
  ///
  /// *   **Group** – Returns the ARN of the group member (user) that last attempted to access the service
  ///
  /// *   **Role** – Returns the role ARN that you used to generate the report
  ///
  /// *   **Policy** – Returns the ARN of the user or role that last used the policy to attempt to access the service
  ///
  ///
  /// By default, the list is sorted by service namespace.
  ///
  /// If you specified `ACTION_LEVEL` granularity when you generated the report, this operation returns service and action last accessed data. This includes the most recent access attempt for each tracked action within a service. Otherwise, this operation returns only service data.
  ///
  /// For more information about service and action last accessed data, see [Reducing permissions using service last accessed data](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html) in the _IAM User Guide_.
  GetServiceLastAccessedDetailsOperation({
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
          _i2.GetServiceLastAccessedDetailsRequest,
          _i2.GetServiceLastAccessedDetailsRequest,
          _i3.GetServiceLastAccessedDetailsResponse,
          _i3.GetServiceLastAccessedDetailsResponse>> protocols = [
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
      action: 'GetServiceLastAccessedDetails',
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
          _i2.GetServiceLastAccessedDetailsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetServiceLastAccessedDetailsResponse? output]) => 200;
  @override
  _i3.GetServiceLastAccessedDetailsResponse buildOutput(
    _i3.GetServiceLastAccessedDetailsResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetServiceLastAccessedDetailsResponse.fromResponse(
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
  String get runtimeTypeName => 'GetServiceLastAccessedDetails';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetServiceLastAccessedDetailsResponse> run(
    _i2.GetServiceLastAccessedDetailsRequest input, {
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
