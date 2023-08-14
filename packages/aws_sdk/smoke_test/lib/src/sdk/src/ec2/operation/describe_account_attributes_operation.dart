// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_account_attributes_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_result.dart';

/// Describes attributes of your Amazon Web Services account. The following are the supported account attributes:
///
/// *   `default-vpc`: The ID of the default VPC for your account, or `none`.
///
/// *   `max-instances`: This attribute is no longer supported. The returned value does not reflect your actual vCPU limit for running On-Demand Instances. For more information, see [On-Demand Instance Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// *   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate.
///
/// *   `supported-platforms`: This attribute is deprecated.
///
/// *   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate.
///
/// *   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.
class DescribeAccountAttributesOperation extends _i1.HttpOperation<
    DescribeAccountAttributesRequest,
    DescribeAccountAttributesRequest,
    DescribeAccountAttributesResult,
    DescribeAccountAttributesResult> {
  /// Describes attributes of your Amazon Web Services account. The following are the supported account attributes:
  ///
  /// *   `default-vpc`: The ID of the default VPC for your account, or `none`.
  ///
  /// *   `max-instances`: This attribute is no longer supported. The returned value does not reflect your actual vCPU limit for running On-Demand Instances. For more information, see [On-Demand Instance Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// *   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate.
  ///
  /// *   `supported-platforms`: This attribute is deprecated.
  ///
  /// *   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate.
  ///
  /// *   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.
  DescribeAccountAttributesOperation({
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
          DescribeAccountAttributesRequest,
          DescribeAccountAttributesRequest,
          DescribeAccountAttributesResult,
          DescribeAccountAttributesResult>> protocols = [
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
      action: 'DescribeAccountAttributes',
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
  _i1.HttpRequest buildRequest(DescribeAccountAttributesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeAccountAttributesResult? output]) => 200;
  @override
  DescribeAccountAttributesResult buildOutput(
    DescribeAccountAttributesResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      DescribeAccountAttributesResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeAccountAttributes';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeAccountAttributesResult> run(
    DescribeAccountAttributesRequest input, {
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
