// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.execute_change_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_not_found_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/insufficient_capabilities_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_change_set_status_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart'
    as _i12;

/// Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update.
///
/// When you execute a change set, CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.
///
/// If a stack policy is associated with the stack, CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
///
/// To create a change set for the entire stack hierarchy, `IncludeNestedStacks` must have been set to `True`.
class ExecuteChangeSetOperation extends _i1.HttpOperation<
    _i2.ExecuteChangeSetInput,
    _i2.ExecuteChangeSetInput,
    _i3.ExecuteChangeSetOutput,
    _i3.ExecuteChangeSetOutput> {
  /// Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update.
  ///
  /// When you execute a change set, CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.
  ///
  /// If a stack policy is associated with the stack, CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
  ///
  /// To create a change set for the entire stack hierarchy, `IncludeNestedStacks` must have been set to `True`.
  ExecuteChangeSetOperation({
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
      _i1.HttpProtocol<_i2.ExecuteChangeSetInput, _i2.ExecuteChangeSetInput,
          _i3.ExecuteChangeSetOutput, _i3.ExecuteChangeSetOutput>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ExecuteChangeSet',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ChangeSetNotFoundException',
          code: 'ChangeSetNotFound',
          httpResponseCode: 404,
        ),
        _i5.AwsQueryError(
          shape: 'InsufficientCapabilitiesException',
          code: 'InsufficientCapabilitiesException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'InvalidChangeSetStatusException',
          code: 'InvalidChangeSetStatus',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'TokenAlreadyExistsException',
          code: 'TokenAlreadyExistsException',
          httpResponseCode: 400,
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
  _i1.HttpRequest buildRequest(_i2.ExecuteChangeSetInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ExecuteChangeSetOutput? output]) => 200;
  @override
  _i3.ExecuteChangeSetOutput buildOutput(
    _i3.ExecuteChangeSetOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ExecuteChangeSetOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ChangeSetNotFoundException,
            _i9.ChangeSetNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'ChangeSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i9.ChangeSetNotFoundException,
          statusCode: 404,
          builder: _i9.ChangeSetNotFoundException.fromResponse,
        ),
        _i1.SmithyError<_i10.InsufficientCapabilitiesException,
            _i10.InsufficientCapabilitiesException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InsufficientCapabilitiesException',
          ),
          _i1.ErrorKind.client,
          _i10.InsufficientCapabilitiesException,
          statusCode: 400,
          builder: _i10.InsufficientCapabilitiesException.fromResponse,
        ),
        _i1.SmithyError<_i11.InvalidChangeSetStatusException,
            _i11.InvalidChangeSetStatusException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InvalidChangeSetStatusException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidChangeSetStatusException,
          statusCode: 400,
          builder: _i11.InvalidChangeSetStatusException.fromResponse,
        ),
        _i1.SmithyError<_i12.TokenAlreadyExistsException,
            _i12.TokenAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'TokenAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i12.TokenAlreadyExistsException,
          statusCode: 400,
          builder: _i12.TokenAlreadyExistsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ExecuteChangeSet';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ExecuteChangeSetOutput> run(
    _i2.ExecuteChangeSetInput input, {
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
