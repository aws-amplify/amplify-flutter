// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.upload_signing_certificate_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i17;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/duplicate_certificate_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/entity_already_exists_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_certificate_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/iam/model/malformed_certificate_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/iam/model/no_such_entity_exception.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/upload_signing_certificate_response.dart'
    as _i3;

/// Uploads an X.509 signing certificate and associates it with the specified IAM user. Some Amazon Web Services services require you to use certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is `Active`.
///
/// For information about when you would use an X.509 signing certificate, see [Managing server certificates in IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_.
///
/// If the `UserName` is not specified, the IAM user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
///
/// Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling `UploadSigningCertificate`. For information about setting up signatures and authorization through the API, see [Signing Amazon Web Services API requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) in the _Amazon Web Services General Reference_. For general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the _IAM User Guide_.
class UploadSigningCertificateOperation extends _i1.HttpOperation<
    _i2.UploadSigningCertificateRequest,
    _i2.UploadSigningCertificateRequest,
    _i3.UploadSigningCertificateResponse,
    _i3.UploadSigningCertificateResponse> {
  /// Uploads an X.509 signing certificate and associates it with the specified IAM user. Some Amazon Web Services services require you to use certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is `Active`.
  ///
  /// For information about when you would use an X.509 signing certificate, see [Managing server certificates in IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html) in the _IAM User Guide_.
  ///
  /// If the `UserName` is not specified, the IAM user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
  ///
  /// Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling `UploadSigningCertificate`. For information about setting up signatures and authorization through the API, see [Signing Amazon Web Services API requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html) in the _Amazon Web Services General Reference_. For general information about using the Query API with IAM, see [Making query requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html) in the _IAM User Guide_.
  UploadSigningCertificateOperation({
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
          _i2.UploadSigningCertificateRequest,
          _i2.UploadSigningCertificateRequest,
          _i3.UploadSigningCertificateResponse,
          _i3.UploadSigningCertificateResponse>> protocols = [
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
      action: 'UploadSigningCertificate',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ConcurrentModificationException',
          code: 'ConcurrentModification',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'DuplicateCertificateException',
          code: 'DuplicateCertificate',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'EntityAlreadyExistsException',
          code: 'EntityAlreadyExists',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'InvalidCertificateException',
          code: 'InvalidCertificate',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'MalformedCertificateException',
          code: 'MalformedCertificate',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'NoSuchEntityException',
          code: 'NoSuchEntity',
          httpResponseCode: 404,
        ),
        _i5.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
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
  _i1.HttpRequest buildRequest(_i2.UploadSigningCertificateRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UploadSigningCertificateResponse? output]) => 200;
  @override
  _i3.UploadSigningCertificateResponse buildOutput(
    _i3.UploadSigningCertificateResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.UploadSigningCertificateResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.ConcurrentModificationException,
            _i9.ConcurrentModificationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          _i9.ConcurrentModificationException,
          statusCode: 409,
          builder: _i9.ConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError<_i10.DuplicateCertificateException,
            _i10.DuplicateCertificateException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'DuplicateCertificateException',
          ),
          _i1.ErrorKind.client,
          _i10.DuplicateCertificateException,
          statusCode: 409,
          builder: _i10.DuplicateCertificateException.fromResponse,
        ),
        _i1.SmithyError<_i11.EntityAlreadyExistsException,
            _i11.EntityAlreadyExistsException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'EntityAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i11.EntityAlreadyExistsException,
          statusCode: 409,
          builder: _i11.EntityAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError<_i12.InvalidCertificateException,
            _i12.InvalidCertificateException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidCertificateException',
          ),
          _i1.ErrorKind.client,
          _i12.InvalidCertificateException,
          statusCode: 400,
          builder: _i12.InvalidCertificateException.fromResponse,
        ),
        _i1.SmithyError<_i13.LimitExceededException,
            _i13.LimitExceededException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i13.LimitExceededException,
          statusCode: 409,
          builder: _i13.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError<_i14.MalformedCertificateException,
            _i14.MalformedCertificateException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'MalformedCertificateException',
          ),
          _i1.ErrorKind.client,
          _i14.MalformedCertificateException,
          statusCode: 400,
          builder: _i14.MalformedCertificateException.fromResponse,
        ),
        _i1.SmithyError<_i15.NoSuchEntityException, _i15.NoSuchEntityException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'NoSuchEntityException',
          ),
          _i1.ErrorKind.client,
          _i15.NoSuchEntityException,
          statusCode: 404,
          builder: _i15.NoSuchEntityException.fromResponse,
        ),
        _i1.SmithyError<_i16.ServiceFailureException,
            _i16.ServiceFailureException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i16.ServiceFailureException,
          statusCode: 500,
          builder: _i16.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UploadSigningCertificate';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.UploadSigningCertificateResponse> run(
    _i2.UploadSigningCertificateRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i17.runZoned(
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
