// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.modify_ebs_default_kms_key_id_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ebs_default_kms_key_id_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ebs_default_kms_key_id_result.dart';

/// Changes the default KMS key for EBS encryption by default for your account in this Region.
///
/// Amazon Web Services creates a unique Amazon Web Services managed KMS key in each Region for use with encryption by default. If you change the default KMS key to a symmetric customer managed KMS key, it is used instead of the Amazon Web Services managed KMS key. To reset the default KMS key to the Amazon Web Services managed KMS key for EBS, use ResetEbsDefaultKmsKeyId. Amazon EBS does not support asymmetric KMS keys.
///
/// If you delete or disable the customer managed KMS key that you specified for use with encryption by default, your instances will fail to launch.
///
/// For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
class ModifyEbsDefaultKmsKeyIdOperation extends _i1.HttpOperation<
    ModifyEbsDefaultKmsKeyIdRequest,
    ModifyEbsDefaultKmsKeyIdRequest,
    ModifyEbsDefaultKmsKeyIdResult,
    ModifyEbsDefaultKmsKeyIdResult> {
  /// Changes the default KMS key for EBS encryption by default for your account in this Region.
  ///
  /// Amazon Web Services creates a unique Amazon Web Services managed KMS key in each Region for use with encryption by default. If you change the default KMS key to a symmetric customer managed KMS key, it is used instead of the Amazon Web Services managed KMS key. To reset the default KMS key to the Amazon Web Services managed KMS key for EBS, use ResetEbsDefaultKmsKeyId. Amazon EBS does not support asymmetric KMS keys.
  ///
  /// If you delete or disable the customer managed KMS key that you specified for use with encryption by default, your instances will fail to launch.
  ///
  /// For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ModifyEbsDefaultKmsKeyIdOperation({
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
          ModifyEbsDefaultKmsKeyIdRequest,
          ModifyEbsDefaultKmsKeyIdRequest,
          ModifyEbsDefaultKmsKeyIdResult,
          ModifyEbsDefaultKmsKeyIdResult>> protocols = [
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
      action: 'ModifyEbsDefaultKmsKeyId',
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
  _i1.HttpRequest buildRequest(ModifyEbsDefaultKmsKeyIdRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ModifyEbsDefaultKmsKeyIdResult? output]) => 200;
  @override
  ModifyEbsDefaultKmsKeyIdResult buildOutput(
    ModifyEbsDefaultKmsKeyIdResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ModifyEbsDefaultKmsKeyIdResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ModifyEbsDefaultKmsKeyId';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ModifyEbsDefaultKmsKeyIdResult> run(
    ModifyEbsDefaultKmsKeyIdRequest input, {
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
