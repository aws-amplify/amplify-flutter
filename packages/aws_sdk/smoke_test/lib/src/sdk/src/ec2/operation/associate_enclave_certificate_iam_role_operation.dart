// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.associate_enclave_certificate_iam_role_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_enclave_certificate_iam_role_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_enclave_certificate_iam_role_result.dart';

/// Associates an Identity and Access Management (IAM) role with an Certificate Manager (ACM) certificate. This enables the certificate to be used by the ACM for Nitro Enclaves application inside an enclave. For more information, see [Certificate Manager for Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
///
/// When the IAM role is associated with the ACM certificate, the certificate, certificate chain, and encrypted private key are placed in an Amazon S3 location that only the associated IAM role can access. The private key of the certificate is encrypted with an Amazon Web Services managed key that has an attached attestation-based key policy.
///
/// To enable the IAM role to access the Amazon S3 object, you must grant it permission to call `s3:GetObject` on the Amazon S3 bucket returned by the command. To enable the IAM role to access the KMS key, you must grant it permission to call `kms:Decrypt` on the KMS key returned by the command. For more information, see [Grant the role permission to access the certificate and encryption key](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy) in the _Amazon Web Services Nitro Enclaves User Guide_.
class AssociateEnclaveCertificateIamRoleOperation extends _i1.HttpOperation<
    AssociateEnclaveCertificateIamRoleRequest,
    AssociateEnclaveCertificateIamRoleRequest,
    AssociateEnclaveCertificateIamRoleResult,
    AssociateEnclaveCertificateIamRoleResult> {
  /// Associates an Identity and Access Management (IAM) role with an Certificate Manager (ACM) certificate. This enables the certificate to be used by the ACM for Nitro Enclaves application inside an enclave. For more information, see [Certificate Manager for Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  ///
  /// When the IAM role is associated with the ACM certificate, the certificate, certificate chain, and encrypted private key are placed in an Amazon S3 location that only the associated IAM role can access. The private key of the certificate is encrypted with an Amazon Web Services managed key that has an attached attestation-based key policy.
  ///
  /// To enable the IAM role to access the Amazon S3 object, you must grant it permission to call `s3:GetObject` on the Amazon S3 bucket returned by the command. To enable the IAM role to access the KMS key, you must grant it permission to call `kms:Decrypt` on the KMS key returned by the command. For more information, see [Grant the role permission to access the certificate and encryption key](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy) in the _Amazon Web Services Nitro Enclaves User Guide_.
  AssociateEnclaveCertificateIamRoleOperation({
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
          AssociateEnclaveCertificateIamRoleRequest,
          AssociateEnclaveCertificateIamRoleRequest,
          AssociateEnclaveCertificateIamRoleResult,
          AssociateEnclaveCertificateIamRoleResult>> protocols = [
    _i3.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'AssociateEnclaveCertificateIamRole',
      version: '2016-11-15',
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
  _i1.HttpRequest buildRequest(
          AssociateEnclaveCertificateIamRoleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([AssociateEnclaveCertificateIamRoleResult? output]) => 200;
  @override
  AssociateEnclaveCertificateIamRoleResult buildOutput(
    AssociateEnclaveCertificateIamRoleResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      AssociateEnclaveCertificateIamRoleResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'AssociateEnclaveCertificateIamRole';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<AssociateEnclaveCertificateIamRoleResult> run(
    AssociateEnclaveCertificateIamRoleRequest input, {
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
