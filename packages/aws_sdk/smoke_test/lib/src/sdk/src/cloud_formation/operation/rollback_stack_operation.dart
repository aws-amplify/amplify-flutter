// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.rollback_stack_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_stack_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart';

/// When specifying `RollbackStack`, you preserve the state of previously provisioned resources when an operation fails. You can check the status of the stack through the DescribeStacks operation.
///
/// Rolls back the specified stack to the last known stable state from `CREATE_FAILED` or `UPDATE_FAILED` stack statuses.
///
/// This operation will delete a stack if it doesn't contain a last known stable state. A last known stable state includes any status in a `*_COMPLETE`. This includes the following stack statuses.
///
/// *   `CREATE_COMPLETE`
///
/// *   `UPDATE_COMPLETE`
///
/// *   `UPDATE\_ROLLBACK\_COMPLETE`
///
/// *   `IMPORT_COMPLETE`
///
/// *   `IMPORT\_ROLLBACK\_COMPLETE`
class RollbackStackOperation extends _i1.HttpOperation<RollbackStackInput,
    RollbackStackInput, RollbackStackOutput, RollbackStackOutput> {
  /// When specifying `RollbackStack`, you preserve the state of previously provisioned resources when an operation fails. You can check the status of the stack through the DescribeStacks operation.
  ///
  /// Rolls back the specified stack to the last known stable state from `CREATE_FAILED` or `UPDATE_FAILED` stack statuses.
  ///
  /// This operation will delete a stack if it doesn't contain a last known stable state. A last known stable state includes any status in a `*_COMPLETE`. This includes the following stack statuses.
  ///
  /// *   `CREATE_COMPLETE`
  ///
  /// *   `UPDATE_COMPLETE`
  ///
  /// *   `UPDATE\_ROLLBACK\_COMPLETE`
  ///
  /// *   `IMPORT_COMPLETE`
  ///
  /// *   `IMPORT\_ROLLBACK\_COMPLETE`
  RollbackStackOperation({
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
      _i1.HttpProtocol<RollbackStackInput, RollbackStackInput,
          RollbackStackOutput, RollbackStackOutput>> protocols = [
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
      action: 'RollbackStack',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i3.AwsQueryError(
          shape: 'TokenAlreadyExistsException',
          code: 'TokenAlreadyExistsException',
          httpResponseCode: 400,
        )
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
  _i1.HttpRequest buildRequest(RollbackStackInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([RollbackStackOutput? output]) => 200;
  @override
  RollbackStackOutput buildOutput(
    RollbackStackOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      RollbackStackOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
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
        )
      ];
  @override
  String get runtimeTypeName => 'RollbackStack';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<RollbackStackOutput> run(
    RollbackStackInput input, {
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
