// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_local_gateway_route_table_vpc_associations_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart';

/// Describes the specified associations between VPCs and local gateway route tables.
class DescribeLocalGatewayRouteTableVpcAssociationsOperation extends _i1
    .PaginatedHttpOperation<
        DescribeLocalGatewayRouteTableVpcAssociationsRequest,
        DescribeLocalGatewayRouteTableVpcAssociationsRequest,
        DescribeLocalGatewayRouteTableVpcAssociationsResult,
        DescribeLocalGatewayRouteTableVpcAssociationsResult,
        String,
        int,
        _i2.BuiltList<LocalGatewayRouteTableVpcAssociation>> {
  /// Describes the specified associations between VPCs and local gateway route tables.
  DescribeLocalGatewayRouteTableVpcAssociationsOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
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
          DescribeLocalGatewayRouteTableVpcAssociationsRequest,
          DescribeLocalGatewayRouteTableVpcAssociationsRequest,
          DescribeLocalGatewayRouteTableVpcAssociationsResult,
          DescribeLocalGatewayRouteTableVpcAssociationsResult>> protocols = [
    _i4.Ec2QueryProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i5.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DescribeLocalGatewayRouteTableVpcAssociations',
      version: '2016-11-15',
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(
          DescribeLocalGatewayRouteTableVpcAssociationsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [DescribeLocalGatewayRouteTableVpcAssociationsResult? output]) =>
      200;
  @override
  DescribeLocalGatewayRouteTableVpcAssociationsResult buildOutput(
    DescribeLocalGatewayRouteTableVpcAssociationsResult payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeLocalGatewayRouteTableVpcAssociationsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeLocalGatewayRouteTableVpcAssociations';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeLocalGatewayRouteTableVpcAssociationsResult> run(
    DescribeLocalGatewayRouteTableVpcAssociationsRequest input, {
    _i5.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i6.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i5.AWSHeaders.sdkInvocationId: _i5.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(
          DescribeLocalGatewayRouteTableVpcAssociationsResult output) =>
      output.nextToken;
  @override
  _i2.BuiltList<LocalGatewayRouteTableVpcAssociation> getItems(
          DescribeLocalGatewayRouteTableVpcAssociationsResult output) =>
      output.localGatewayRouteTableVpcAssociations ?? _i2.BuiltList();
  @override
  DescribeLocalGatewayRouteTableVpcAssociationsRequest rebuildInput(
    DescribeLocalGatewayRouteTableVpcAssociationsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
