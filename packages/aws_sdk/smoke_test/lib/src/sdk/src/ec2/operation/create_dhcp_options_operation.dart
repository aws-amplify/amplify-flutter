// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.create_dhcp_options_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_dhcp_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_dhcp_options_result.dart';

/// Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
///
/// *   `domain-name-servers` \- The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. To have your instance receive a custom DNS hostname as specified in `domain-name`, you must set `domain-name-servers` to a custom DNS server.
///
/// *   `domain-name` \- If you're using AmazonProvidedDNS in `us-east-1`, specify `ec2.internal`. If you're using AmazonProvidedDNS in another Region, specify `region.compute.internal` (for example, `ap-northeast-1.compute.internal`). Otherwise, specify a domain name (for example, `ExampleCompany.com`). This value is used to complete unqualified DNS hostnames. **Important**: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.
///
/// *   `ntp-servers` \- The IP addresses of up to four Network Time Protocol (NTP) servers.
///
/// *   `netbios-name-servers` \- The IP addresses of up to four NetBIOS name servers.
///
/// *   `netbios-node-type` \- The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
///
///
/// Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an internet gateway, make sure to set the `domain-name-servers` option either to `AmazonProvidedDNS` or to a domain name server of your choice. For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in the _Amazon VPC User Guide_.
class CreateDhcpOptionsOperation extends _i1.HttpOperation<
    CreateDhcpOptionsRequest,
    CreateDhcpOptionsRequest,
    CreateDhcpOptionsResult,
    CreateDhcpOptionsResult> {
  /// Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  ///
  /// *   `domain-name-servers` \- The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. To have your instance receive a custom DNS hostname as specified in `domain-name`, you must set `domain-name-servers` to a custom DNS server.
  ///
  /// *   `domain-name` \- If you're using AmazonProvidedDNS in `us-east-1`, specify `ec2.internal`. If you're using AmazonProvidedDNS in another Region, specify `region.compute.internal` (for example, `ap-northeast-1.compute.internal`). Otherwise, specify a domain name (for example, `ExampleCompany.com`). This value is used to complete unqualified DNS hostnames. **Important**: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.
  ///
  /// *   `ntp-servers` \- The IP addresses of up to four Network Time Protocol (NTP) servers.
  ///
  /// *   `netbios-name-servers` \- The IP addresses of up to four NetBIOS name servers.
  ///
  /// *   `netbios-node-type` \- The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  ///
  ///
  /// Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an internet gateway, make sure to set the `domain-name-servers` option either to `AmazonProvidedDNS` or to a domain name server of your choice. For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in the _Amazon VPC User Guide_.
  CreateDhcpOptionsOperation({
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
      _i1.HttpProtocol<CreateDhcpOptionsRequest, CreateDhcpOptionsRequest,
          CreateDhcpOptionsResult, CreateDhcpOptionsResult>> protocols = [
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
      action: 'CreateDhcpOptions',
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
  _i1.HttpRequest buildRequest(CreateDhcpOptionsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateDhcpOptionsResult? output]) => 200;
  @override
  CreateDhcpOptionsResult buildOutput(
    CreateDhcpOptionsResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateDhcpOptionsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateDhcpOptions';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateDhcpOptionsResult> run(
    CreateDhcpOptionsRequest input, {
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
