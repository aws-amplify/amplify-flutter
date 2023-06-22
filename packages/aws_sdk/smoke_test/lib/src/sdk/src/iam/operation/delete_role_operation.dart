// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.delete_role_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/delete_conflict_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/delete_role_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/unmodifiable_entity_exception.dart'
    as _i13;

/// Deletes the specified role. Unlike the Amazon Web Services Management Console, when you delete a role programmatically, you must delete the items attached to the role manually, or the deletion fails. For more information, see [Deleting an IAM role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli). Before attempting to delete a role, remove the following attached items:
///
/// *   Inline policies (DeleteRolePolicy)
///
/// *   Attached managed policies (DetachRolePolicy)
///
/// *   Instance profile (RemoveRoleFromInstanceProfile)
///
/// *   Optional – Delete instance profile after detaching from role for resource clean up (DeleteInstanceProfile)
///
///
/// Make sure that you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.
class DeleteRoleOperation extends _i1.HttpOperation<_i2.DeleteRoleRequest,
    _i2.DeleteRoleRequest, _i1.Unit, _i1.Unit> {
  /// Deletes the specified role. Unlike the Amazon Web Services Management Console, when you delete a role programmatically, you must delete the items attached to the role manually, or the deletion fails. For more information, see [Deleting an IAM role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli). Before attempting to delete a role, remove the following attached items:
  ///
  /// *   Inline policies (DeleteRolePolicy)
  ///
  /// *   Attached managed policies (DetachRolePolicy)
  ///
  /// *   Instance profile (RemoveRoleFromInstanceProfile)
  ///
  /// *   Optional – Delete instance profile after detaching from role for resource clean up (DeleteInstanceProfile)
  ///
  ///
  /// Make sure that you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.
  DeleteRoleOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.DeleteRoleRequest, _i2.DeleteRoleRequest, _i1.Unit,
          _i1.Unit>> protocols = [
    _i4.AwsQueryProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DeleteRole',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i4.AwsQueryError(
          shape: 'ConcurrentModificationException',
          code: 'ConcurrentModification',
          httpResponseCode: 409,
        ),
        _i4.AwsQueryError(
          shape: 'DeleteConflictException',
          code: 'DeleteConflict',
          httpResponseCode: 409,
        ),
        _i4.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i4.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i4.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
        _i4.AwsQueryError(
          shape: 'UnmodifiableEntityException',
          code: 'UnmodifiableEntity',
          httpResponseCode: 400,
        ),
      ],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.DeleteRoleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i8.ConcurrentModificationException,
            _i8.ConcurrentModificationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          _i8.ConcurrentModificationException,
          statusCode: 409,
          builder: _i8.ConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError<_i9.DeleteConflictException,
            _i9.DeleteConflictException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'DeleteConflictException',
          ),
          _i1.ErrorKind.client,
          _i9.DeleteConflictException,
          statusCode: 409,
          builder: _i9.DeleteConflictException.fromResponse,
        ),
        _i1.SmithyError<_i10.LimitExceededException,
            _i10.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i10.LimitExceededException,
          statusCode: 409,
          builder: _i10.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<_i11.NoSuchEntityException, _i11.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchEntityException,
          statusCode: 404,
          builder: _i11.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<_i12.ServiceFailureException,
            _i12.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i12.ServiceFailureException,
          statusCode: 500,
          builder: _i12.ServiceFailureException.fromResponse,
        ),
        _i1.SmithyError<_i13.UnmodifiableEntityException,
            _i13.UnmodifiableEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'UnmodifiableEntityException',
          ),
          _i1.ErrorKind.client,
          _i13.UnmodifiableEntityException,
          statusCode: 400,
          builder: _i13.UnmodifiableEntityException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'DeleteRole';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.DeleteRoleRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
