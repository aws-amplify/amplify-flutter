// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.operation.get_discovered_resource_counts_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_request.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_response.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart';
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart';

/// Returns the resource types, the number of each resource type, and the total number of resources that Config is recording in this region for your Amazon Web Services account.
///
/// **Example**
///
/// 1.  Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.
///
/// 2.  You make a call to the `GetDiscoveredResourceCounts` action and specify that you want all resource types.
///
/// 3.  Config returns the following:
///
///     *   The resource types (EC2 instances, IAM users, and S3 buckets).
///
///     *   The number of each resource type (25, 20, and 15).
///
///     *   The total number of all resources (60).
///
///
/// The response is paginated. By default, Config lists 100 ResourceCount objects on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
///
/// If you make a call to the GetDiscoveredResourceCounts action, you might not immediately receive resource counts in the following situations:
///
/// *   You are a new Config customer.
///
/// *   You just enabled resource recording.
///
///
/// It might take a few minutes for Config to record and count your resources. Wait a few minutes and then retry the GetDiscoveredResourceCounts action.
class GetDiscoveredResourceCountsOperation extends _i1.PaginatedHttpOperation<
    GetDiscoveredResourceCountsRequest,
    GetDiscoveredResourceCountsRequest,
    GetDiscoveredResourceCountsResponse,
    GetDiscoveredResourceCountsResponse,
    String,
    int,
    GetDiscoveredResourceCountsResponse> {
  /// Returns the resource types, the number of each resource type, and the total number of resources that Config is recording in this region for your Amazon Web Services account.
  ///
  /// **Example**
  ///
  /// 1.  Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.
  ///
  /// 2.  You make a call to the `GetDiscoveredResourceCounts` action and specify that you want all resource types.
  ///
  /// 3.  Config returns the following:
  ///
  ///     *   The resource types (EC2 instances, IAM users, and S3 buckets).
  ///
  ///     *   The number of each resource type (25, 20, and 15).
  ///
  ///     *   The total number of all resources (60).
  ///
  ///
  /// The response is paginated. By default, Config lists 100 ResourceCount objects on each page. You can customize this number with the `limit` parameter. The response includes a `nextToken` string. To get the next page of results, run the request again and specify the string for the `nextToken` parameter.
  ///
  /// If you make a call to the GetDiscoveredResourceCounts action, you might not immediately receive resource counts in the following situations:
  ///
  /// *   You are a new Config customer.
  ///
  /// *   You just enabled resource recording.
  ///
  ///
  /// It might take a few minutes for Config to record and count your resources. Wait a few minutes and then retry the GetDiscoveredResourceCounts action.
  GetDiscoveredResourceCountsOperation({
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
          GetDiscoveredResourceCountsRequest,
          GetDiscoveredResourceCountsRequest,
          GetDiscoveredResourceCountsResponse,
          GetDiscoveredResourceCountsResponse>> protocols = [
    _i3.AwsJson1_1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.GetDiscoveredResourceCounts',
            ),
            _i3.WithSigV4(
              region: _region,
              service: _i4.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
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
  _i1.HttpRequest buildRequest(GetDiscoveredResourceCountsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([GetDiscoveredResourceCountsResponse? output]) => 200;
  @override
  GetDiscoveredResourceCountsResponse buildOutput(
    GetDiscoveredResourceCountsResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetDiscoveredResourceCountsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<InvalidLimitException, InvalidLimitException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          InvalidLimitException,
          builder: InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError<InvalidNextTokenException, InvalidNextTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          InvalidNextTokenException,
          builder: InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError<ValidationException, ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          ValidationException,
          builder: ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetDiscoveredResourceCounts';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetDiscoveredResourceCountsResponse> run(
    GetDiscoveredResourceCountsRequest input, {
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

  @override
  String? getToken(GetDiscoveredResourceCountsResponse output) =>
      output.nextToken;
  @override
  GetDiscoveredResourceCountsResponse getItems(
          GetDiscoveredResourceCountsResponse output) =>
      output;
  @override
  GetDiscoveredResourceCountsRequest rebuildInput(
    GetDiscoveredResourceCountsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.limit = pageSize;
      });
}
