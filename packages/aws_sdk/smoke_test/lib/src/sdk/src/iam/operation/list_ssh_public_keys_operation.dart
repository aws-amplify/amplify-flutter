// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_ssh_public_keys_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_ssh_public_keys_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key_metadata.dart'
    as _i5;

/// Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list.
///
/// The SSH public keys returned by this operation are used only for authenticating the IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
///
/// Although each user is limited to a small number of keys, you can still paginate the results using the `MaxItems` and `Marker` parameters.
class ListSshPublicKeysOperation extends _i1.PaginatedHttpOperation<
    _i2.ListSshPublicKeysRequest,
    _i2.ListSshPublicKeysRequest,
    _i3.ListSshPublicKeysResponse,
    _i3.ListSshPublicKeysResponse,
    String,
    int,
    _i4.BuiltList<_i5.SshPublicKeyMetadata>> {
  /// Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list.
  ///
  /// The SSH public keys returned by this operation are used only for authenticating the IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see [Set up CodeCommit for SSH connections](https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html) in the _CodeCommit User Guide_.
  ///
  /// Although each user is limited to a small number of keys, you can still paginate the results using the `MaxItems` and `Marker` parameters.
  ListSshPublicKeysOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
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
          _i2.ListSshPublicKeysRequest,
          _i2.ListSshPublicKeysRequest,
          _i3.ListSshPublicKeysResponse,
          _i3.ListSshPublicKeysResponse>> protocols = [
    _i7.AwsQueryProtocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'ListSSHPublicKeys',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i7.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        )
      ],
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.ListSshPublicKeysRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListSshPublicKeysResponse? output]) => 200;
  @override
  _i3.ListSshPublicKeysResponse buildOutput(
    _i3.ListSshPublicKeysResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ListSshPublicKeysResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.NoSuchEntityException, _i11.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchEntityException,
          statusCode: 404,
          builder: _i11.NoSuchEntityException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListSSHPublicKeys';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListSshPublicKeysResponse> run(
    _i2.ListSshPublicKeysRequest input, {
    _i9.AWSHttpClient? client,
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.ListSshPublicKeysResponse output) => output.marker;
  @override
  _i4.BuiltList<_i5.SshPublicKeyMetadata> getItems(
          _i3.ListSshPublicKeysResponse output) =>
      output.sshPublicKeys ?? _i4.BuiltList();
  @override
  _i2.ListSshPublicKeysRequest rebuildInput(
    _i2.ListSshPublicKeysRequest input,
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
