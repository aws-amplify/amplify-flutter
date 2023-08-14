// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.run_instances_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_request.dart';

/// Launches the specified number of instances using an AMI for which you have permissions.
///
/// You can specify a number of options, or leave the default options. The following rules apply:
///
/// *   If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.
///
/// *   All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.
///
/// *   Not all instance types support IPv6 addresses. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
///
/// *   If you don't specify a security group ID, we use the default security group. For more information, see [Security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).
///
/// *   If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.
///
///
/// You can create a [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html), which is a resource that contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify the launch template instead of specifying the launch parameters.
///
/// To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.
///
/// An instance is ready for you to use when it's in the `running` state. You can check the state of your instance using DescribeInstances. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see CreateTags and [Tagging your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).
///
/// Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see [Key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).
///
/// For troubleshooting, see [What to do if an instance immediately terminates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html), and [Troubleshooting connecting to your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).
class RunInstancesOperation extends _i1.HttpOperation<RunInstancesRequest,
    RunInstancesRequest, Reservation, Reservation> {
  /// Launches the specified number of instances using an AMI for which you have permissions.
  ///
  /// You can specify a number of options, or leave the default options. The following rules apply:
  ///
  /// *   If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.
  ///
  /// *   All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.
  ///
  /// *   Not all instance types support IPv6 addresses. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
  ///
  /// *   If you don't specify a security group ID, we use the default security group. For more information, see [Security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).
  ///
  /// *   If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.
  ///
  ///
  /// You can create a [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html), which is a resource that contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify the launch template instead of specifying the launch parameters.
  ///
  /// To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.
  ///
  /// An instance is ready for you to use when it's in the `running` state. You can check the state of your instance using DescribeInstances. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see CreateTags and [Tagging your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).
  ///
  /// Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see [Key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).
  ///
  /// For troubleshooting, see [What to do if an instance immediately terminates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html), and [Troubleshooting connecting to your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).
  RunInstancesOperation({
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
      _i1.HttpProtocol<RunInstancesRequest, RunInstancesRequest, Reservation,
          Reservation>> protocols = [
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
      action: 'RunInstances',
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
  _i1.HttpRequest buildRequest(RunInstancesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([Reservation? output]) => 200;
  @override
  Reservation buildOutput(
    Reservation payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      Reservation.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'RunInstances';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<Reservation> run(
    RunInstancesRequest input, {
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
