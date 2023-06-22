// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.create_change_set_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/already_exists_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/create_change_set_output.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/insufficient_capabilities_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/limit_exceeded_exception.dart'
    as _i11;

/// Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that CloudFormation will create. If you create a change set for an existing stack, CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.
///
/// To create a change set for a stack that doesn't exist, for the `ChangeSetType` parameter, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE` for the `ChangeSetType` parameter. To create a change set for an import operation, specify `IMPORT` for the `ChangeSetType` parameter. After the `CreateChangeSet` call successfully completes, CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action.
///
/// When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. CloudFormation doesn't make changes until you execute the change set.
///
/// To create a change set for the entire stack hierarchy, set `IncludeNestedStacks` to `True`.
class CreateChangeSetOperation extends _i1.HttpOperation<
    _i2.CreateChangeSetInput,
    _i2.CreateChangeSetInput,
    _i3.CreateChangeSetOutput,
    _i3.CreateChangeSetOutput> {
  /// Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that CloudFormation will create. If you create a change set for an existing stack, CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack.
  ///
  /// To create a change set for a stack that doesn't exist, for the `ChangeSetType` parameter, specify `CREATE`. To create a change set for an existing stack, specify `UPDATE` for the `ChangeSetType` parameter. To create a change set for an import operation, specify `IMPORT` for the `ChangeSetType` parameter. After the `CreateChangeSet` call successfully completes, CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action.
  ///
  /// When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. CloudFormation doesn't make changes until you execute the change set.
  ///
  /// To create a change set for the entire stack hierarchy, set `IncludeNestedStacks` to `True`.
  CreateChangeSetOperation({
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
      _i1.HttpProtocol<_i2.CreateChangeSetInput, _i2.CreateChangeSetInput,
          _i3.CreateChangeSetOutput, _i3.CreateChangeSetOutput>> protocols = [
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
      action: 'CreateChangeSet',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'AlreadyExistsException',
          code: 'AlreadyExistsException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'InsufficientCapabilitiesException',
          code: 'InsufficientCapabilitiesException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceededException',
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
  _i1.HttpRequest buildRequest(_i2.CreateChangeSetInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateChangeSetOutput? output]) => 200;
  @override
  _i3.CreateChangeSetOutput buildOutput(
    _i3.CreateChangeSetOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateChangeSetOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.AlreadyExistsException, _i9.AlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'AlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i9.AlreadyExistsException,
          statusCode: 400,
          builder: _i9.AlreadyExistsException.fromResponse,
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
        _i1.SmithyError<_i11.LimitExceededException,
            _i11.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.LimitExceededException,
          statusCode: 400,
          builder: _i11.LimitExceededException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateChangeSet';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateChangeSetOutput> run(
    _i2.CreateChangeSetInput input, {
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
}
