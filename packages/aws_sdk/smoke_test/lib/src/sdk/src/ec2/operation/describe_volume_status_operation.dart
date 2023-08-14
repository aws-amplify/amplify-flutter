// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_volume_status_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_item.dart';

/// Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.
///
/// The `DescribeVolumeStatus` operation provides the following information about the specified volumes:
///
/// _Status_: Reflects the current status of the volume. The possible values are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks pass, the overall status of the volume is `ok`. If the check fails, the overall status is `impaired`. If the status is `insufficient-data`, then the checks might still be taking place on your volume at the time. We recommend that you retry the request. For more information about volume status, see [Monitor the status of your volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// _Events_: Reflect the cause of a volume status and might require you to take action. For example, if your volume returns an `impaired` status, then the volume event might be `potential-data-inconsistency`. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and might have inconsistent data.
///
/// _Actions_: Reflect the actions you might have to take in response to an event. For example, if the status of the volume is `impaired` and the volume event shows `potential-data-inconsistency`, then the action shows `enable-volume-io`. This means that you may want to enable the I/O operations for the volume by calling the EnableVolumeIO action and then check the volume for data consistency.
///
/// Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the `error` state (for example, when a volume is incapable of accepting I/O.)
class DescribeVolumeStatusOperation extends _i1.PaginatedHttpOperation<
    DescribeVolumeStatusRequest,
    DescribeVolumeStatusRequest,
    DescribeVolumeStatusResult,
    DescribeVolumeStatusResult,
    String,
    int,
    _i2.BuiltList<VolumeStatusItem>> {
  /// Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.
  ///
  /// The `DescribeVolumeStatus` operation provides the following information about the specified volumes:
  ///
  /// _Status_: Reflects the current status of the volume. The possible values are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks pass, the overall status of the volume is `ok`. If the check fails, the overall status is `impaired`. If the status is `insufficient-data`, then the checks might still be taking place on your volume at the time. We recommend that you retry the request. For more information about volume status, see [Monitor the status of your volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// _Events_: Reflect the cause of a volume status and might require you to take action. For example, if your volume returns an `impaired` status, then the volume event might be `potential-data-inconsistency`. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and might have inconsistent data.
  ///
  /// _Actions_: Reflect the actions you might have to take in response to an event. For example, if the status of the volume is `impaired` and the volume event shows `potential-data-inconsistency`, then the action shows `enable-volume-io`. This means that you may want to enable the I/O operations for the volume by calling the EnableVolumeIO action and then check the volume for data consistency.
  ///
  /// Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the `error` state (for example, when a volume is incapable of accepting I/O.)
  DescribeVolumeStatusOperation({
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
      _i1.HttpProtocol<DescribeVolumeStatusRequest, DescribeVolumeStatusRequest,
          DescribeVolumeStatusResult, DescribeVolumeStatusResult>> protocols = [
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
      action: 'DescribeVolumeStatus',
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
  _i1.HttpRequest buildRequest(DescribeVolumeStatusRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeVolumeStatusResult? output]) => 200;
  @override
  DescribeVolumeStatusResult buildOutput(
    DescribeVolumeStatusResult payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeVolumeStatusResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeVolumeStatus';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeVolumeStatusResult> run(
    DescribeVolumeStatusRequest input, {
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
  String? getToken(DescribeVolumeStatusResult output) => output.nextToken;
  @override
  _i2.BuiltList<VolumeStatusItem> getItems(DescribeVolumeStatusResult output) =>
      output.volumeStatuses ?? _i2.BuiltList();
  @override
  DescribeVolumeStatusRequest rebuildInput(
    DescribeVolumeStatusRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
