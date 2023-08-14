// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.operation.describe_snapshots_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i6;

import 'package:aws_common/aws_common.dart' as _i5;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot.dart';

/// Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you.
///
/// The snapshots available to you include public snapshots, private snapshots that you own, and private snapshots owned by other Amazon Web Services accounts for which you have explicit create volume permissions.
///
/// The create volume permissions fall into the following categories:
///
/// *   _public_: The owner of the snapshot granted create volume permissions for the snapshot to the `all` group. All Amazon Web Services accounts have create volume permissions for these snapshots.
///
/// *   _explicit_: The owner of the snapshot granted create volume permissions to a specific Amazon Web Services account.
///
/// *   _implicit_: An Amazon Web Services account has implicit create volume permissions for all snapshots it owns.
///
///
/// The list of snapshots returned can be filtered by specifying snapshot IDs, snapshot owners, or Amazon Web Services accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.
///
/// If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.
///
/// If you specify one or more snapshot owners using the `OwnerIds` option, only snapshots from the specified owners and for which you have access are returned. The results can include the Amazon Web Services account IDs of the specified owners, `amazon` for snapshots owned by Amazon, or `self` for snapshots that you own.
///
/// If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify Amazon Web Services account IDs (if you own the snapshots), `self` for snapshots for which you own or have explicit permissions, or `all` for public snapshots.
///
/// If you are describing a long list of snapshots, we recommend that you paginate the output to make the list more manageable. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
///
/// To get the state of fast snapshot restores for a snapshot, use DescribeFastSnapshotRestores.
///
/// For more information about EBS snapshots, see [Amazon EBS snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the _Amazon Elastic Compute Cloud User Guide_.
class DescribeSnapshotsOperation extends _i1.PaginatedHttpOperation<
    DescribeSnapshotsRequest,
    DescribeSnapshotsRequest,
    DescribeSnapshotsResult,
    DescribeSnapshotsResult,
    String,
    int,
    _i2.BuiltList<Snapshot>> {
  /// Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you.
  ///
  /// The snapshots available to you include public snapshots, private snapshots that you own, and private snapshots owned by other Amazon Web Services accounts for which you have explicit create volume permissions.
  ///
  /// The create volume permissions fall into the following categories:
  ///
  /// *   _public_: The owner of the snapshot granted create volume permissions for the snapshot to the `all` group. All Amazon Web Services accounts have create volume permissions for these snapshots.
  ///
  /// *   _explicit_: The owner of the snapshot granted create volume permissions to a specific Amazon Web Services account.
  ///
  /// *   _implicit_: An Amazon Web Services account has implicit create volume permissions for all snapshots it owns.
  ///
  ///
  /// The list of snapshots returned can be filtered by specifying snapshot IDs, snapshot owners, or Amazon Web Services accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.
  ///
  /// If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.
  ///
  /// If you specify one or more snapshot owners using the `OwnerIds` option, only snapshots from the specified owners and for which you have access are returned. The results can include the Amazon Web Services account IDs of the specified owners, `amazon` for snapshots owned by Amazon, or `self` for snapshots that you own.
  ///
  /// If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify Amazon Web Services account IDs (if you own the snapshots), `self` for snapshots for which you own or have explicit permissions, or `all` for public snapshots.
  ///
  /// If you are describing a long list of snapshots, we recommend that you paginate the output to make the list more manageable. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  ///
  /// To get the state of fast snapshot restores for a snapshot, use DescribeFastSnapshotRestores.
  ///
  /// For more information about EBS snapshots, see [Amazon EBS snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the _Amazon Elastic Compute Cloud User Guide_.
  DescribeSnapshotsOperation({
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
      _i1.HttpProtocol<DescribeSnapshotsRequest, DescribeSnapshotsRequest,
          DescribeSnapshotsResult, DescribeSnapshotsResult>> protocols = [
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
      action: 'DescribeSnapshots',
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
  _i1.HttpRequest buildRequest(DescribeSnapshotsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([DescribeSnapshotsResult? output]) => 200;
  @override
  DescribeSnapshotsResult buildOutput(
    DescribeSnapshotsResult payload,
    _i5.AWSBaseHttpResponse response,
  ) =>
      DescribeSnapshotsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeSnapshots';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<DescribeSnapshotsResult> run(
    DescribeSnapshotsRequest input, {
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
  String? getToken(DescribeSnapshotsResult output) => output.nextToken;
  @override
  _i2.BuiltList<Snapshot> getItems(DescribeSnapshotsResult output) =>
      output.snapshots ?? _i2.BuiltList();
  @override
  DescribeSnapshotsRequest rebuildInput(
    DescribeSnapshotsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
