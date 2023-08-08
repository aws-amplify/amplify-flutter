// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.operation.continue_update_rollback_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_input.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/continue_update_rollback_output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart';

/// For a specified stack that's in the `UPDATE\_ROLLBACK\_FAILED` state, continues rolling it back to the `UPDATE\_ROLLBACK\_COMPLETE` state. Depending on the cause of the failure, you can manually [fix the error](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) and continue the rollback. By continuing the rollback, you can return your stack to a working state (the `UPDATE\_ROLLBACK\_COMPLETE` state), and then try to update the stack again.
///
/// A stack goes into the `UPDATE\_ROLLBACK\_FAILED` state when CloudFormation can't roll back all changes after a failed stack update. For example, you might have a stack that's rolling back to an old database instance that was deleted outside of CloudFormation. Because CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.
class ContinueUpdateRollbackOperation extends _i1.HttpOperation<
    ContinueUpdateRollbackInput,
    ContinueUpdateRollbackInput,
    ContinueUpdateRollbackOutput,
    ContinueUpdateRollbackOutput> {
  /// For a specified stack that's in the `UPDATE\_ROLLBACK\_FAILED` state, continues rolling it back to the `UPDATE\_ROLLBACK\_COMPLETE` state. Depending on the cause of the failure, you can manually [fix the error](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed) and continue the rollback. By continuing the rollback, you can return your stack to a working state (the `UPDATE\_ROLLBACK\_COMPLETE` state), and then try to update the stack again.
  ///
  /// A stack goes into the `UPDATE\_ROLLBACK\_FAILED` state when CloudFormation can't roll back all changes after a failed stack update. For example, you might have a stack that's rolling back to an old database instance that was deleted outside of CloudFormation. Because CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.
  ContinueUpdateRollbackOperation({
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
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
          ContinueUpdateRollbackInput,
          ContinueUpdateRollbackInput,
          ContinueUpdateRollbackOutput,
          ContinueUpdateRollbackOutput>> protocols = [
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
      action: 'ContinueUpdateRollback',
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
  _i1.HttpRequest buildRequest(ContinueUpdateRollbackInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ContinueUpdateRollbackOutput? output]) => 200;
  @override
  ContinueUpdateRollbackOutput buildOutput(
    ContinueUpdateRollbackOutput payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ContinueUpdateRollbackOutput.fromResponse(
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
  String get runtimeTypeName => 'ContinueUpdateRollback';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ContinueUpdateRollbackOutput> run(
    ContinueUpdateRollbackInput input, {
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
