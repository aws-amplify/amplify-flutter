// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.assign_private_ip_addresses_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_result.dart';

/// Assigns one or more secondary private IP addresses to the specified network interface.
///
/// You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see [Instance Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon Elastic Compute Cloud User Guide_. For more information about Elastic IP addresses, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// When you move a secondary private IP address to another network interface, any Elastic IP address that is associated with the IP address is also moved.
///
/// Remapping an IP address is an asynchronous operation. When you move an IP address from one network interface to another, check `network/interfaces/macs/mac/local-ipv4s` in the instance metadata to confirm that the remapping is complete.
///
/// You must specify either the IP addresses or the IP address count in the request.
///
/// You can optionally use Prefix Delegation on the network interface. You must specify either the IPv4 Prefix Delegation prefixes, or the IPv4 Prefix Delegation count. For information, see [Assigning prefixes to Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
class AssignPrivateIpAddressesOperation extends _i1.HttpOperation<
    AssignPrivateIpAddressesRequest,
    AssignPrivateIpAddressesRequest,
    AssignPrivateIpAddressesResult,
    AssignPrivateIpAddressesResult> {
  /// Assigns one or more secondary private IP addresses to the specified network interface.
  ///
  /// You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see [Instance Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon Elastic Compute Cloud User Guide_. For more information about Elastic IP addresses, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// When you move a secondary private IP address to another network interface, any Elastic IP address that is associated with the IP address is also moved.
  ///
  /// Remapping an IP address is an asynchronous operation. When you move an IP address from one network interface to another, check `network/interfaces/macs/mac/local-ipv4s` in the instance metadata to confirm that the remapping is complete.
  ///
  /// You must specify either the IP addresses or the IP address count in the request.
  ///
  /// You can optionally use Prefix Delegation on the network interface. You must specify either the IPv4 Prefix Delegation prefixes, or the IPv4 Prefix Delegation count. For information, see [Assigning prefixes to Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  AssignPrivateIpAddressesOperation({
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
          AssignPrivateIpAddressesRequest,
          AssignPrivateIpAddressesRequest,
          AssignPrivateIpAddressesResult,
          AssignPrivateIpAddressesResult>> protocols = [
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
      action: 'AssignPrivateIpAddresses',
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
  _i1.HttpRequest buildRequest(AssignPrivateIpAddressesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([AssignPrivateIpAddressesResult? output]) => 200;
  @override
  AssignPrivateIpAddressesResult buildOutput(
    AssignPrivateIpAddressesResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      AssignPrivateIpAddressesResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'AssignPrivateIpAddresses';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<AssignPrivateIpAddressesResult> run(
    AssignPrivateIpAddressesRequest input, {
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
