// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.modify_spot_fleet_request_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_spot_fleet_request_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_spot_fleet_request_response.dart';

/// Modifies the specified Spot Fleet request.
///
/// You can only modify a Spot Fleet request of type `maintain`.
///
/// While the Spot Fleet request is being modified, it is in the `modifying` state.
///
/// To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is `lowestPrice`, the Spot Fleet launches instances using the Spot Instance pool with the lowest price. If the allocation strategy is `diversified`, the Spot Fleet distributes the instances across the Spot Instance pools. If the allocation strategy is `capacityOptimized`, Spot Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching.
///
/// To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is `lowestPrice`, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is `capacityOptimized`, the Spot Fleet terminates the instances in the Spot Instance pools that have the least available Spot Instance capacity. If the allocation strategy is `diversified`, the Spot Fleet terminates instances across the Spot Instance pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.
///
/// If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.
class ModifySpotFleetRequestOperation extends _i1.HttpOperation<
    ModifySpotFleetRequestRequest,
    ModifySpotFleetRequestRequest,
    ModifySpotFleetRequestResponse,
    ModifySpotFleetRequestResponse> {
  /// Modifies the specified Spot Fleet request.
  ///
  /// You can only modify a Spot Fleet request of type `maintain`.
  ///
  /// While the Spot Fleet request is being modified, it is in the `modifying` state.
  ///
  /// To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is `lowestPrice`, the Spot Fleet launches instances using the Spot Instance pool with the lowest price. If the allocation strategy is `diversified`, the Spot Fleet distributes the instances across the Spot Instance pools. If the allocation strategy is `capacityOptimized`, Spot Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching.
  ///
  /// To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is `lowestPrice`, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is `capacityOptimized`, the Spot Fleet terminates the instances in the Spot Instance pools that have the least available Spot Instance capacity. If the allocation strategy is `diversified`, the Spot Fleet terminates instances across the Spot Instance pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.
  ///
  /// If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.
  ModifySpotFleetRequestOperation({
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
          ModifySpotFleetRequestRequest,
          ModifySpotFleetRequestRequest,
          ModifySpotFleetRequestResponse,
          ModifySpotFleetRequestResponse>> protocols = [
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
      action: 'ModifySpotFleetRequest',
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
  _i1.HttpRequest buildRequest(ModifySpotFleetRequestRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([ModifySpotFleetRequestResponse? output]) => 200;
  @override
  ModifySpotFleetRequestResponse buildOutput(
    ModifySpotFleetRequestResponse payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      ModifySpotFleetRequestResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ModifySpotFleetRequest';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<ModifySpotFleetRequestResponse> run(
    ModifySpotFleetRequestRequest input, {
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
