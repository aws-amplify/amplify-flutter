// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.create_subnet_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_result.dart';

/// Creates a subnet in the specified VPC. For an IPv4 only subnet, specify an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a dual stack subnet instead. For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify both an IPv4 CIDR block and an IPv6 CIDR block.
///
/// A subnet CIDR block must not overlap the CIDR block of an existing subnet in the VPC. After you create a subnet, you can't change its CIDR block.
///
/// The allowed size for an IPv4 subnet is between a /28 netmask (16 IP addresses) and a /16 netmask (65,536 IP addresses). Amazon Web Services reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for your use.
///
/// If you've associated an IPv6 CIDR block with your VPC, you can associate an IPv6 CIDR block with a subnet when you create it. The allowed block size for an IPv6 subnet is a /64 netmask.
///
/// If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.
///
/// When you stop an instance in a subnet, it retains its private IPv4 address. It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.
///
/// For more information, see [Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html) in the _Amazon VPC User Guide_.
class CreateSubnetOperation extends _i1.HttpOperation<CreateSubnetRequest,
    CreateSubnetRequest, CreateSubnetResult, CreateSubnetResult> {
  /// Creates a subnet in the specified VPC. For an IPv4 only subnet, specify an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a dual stack subnet instead. For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify both an IPv4 CIDR block and an IPv6 CIDR block.
  ///
  /// A subnet CIDR block must not overlap the CIDR block of an existing subnet in the VPC. After you create a subnet, you can't change its CIDR block.
  ///
  /// The allowed size for an IPv4 subnet is between a /28 netmask (16 IP addresses) and a /16 netmask (65,536 IP addresses). Amazon Web Services reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for your use.
  ///
  /// If you've associated an IPv6 CIDR block with your VPC, you can associate an IPv6 CIDR block with a subnet when you create it. The allowed block size for an IPv6 subnet is a /64 netmask.
  ///
  /// If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.
  ///
  /// When you stop an instance in a subnet, it retains its private IPv4 address. It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.
  ///
  /// For more information, see [Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html) in the _Amazon VPC User Guide_.
  CreateSubnetOperation({
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
      _i1.HttpProtocol<CreateSubnetRequest, CreateSubnetRequest,
          CreateSubnetResult, CreateSubnetResult>> protocols = [
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
      action: 'CreateSubnet',
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
  _i1.HttpRequest buildRequest(CreateSubnetRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateSubnetResult? output]) => 200;
  @override
  CreateSubnetResult buildOutput(
    CreateSubnetResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateSubnetResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateSubnet';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateSubnetResult> run(
    CreateSubnetRequest input, {
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
