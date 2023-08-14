// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.revoke_security_group_egress_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_result.dart';

/// Removes the specified outbound (egress) rules from the specified security group.
///
/// You can specify rules using either rule IDs or security group rule properties. If you use rule properties, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule has a protocol, from and to ports, and destination (CIDR range, security group, or prefix list). For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not need to specify the description to revoke the rule.
///
/// For a default VPC, if the values you specify do not match the existing rule's values, no error is returned, and the output describes the security group rules that were not revoked.
///
/// Amazon Web Services recommends that you describe the security group to verify that the rules were removed.
///
/// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
class RevokeSecurityGroupEgressOperation extends _i1.HttpOperation<
    RevokeSecurityGroupEgressRequest,
    RevokeSecurityGroupEgressRequest,
    RevokeSecurityGroupEgressResult,
    RevokeSecurityGroupEgressResult> {
  /// Removes the specified outbound (egress) rules from the specified security group.
  ///
  /// You can specify rules using either rule IDs or security group rule properties. If you use rule properties, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule has a protocol, from and to ports, and destination (CIDR range, security group, or prefix list). For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not need to specify the description to revoke the rule.
  ///
  /// For a default VPC, if the values you specify do not match the existing rule's values, no error is returned, and the output describes the security group rules that were not revoked.
  ///
  /// Amazon Web Services recommends that you describe the security group to verify that the rules were removed.
  ///
  /// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
  RevokeSecurityGroupEgressOperation({
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
          RevokeSecurityGroupEgressRequest,
          RevokeSecurityGroupEgressRequest,
          RevokeSecurityGroupEgressResult,
          RevokeSecurityGroupEgressResult>> protocols = [
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
      action: 'RevokeSecurityGroupEgress',
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
  _i1.HttpRequest buildRequest(RevokeSecurityGroupEgressRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([RevokeSecurityGroupEgressResult? output]) => 200;
  @override
  RevokeSecurityGroupEgressResult buildOutput(
    RevokeSecurityGroupEgressResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      RevokeSecurityGroupEgressResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'RevokeSecurityGroupEgress';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<RevokeSecurityGroupEgressResult> run(
    RevokeSecurityGroupEgressRequest input, {
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
