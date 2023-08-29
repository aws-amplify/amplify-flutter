// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.import_volume_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_result.dart';

/// Creates an import volume task using metadata from the specified disk image.
///
/// This API action supports only single-volume VMs. To import multi-volume VMs, use ImportImage instead. To import a disk to a snapshot, use ImportSnapshot instead.
///
/// This API action is not supported by the Command Line Interface (CLI). For information about using the Amazon EC2 CLI, which is deprecated, see [Importing Disks to Amazon EBS](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs) in the _Amazon EC2 CLI Reference_ PDF file.
///
/// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
class ImportVolumeOperation extends _i1.HttpOperation<ImportVolumeRequest,
    ImportVolumeRequest, ImportVolumeResult, ImportVolumeResult> {
  /// Creates an import volume task using metadata from the specified disk image.
  ///
  /// This API action supports only single-volume VMs. To import multi-volume VMs, use ImportImage instead. To import a disk to a snapshot, use ImportSnapshot instead.
  ///
  /// This API action is not supported by the Command Line Interface (CLI). For information about using the Amazon EC2 CLI, which is deprecated, see [Importing Disks to Amazon EBS](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs) in the _Amazon EC2 CLI Reference_ PDF file.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  ImportVolumeOperation({
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
      _i1.HttpProtocol<ImportVolumeRequest, ImportVolumeRequest,
          ImportVolumeResult, ImportVolumeResult>> protocols = [
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
      action: 'ImportVolume',
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
  _i1.HttpRequest buildRequest(ImportVolumeRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ImportVolumeResult? output]) => 200;
  @override
  ImportVolumeResult buildOutput(
    ImportVolumeResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ImportVolumeResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ImportVolume';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ImportVolumeResult> run(
    ImportVolumeRequest input, {
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
