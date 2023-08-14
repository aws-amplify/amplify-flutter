// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.create_default_vpc_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_vpc_result.dart';

/// Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see [Default VPCs](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html) in the _Amazon VPC User Guide_. You cannot specify the components of the default VPC yourself.
///
/// If you deleted your previous default VPC, you can create a default VPC. You cannot have more than one default VPC per Region.
class CreateDefaultVpcOperation extends _i1.HttpOperation<
    CreateDefaultVpcRequest,
    CreateDefaultVpcRequest,
    CreateDefaultVpcResult,
    CreateDefaultVpcResult> {
  /// Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see [Default VPCs](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html) in the _Amazon VPC User Guide_. You cannot specify the components of the default VPC yourself.
  ///
  /// If you deleted your previous default VPC, you can create a default VPC. You cannot have more than one default VPC per Region.
  CreateDefaultVpcOperation({
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
      _i1.HttpProtocol<CreateDefaultVpcRequest, CreateDefaultVpcRequest,
          CreateDefaultVpcResult, CreateDefaultVpcResult>> protocols = [
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
      action: 'CreateDefaultVpc',
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
  _i1.HttpRequest buildRequest(CreateDefaultVpcRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([CreateDefaultVpcResult? output]) => 200;
  @override
  CreateDefaultVpcResult buildOutput(
    CreateDefaultVpcResult payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      CreateDefaultVpcResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateDefaultVpc';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<CreateDefaultVpcResult> run(
    CreateDefaultVpcRequest input, {
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
