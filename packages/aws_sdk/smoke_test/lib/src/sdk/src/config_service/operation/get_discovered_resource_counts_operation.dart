// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.operation.get_discovered_resource_counts_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i12;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/get_discovered_resource_counts_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_limit_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/config_service/model/invalid_next_token_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/config_service/model/validation_exception.dart'
    as _i11;

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
    _i2.GetDiscoveredResourceCountsRequest,
    _i2.GetDiscoveredResourceCountsRequest,
    _i3.GetDiscoveredResourceCountsResponse,
    _i3.GetDiscoveredResourceCountsResponse,
    String,
    int,
    _i3.GetDiscoveredResourceCountsResponse> {
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
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
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
          _i2.GetDiscoveredResourceCountsRequest,
          _i2.GetDiscoveredResourceCountsRequest,
          _i3.GetDiscoveredResourceCountsResponse,
          _i3.GetDiscoveredResourceCountsResponse>> protocols = [
    _i5.AwsJson1_1Protocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithHeader(
              'X-Amz-Target',
              'StarlingDoveService.GetDiscoveredResourceCounts',
            ),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.configService,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.GetDiscoveredResourceCountsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetDiscoveredResourceCountsResponse? output]) => 200;
  @override
  _i3.GetDiscoveredResourceCountsResponse buildOutput(
    _i3.GetDiscoveredResourceCountsResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetDiscoveredResourceCountsResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<_i9.InvalidLimitException, _i9.InvalidLimitException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidLimitException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidLimitException,
          builder: _i9.InvalidLimitException.fromResponse,
        ),
        _i1.SmithyError<_i10.InvalidNextTokenException,
            _i10.InvalidNextTokenException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'InvalidNextTokenException',
          ),
          _i1.ErrorKind.client,
          _i10.InvalidNextTokenException,
          builder: _i10.InvalidNextTokenException.fromResponse,
        ),
        _i1.SmithyError<_i11.ValidationException, _i11.ValidationException>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.configservice',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i11.ValidationException,
          builder: _i11.ValidationException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'GetDiscoveredResourceCounts';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetDiscoveredResourceCountsResponse> run(
    _i2.GetDiscoveredResourceCountsRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i12.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)},
      },
    );
  }

  @override
  String? getToken(_i3.GetDiscoveredResourceCountsResponse output) =>
      output.nextToken;
  @override
  _i3.GetDiscoveredResourceCountsResponse getItems(
          _i3.GetDiscoveredResourceCountsResponse output) =>
      output;
  @override
  _i2.GetDiscoveredResourceCountsRequest rebuildInput(
    _i2.GetDiscoveredResourceCountsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.limit = pageSize;
      });
}
