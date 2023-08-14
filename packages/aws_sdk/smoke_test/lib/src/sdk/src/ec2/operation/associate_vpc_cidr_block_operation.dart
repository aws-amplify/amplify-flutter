// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.associate_vpc_cidr_block_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_vpc_cidr_block_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_vpc_cidr_block_result.dart';

/// Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses ([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)). The IPv6 CIDR block size is fixed at /56.
///
/// You must specify one of the following in the request: an IPv4 CIDR block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.
///
/// For more information about associating CIDR blocks with your VPC and applicable restrictions, see [IP addressing for your VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html) in the _Amazon VPC User Guide_.
class AssociateVpcCidrBlockOperation extends _i1.HttpOperation<
    AssociateVpcCidrBlockRequest,
    AssociateVpcCidrBlockRequest,
    AssociateVpcCidrBlockResult,
    AssociateVpcCidrBlockResult> {
  /// Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses ([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)). The IPv6 CIDR block size is fixed at /56.
  ///
  /// You must specify one of the following in the request: an IPv4 CIDR block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.
  ///
  /// For more information about associating CIDR blocks with your VPC and applicable restrictions, see [IP addressing for your VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html) in the _Amazon VPC User Guide_.
  AssociateVpcCidrBlockOperation({
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
          AssociateVpcCidrBlockRequest,
          AssociateVpcCidrBlockRequest,
          AssociateVpcCidrBlockResult,
          AssociateVpcCidrBlockResult>> protocols = [
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
      action: 'AssociateVpcCidrBlock',
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
  _i1.HttpRequest buildRequest(AssociateVpcCidrBlockRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([AssociateVpcCidrBlockResult? output]) => 200;
  @override
  AssociateVpcCidrBlockResult buildOutput(
    AssociateVpcCidrBlockResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      AssociateVpcCidrBlockResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'AssociateVpcCidrBlock';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<AssociateVpcCidrBlockResult> run(
    AssociateVpcCidrBlockRequest input, {
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
