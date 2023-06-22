// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_entities_for_policy_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_entities_for_policy_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i11;

/// Lists all IAM users, groups, and roles that the specified managed policy is attached to.
///
/// You can use the optional `EntityFilter` parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set `EntityFilter` to `Role`.
///
/// You can paginate the results using the `MaxItems` and `Marker` parameters.
class ListEntitiesForPolicyOperation extends _i1.PaginatedHttpOperation<
    _i2.ListEntitiesForPolicyRequest,
    _i2.ListEntitiesForPolicyRequest,
    _i3.ListEntitiesForPolicyResponse,
    _i3.ListEntitiesForPolicyResponse,
    String,
    int,
    _i3.ListEntitiesForPolicyResponse> {
  /// Lists all IAM users, groups, and roles that the specified managed policy is attached to.
  ///
  /// You can use the optional `EntityFilter` parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set `EntityFilter` to `Role`.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  ListEntitiesForPolicyOperation({
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
          _i2.ListEntitiesForPolicyRequest,
          _i2.ListEntitiesForPolicyRequest,
          _i3.ListEntitiesForPolicyResponse,
          _i3.ListEntitiesForPolicyResponse>> protocols = [
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
      action: 'ListEntitiesForPolicy',
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
        _i5.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
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
  _i1.HttpRequest buildRequest(_i2.ListEntitiesForPolicyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListEntitiesForPolicyResponse? output]) => 200;
  @override
  _i3.ListEntitiesForPolicyResponse buildOutput(
    _i3.ListEntitiesForPolicyResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ListEntitiesForPolicyResponse.fromResponse(
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
  String get runtimeTypeName => 'ListEntitiesForPolicy';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListEntitiesForPolicyResponse> run(
    _i2.ListEntitiesForPolicyRequest input, {
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

  @override
  String? getToken(_i3.ListEntitiesForPolicyResponse output) => output.marker;
  @override
  _i3.ListEntitiesForPolicyResponse getItems(
          _i3.ListEntitiesForPolicyResponse output) =>
      output;
  @override
  _i2.ListEntitiesForPolicyRequest rebuildInput(
    _i2.ListEntitiesForPolicyRequest input,
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
