// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_spot_instance_requests_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart';

/// Describes the specified Spot Instance requests.
///
/// You can use `DescribeSpotInstanceRequests` to find a running Spot Instance by examining the response. If the status of the Spot Instance is `fulfilled`, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use [DescribeInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances) with a filter to look for instances where the instance lifecycle is `spot`.
///
/// We recommend that you set `MaxResults` to a value between 5 and 1000 to limit the number of items returned. This paginates the output, which makes the list more manageable and returns the items faster. If the list of items exceeds your `MaxResults` value, then that number of items is returned along with a `NextToken` value that can be passed to a subsequent `DescribeSpotInstanceRequests` request to retrieve the remaining items.
///
/// Spot Instance requests are deleted four hours after they are canceled and their instances are terminated.
class DescribeSpotInstanceRequestsOperation extends _i1.PaginatedHttpOperation<
    DescribeSpotInstanceRequestsRequest,
    DescribeSpotInstanceRequestsRequest,
    DescribeSpotInstanceRequestsResult,
    DescribeSpotInstanceRequestsResult,
    String,
    int,
    _i2.BuiltList<SpotInstanceRequest>> {
  /// Describes the specified Spot Instance requests.
  ///
  /// You can use `DescribeSpotInstanceRequests` to find a running Spot Instance by examining the response. If the status of the Spot Instance is `fulfilled`, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use [DescribeInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances) with a filter to look for instances where the instance lifecycle is `spot`.
  ///
  /// We recommend that you set `MaxResults` to a value between 5 and 1000 to limit the number of items returned. This paginates the output, which makes the list more manageable and returns the items faster. If the list of items exceeds your `MaxResults` value, then that number of items is returned along with a `NextToken` value that can be passed to a subsequent `DescribeSpotInstanceRequests` request to retrieve the remaining items.
  ///
  /// Spot Instance requests are deleted four hours after they are canceled and their instances are terminated.
  DescribeSpotInstanceRequestsOperation({
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
          DescribeSpotInstanceRequestsRequest,
          DescribeSpotInstanceRequestsRequest,
          DescribeSpotInstanceRequestsResult,
          DescribeSpotInstanceRequestsResult>> protocols = [
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
      action: 'DescribeSpotInstanceRequests',
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
  _i1.HttpRequest buildRequest(DescribeSpotInstanceRequestsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeSpotInstanceRequestsResult? output]) => 200;
  @override
  DescribeSpotInstanceRequestsResult buildOutput(
    DescribeSpotInstanceRequestsResult payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeSpotInstanceRequestsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeSpotInstanceRequests';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeSpotInstanceRequestsResult> run(
    DescribeSpotInstanceRequestsRequest input, {
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
  String? getToken(DescribeSpotInstanceRequestsResult output) =>
      output.nextToken;
  @override
  _i2.BuiltList<SpotInstanceRequest> getItems(
          DescribeSpotInstanceRequestsResult output) =>
      output.spotInstanceRequests ?? _i2.BuiltList();
  @override
  DescribeSpotInstanceRequestsRequest rebuildInput(
    DescribeSpotInstanceRequestsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
