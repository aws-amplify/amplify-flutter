// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.update_open_id_connect_provider_thumbprint_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/update_open_id_connect_provider_thumbprint_request.dart'
    as _i2;

/// Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.
///
/// The list that you pass with this operation completely replaces the existing list of thumbprints. (The lists are not merged.)
///
/// Typically, you need to update a thumbprint only when the identity provider certificate changes, which occurs rarely. However, if the provider's certificate _does_ change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.
///
/// Amazon Web Services secures communication with some OIDC identity providers (IdPs) through our library of trusted certificate authorities (CAs) instead of using a certificate thumbprint to verify your IdP server certificate. These OIDC IdPs include Google, Auth0, and those that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these cases, your legacy thumbprint remains in your configuration, but is no longer used for validation.
///
/// Trust for the OIDC provider is derived from the provider certificate and is validated by the thumbprint. Therefore, it is best to limit access to the `UpdateOpenIDConnectProviderThumbprint` operation to highly privileged users.
class UpdateOpenIdConnectProviderThumbprintOperation extends _i1.HttpOperation<
    _i2.UpdateOpenIdConnectProviderThumbprintRequest,
    _i2.UpdateOpenIdConnectProviderThumbprintRequest,
    _i1.Unit,
    _i1.Unit> {
  /// Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.
  ///
  /// The list that you pass with this operation completely replaces the existing list of thumbprints. (The lists are not merged.)
  ///
  /// Typically, you need to update a thumbprint only when the identity provider certificate changes, which occurs rarely. However, if the provider's certificate _does_ change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.
  ///
  /// Amazon Web Services secures communication with some OIDC identity providers (IdPs) through our library of trusted certificate authorities (CAs) instead of using a certificate thumbprint to verify your IdP server certificate. These OIDC IdPs include Google, Auth0, and those that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these cases, your legacy thumbprint remains in your configuration, but is no longer used for validation.
  ///
  /// Trust for the OIDC provider is derived from the provider certificate and is validated by the thumbprint. Therefore, it is best to limit access to the `UpdateOpenIDConnectProviderThumbprint` operation to highly privileged users.
  UpdateOpenIdConnectProviderThumbprintOperation({
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
      _i1.HttpProtocol<
          _i2.UpdateOpenIdConnectProviderThumbprintRequest,
          _i2.UpdateOpenIdConnectProviderThumbprintRequest,
          _i1.Unit,
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
      action: 'UpdateOpenIDConnectProviderThumbprint',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i4.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
          httpResponseCode: 400,
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
  _i1.HttpRequest buildRequest(
          _i2.UpdateOpenIdConnectProviderThumbprintRequest input) =>
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
        _i1.SmithyError<_i8.InvalidInputException, _i8.InvalidInputException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i8.InvalidInputException,
          statusCode: 400,
          builder: _i8.InvalidInputException.fromResponse,
        ),
        _i1.SmithyError<_i9.NoSuchEntityException, _i9.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i9.NoSuchEntityException,
          statusCode: 404,
          builder: _i9.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<_i10.ServiceFailureException,
            _i10.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i10.ServiceFailureException,
          statusCode: 500,
          builder: _i10.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateOpenIDConnectProviderThumbprint';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.UpdateOpenIdConnectProviderThumbprintRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
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
