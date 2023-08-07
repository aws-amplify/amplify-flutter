// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.execute_change_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_not_found_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/execute_change_set_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/insufficient_capabilities_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_change_set_status_exception.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart';

/// Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update.
///
/// When you execute a change set, CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack.
///
/// If a stack policy is associated with the stack, CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
///
/// To create a change set for the entire stack hierarchy, `IncludeNestedStacks` must have been set to `True`.
class ExecuteChangeSetOperation extends _i1.HttpOperation<ExecuteChangeSetInput,
    ExecuteChangeSetInput, ExecuteChangeSetOutput, ExecuteChangeSetOutput> {
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
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<ExecuteChangeSetInput, ExecuteChangeSetInput,
          ExecuteChangeSetOutput, ExecuteChangeSetOutput>> protocols = [
    _i3.AwsQueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ExecuteChangeSet',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'ChangeSetNotFoundException',
          code: 'ChangeSetNotFound',
          httpResponseCode: 404,
        ),
        _i3.AwsQueryError(
          shape: 'InsufficientCapabilitiesException',
          code: 'InsufficientCapabilitiesException',
          httpResponseCode: 400,
        ),
        _i3.AwsQueryError(
          shape: 'InvalidChangeSetStatusException',
          code: 'InvalidChangeSetStatus',
          httpResponseCode: 400,
        ),
        _i3.AwsQueryError(
          shape: 'TokenAlreadyExistsException',
          code: 'TokenAlreadyExistsException',
          httpResponseCode: 400,
        ),
      ],
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(ExecuteChangeSetInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ExecuteChangeSetOutput? output]) => 200;
  @override
  ExecuteChangeSetOutput buildOutput(
    ExecuteChangeSetOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ExecuteChangeSetOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<ChangeSetNotFoundException, ChangeSetNotFoundException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'ChangeSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          ChangeSetNotFoundException,
          statusCode: 404,
          builder: ChangeSetNotFoundException.fromResponse,
        ),
        _i1.SmithyError<InsufficientCapabilitiesException,
            InsufficientCapabilitiesException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InsufficientCapabilitiesException',
          ),
          _i1.ErrorKind.client,
          InsufficientCapabilitiesException,
          statusCode: 400,
          builder: InsufficientCapabilitiesException.fromResponse,
        ),
        _i1.SmithyError<InvalidChangeSetStatusException,
            InvalidChangeSetStatusException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InvalidChangeSetStatusException',
          ),
          _i1.ErrorKind.client,
          InvalidChangeSetStatusException,
          statusCode: 400,
          builder: InvalidChangeSetStatusException.fromResponse,
        ),
        _i1.SmithyError<TokenAlreadyExistsException,
            TokenAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'TokenAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          TokenAlreadyExistsException,
          statusCode: 400,
          builder: TokenAlreadyExistsException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ExecuteChangeSet';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ExecuteChangeSetOutput> run(
    ExecuteChangeSetInput input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
