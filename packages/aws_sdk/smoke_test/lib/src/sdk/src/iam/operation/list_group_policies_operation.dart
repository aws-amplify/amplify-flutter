// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_group_policies_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i8;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i5;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_group_policies_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i11;

/// Lists the names of the inline policies that are embedded in the specified IAM group.
///
/// An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use ListAttachedGroupPolicies. For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
///
/// You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.
class ListGroupPoliciesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListGroupPoliciesRequest,
    _i2.ListGroupPoliciesRequest,
    _i3.ListGroupPoliciesResponse,
    _i3.ListGroupPoliciesResponse,
    String,
    int,
    _i4.BuiltList<String>> {
  /// Lists the names of the inline policies that are embedded in the specified IAM group.
  ///
  /// An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use ListAttachedGroupPolicies. For more information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.
  ListGroupPoliciesOperation({
    required String region,
    Uri? baseUri,
    _i5.AWSCredentialsProvider credentialsProvider =
        const _i5.AWSCredentialsProvider.environment(),
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
          _i2.ListGroupPoliciesRequest,
          _i2.ListGroupPoliciesRequest,
          _i3.ListGroupPoliciesResponse,
          _i3.ListGroupPoliciesResponse>> protocols = [
    _i6.AwsQueryProtocol(
      serializers: _i7.serializers,
      builderFactories: _i7.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i6.WithSigV4(
              region: _region,
              service: _i8.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i6.WithSdkInvocationId(),
            const _i6.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListGroupPolicies',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i6.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i6.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
    )
  ];

  late final _i6.AWSEndpoint _awsEndpoint = _i9.endpointResolver.resolve(
    _i9.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i5.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListGroupPoliciesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListGroupPoliciesResponse? output]) => 200;
  @override
  _i3.ListGroupPoliciesResponse buildOutput(
    _i3.ListGroupPoliciesResponse payload,
    _i8.AWSBaseHttpResponse response,
  ) =>
      _i3.ListGroupPoliciesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
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
        _i1.SmithyError<_i11.ServiceFailureException,
            _i11.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i11.ServiceFailureException,
          statusCode: 500,
          builder: _i11.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ListGroupPolicies';
  @override
  _i6.AWSRetryer get retryer => _i6.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListGroupPoliciesResponse> run(
    _i2.ListGroupPoliciesRequest input, {
    _i8.AWSHttpClient? client,
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
        ...{_i8.AWSHeaders.sdkInvocationId: _i8.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.ListGroupPoliciesResponse output) => output.marker;
  @override
  _i4.BuiltList<String> getItems(_i3.ListGroupPoliciesResponse output) =>
      output.policyNames;
  @override
  _i2.ListGroupPoliciesRequest rebuildInput(
    _i2.ListGroupPoliciesRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.marker = token;
        if (pageSize != null) {
          b.maxItems = pageSize;
        }
      });
}
