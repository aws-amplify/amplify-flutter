// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.upload_ssh_public_key_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/duplicate_ssh_public_key_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_public_key_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/unrecognized_public_key_encoding_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/upload_ssh_public_key_response.dart'
    as _i3;

/// Uploads an SSH public key and associates it with the specified IAM user.
///
/// The SSH public key uploaded by this operation can be used only for authenticating the associated IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
class UploadSshPublicKeyOperation extends _i1.HttpOperation<
    _i2.UploadSshPublicKeyRequest,
    _i2.UploadSshPublicKeyRequest,
    _i3.UploadSshPublicKeyResponse,
    _i3.UploadSshPublicKeyResponse> {
  /// Uploads an SSH public key and associates it with the specified IAM user.
  ///
  /// The SSH public key uploaded by this operation can be used only for authenticating the associated IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  UploadSshPublicKeyOperation({
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
          _i2.UploadSshPublicKeyRequest,
          _i2.UploadSshPublicKeyRequest,
          _i3.UploadSshPublicKeyResponse,
          _i3.UploadSshPublicKeyResponse>> protocols = [
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
      action: 'UploadSSHPublicKey',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'DuplicateSSHPublicKeyException',
          code: 'DuplicateSSHPublicKey',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'InvalidPublicKeyException',
          code: 'InvalidPublicKey',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i5.AwsQueryError(
          shape: 'UnrecognizedPublicKeyEncodingException',
          code: 'UnrecognizedPublicKeyEncoding',
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
  _i1.HttpRequest buildRequest(_i2.UploadSshPublicKeyRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UploadSshPublicKeyResponse? output]) => 200;
  @override
  _i3.UploadSshPublicKeyResponse buildOutput(
    _i3.UploadSshPublicKeyResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.UploadSshPublicKeyResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.DuplicateSshPublicKeyException,
            _i9.DuplicateSshPublicKeyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'DuplicateSSHPublicKeyException',
          ),
          _i1.ErrorKind.client,
          _i9.DuplicateSshPublicKeyException,
          statusCode: 400,
          builder: _i9.DuplicateSshPublicKeyException.fromResponse,
        ),
        _i1.SmithyError<_i10.InvalidPublicKeyException,
            _i10.InvalidPublicKeyException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidPublicKeyException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidPublicKeyException,
          statusCode: 400,
          builder: _i10.InvalidPublicKeyException.fromResponse,
        ),
        _i1.SmithyError<_i11.LimitExceededException,
            _i11.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i11.LimitExceededException,
          statusCode: 409,
          builder: _i11.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<_i12.NoSuchEntityException, _i12.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i12.NoSuchEntityException,
          statusCode: 404,
          builder: _i12.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<_i13.UnrecognizedPublicKeyEncodingException,
            _i13.UnrecognizedPublicKeyEncodingException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'UnrecognizedPublicKeyEncodingException',
          ),
          _i1.ErrorKind.client,
          _i13.UnrecognizedPublicKeyEncodingException,
          statusCode: 400,
          builder: _i13.UnrecognizedPublicKeyEncodingException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UploadSSHPublicKey';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.UploadSshPublicKeyResponse> run(
    _i2.UploadSshPublicKeyRequest input, {
    _i7.AWSHttpClient? client,
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
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }
}
