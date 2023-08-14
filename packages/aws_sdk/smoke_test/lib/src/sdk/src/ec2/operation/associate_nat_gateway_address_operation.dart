// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.associate_nat_gateway_address_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_nat_gateway_address_result.dart';

/// Associates Elastic IP addresses (EIPs) and private IPv4 addresses with a public NAT gateway. For more information, see [Work with NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with) in the _Amazon VPC User Guide_.
///
/// By default, you can associate up to 2 Elastic IP addresses per public NAT gateway. You can increase the limit by requesting a quota adjustment. For more information, see [Elastic IP address quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips) in the _Amazon VPC User Guide_.
class AssociateNatGatewayAddressOperation extends _i1.HttpOperation<
    AssociateNatGatewayAddressRequest,
    AssociateNatGatewayAddressRequest,
    AssociateNatGatewayAddressResult,
    AssociateNatGatewayAddressResult> {
  /// Associates Elastic IP addresses (EIPs) and private IPv4 addresses with a public NAT gateway. For more information, see [Work with NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with) in the _Amazon VPC User Guide_.
  ///
  /// By default, you can associate up to 2 Elastic IP addresses per public NAT gateway. You can increase the limit by requesting a quota adjustment. For more information, see [Elastic IP address quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips) in the _Amazon VPC User Guide_.
  AssociateNatGatewayAddressOperation({
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
          AssociateNatGatewayAddressRequest,
          AssociateNatGatewayAddressRequest,
          AssociateNatGatewayAddressResult,
          AssociateNatGatewayAddressResult>> protocols = [
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
      action: 'AssociateNatGatewayAddress',
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
  _i1.HttpRequest buildRequest(AssociateNatGatewayAddressRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([AssociateNatGatewayAddressResult? output]) => 200;
  @override
  AssociateNatGatewayAddressResult buildOutput(
    AssociateNatGatewayAddressResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      AssociateNatGatewayAddressResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'AssociateNatGatewayAddress';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<AssociateNatGatewayAddressResult> run(
    AssociateNatGatewayAddressRequest input, {
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
