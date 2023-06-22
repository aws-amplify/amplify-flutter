// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.list_server_certificates_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/list_server_certificates_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i11;

/// Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.
///
/// You can paginate the results using the `MaxItems` and `Marker` parameters.
///
/// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic also includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
///
/// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see GetServerCertificate.
class ListServerCertificatesOperation extends _i1.PaginatedHttpOperation<
    _i2.ListServerCertificatesRequest,
    _i2.ListServerCertificatesRequest,
    _i3.ListServerCertificatesResponse,
    _i3.ListServerCertificatesResponse,
    String,
    int,
    _i4.BuiltList<_i5.ServerCertificateMetadata>> {
  /// Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.
  ///
  /// You can paginate the results using the `MaxItems` and `Marker` parameters.
  ///
  /// For more information about working with server certificates, see [Working with server certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_. This topic also includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.
  ///
  /// IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see GetServerCertificate.
  ListServerCertificatesOperation({
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
          _i2.ListServerCertificatesRequest,
          _i2.ListServerCertificatesRequest,
          _i3.ListServerCertificatesResponse,
          _i3.ListServerCertificatesResponse>> protocols = [
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
      action: 'ListServerCertificates',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i7.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
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
  _i1.HttpRequest buildRequest(_i2.ListServerCertificatesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ListServerCertificatesResponse? output]) => 200;
  @override
  _i3.ListServerCertificatesResponse buildOutput(
    _i3.ListServerCertificatesResponse payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.ListServerCertificatesResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i11.ServiceFailureException,
            _i11.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i11.ServiceFailureException,
          statusCode: 500,
          builder: _i11.ServiceFailureException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'ListServerCertificates';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ListServerCertificatesResponse> run(
    _i2.ListServerCertificatesRequest input, {
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
  String? getToken(_i3.ListServerCertificatesResponse output) => output.marker;
  @override
  _i4.BuiltList<_i5.ServerCertificateMetadata> getItems(
          _i3.ListServerCertificatesResponse output) =>
      output.serverCertificateMetadataList;
  @override
  _i2.ListServerCertificatesRequest rebuildInput(
    _i2.ListServerCertificatesRequest input,
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
