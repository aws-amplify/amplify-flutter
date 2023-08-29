// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.copy_image_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_result.dart';

/// Initiates the copy of an AMI. You can copy an AMI from one Region to another, or from a Region to an Outpost. You can't copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost. To copy an AMI to another partition, see [CreateStoreImageTask](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).
///
/// To copy an AMI from one Region to another, specify the source Region using the **SourceRegion** parameter, and specify the destination Region using its endpoint. Copies of encrypted backing snapshots for the AMI are encrypted. Copies of unencrypted backing snapshots remain unencrypted, unless you set `Encrypted` during the copy operation. You cannot create an unencrypted copy of an encrypted backing snapshot.
///
/// To copy an AMI from a Region to an Outpost, specify the source Region using the **SourceRegion** parameter, and specify the ARN of the destination Outpost using **DestinationOutpostArn**. Backing snapshots copied to an Outpost are encrypted by default using the default encryption key for the Region, or a different key that you specify in the request using **KmsKeyId**. Outposts do not support unencrypted snapshots. For more information, [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami) in the _Amazon EC2 User Guide_.
///
/// For more information about the prerequisites and limits when copying an AMI, see [Copy an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html) in the _Amazon EC2 User Guide_.
class CopyImageOperation extends _i1.HttpOperation<CopyImageRequest,
    CopyImageRequest, CopyImageResult, CopyImageResult> {
  /// Initiates the copy of an AMI. You can copy an AMI from one Region to another, or from a Region to an Outpost. You can't copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost. To copy an AMI to another partition, see [CreateStoreImageTask](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).
  ///
  /// To copy an AMI from one Region to another, specify the source Region using the **SourceRegion** parameter, and specify the destination Region using its endpoint. Copies of encrypted backing snapshots for the AMI are encrypted. Copies of unencrypted backing snapshots remain unencrypted, unless you set `Encrypted` during the copy operation. You cannot create an unencrypted copy of an encrypted backing snapshot.
  ///
  /// To copy an AMI from a Region to an Outpost, specify the source Region using the **SourceRegion** parameter, and specify the ARN of the destination Outpost using **DestinationOutpostArn**. Backing snapshots copied to an Outpost are encrypted by default using the default encryption key for the Region, or a different key that you specify in the request using **KmsKeyId**. Outposts do not support unencrypted snapshots. For more information, [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami) in the _Amazon EC2 User Guide_.
  ///
  /// For more information about the prerequisites and limits when copying an AMI, see [Copy an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html) in the _Amazon EC2 User Guide_.
  CopyImageOperation({
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
      _i1.HttpProtocol<CopyImageRequest, CopyImageRequest, CopyImageResult,
          CopyImageResult>> protocols = [
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
      action: 'CopyImage',
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
  _i1.HttpRequest buildRequest(CopyImageRequest input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CopyImageResult? output]) => 200;
  @override
  CopyImageResult buildOutput(
    CopyImageResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CopyImageResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CopyImage';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CopyImageResult> run(
    CopyImageRequest input, {
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
