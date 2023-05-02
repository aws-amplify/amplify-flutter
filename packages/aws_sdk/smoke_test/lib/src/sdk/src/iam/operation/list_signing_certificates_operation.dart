// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.operation.list_signing_certificates_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i13;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_signing_certificates_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart'
    as _i5;

/// Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list.
///
/// Although each user is limited to a small number of signing certificates, you can still paginate the results using the `MaxItems` and `Marker` parameters.
///
/// If the `UserName` field is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request for this operation. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
class ListSigningCertificatesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListSigningCertificatesRequest,
    _i2.ListSigningCertificatesRequest,
    _i3.ListSigningCertificatesResponse,
    _i3.ListSigningCertificatesResponse,
    String,
    int,
    _i4.BuiltList<_i5.SigningCertificate>> {
  /// Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list.
  ///
  /// Although each user is limited to a small number of signing certificates, you can still paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// If the `UserName` field is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request for this operation. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  ListSigningCertificatesOperation({
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
          _i2.ListSigningCertificatesRequest,
          _i2.ListSigningCertificatesRequest,
          _i3.ListSigningCertificatesResponse,
          _i3.ListSigningCertificatesResponse>> protocols = [
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
      action: 'ListSigningCertificates',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i7.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i7.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
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
  _i1.HttpRequest buildRequest(_i2.ListSigningCertificatesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListSigningCertificatesResponse? output]) => 200;
  @override
  _i3.ListSigningCertificatesResponse buildOutput(
    _i3.ListSigningCertificatesResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ListSigningCertificatesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i11.NoSuchEntityException,
          statusCode: 404,
          builder: _i11.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i12.ServiceFailureException,
          statusCode: 500,
          builder: _i12.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'ListSigningCertificates';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListSigningCertificatesResponse> run(
    _i2.ListSigningCertificatesRequest input, {
    _i9.AWSHttpClient? client,
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
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.ListSigningCertificatesResponse output) => output.marker;
  @override
  _i4.BuiltList<_i5.SigningCertificate> getItems(
          _i3.ListSigningCertificatesResponse output) =>
      output.certificates;
  @override
  _i2.ListSigningCertificatesRequest rebuildInput(
    _i2.ListSigningCertificatesRequest input,
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
