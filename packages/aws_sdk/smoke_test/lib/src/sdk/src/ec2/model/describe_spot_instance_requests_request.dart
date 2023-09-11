// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_instance_requests_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_spot_instance_requests_request.g.dart';

/// Contains the parameters for DescribeSpotInstanceRequests.
abstract class DescribeSpotInstanceRequestsRequest
    with
        _i1.HttpInput<DescribeSpotInstanceRequestsRequest>,
        _i2.AWSEquatable<DescribeSpotInstanceRequestsRequest>
    implements
        Built<DescribeSpotInstanceRequestsRequest,
            DescribeSpotInstanceRequestsRequestBuilder> {
  /// Contains the parameters for DescribeSpotInstanceRequests.
  factory DescribeSpotInstanceRequestsRequest({
    List<Filter>? filters,
    bool? dryRun,
    List<String>? spotInstanceRequestIds,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotInstanceRequestsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      spotInstanceRequestIds: spotInstanceRequestIds == null
          ? null
          : _i3.BuiltList(spotInstanceRequestIds),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  /// Contains the parameters for DescribeSpotInstanceRequests.
  factory DescribeSpotInstanceRequestsRequest.build(
          [void Function(DescribeSpotInstanceRequestsRequestBuilder) updates]) =
      _$DescribeSpotInstanceRequestsRequest;

  const DescribeSpotInstanceRequestsRequest._();

  factory DescribeSpotInstanceRequestsRequest.fromRequest(
    DescribeSpotInstanceRequestsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeSpotInstanceRequestsRequest>>
      serializers = [DescribeSpotInstanceRequestsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotInstanceRequestsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `availability-zone-group` \- The Availability Zone group.
  ///
  /// *   `create-time` \- The time stamp when the Spot Instance request was created.
  ///
  /// *   `fault-code` \- The fault code related to the request.
  ///
  /// *   `fault-message` \- The fault message related to the request.
  ///
  /// *   `instance-id` \- The ID of the instance that fulfilled the request.
  ///
  /// *   `launch-group` \- The Spot Instance launch group.
  ///
  /// *   `launch.block-device-mapping.delete-on-termination` \- Indicates whether the EBS volume is deleted on instance termination.
  ///
  /// *   `launch.block-device-mapping.device-name` \- The device name for the volume in the block device mapping (for example, `/dev/sdh` or `xvdh`).
  ///
  /// *   `launch.block-device-mapping.snapshot-id` \- The ID of the snapshot for the EBS volume.
  ///
  /// *   `launch.block-device-mapping.volume-size` \- The size of the EBS volume, in GiB.
  ///
  /// *   `launch.block-device-mapping.volume-type` \- The type of EBS volume: `gp2` for General Purpose SSD, `io1` or `io2` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`for Cold HDD, or `standard` for Magnetic.
  ///
  /// *   `launch.group-id` \- The ID of the security group for the instance.
  ///
  /// *   `launch.group-name` \- The name of the security group for the instance.
  ///
  /// *   `launch.image-id` \- The ID of the AMI.
  ///
  /// *   `launch.instance-type` \- The type of instance (for example, `m3.medium`).
  ///
  /// *   `launch.kernel-id` \- The kernel ID.
  ///
  /// *   `launch.key-name` \- The name of the key pair the instance launched with.
  ///
  /// *   `launch.monitoring-enabled` \- Whether detailed monitoring is enabled for the Spot Instance.
  ///
  /// *   `launch.ramdisk-id` \- The RAM disk ID.
  ///
  /// *   `launched-availability-zone` \- The Availability Zone in which the request is launched.
  ///
  /// *   `network-interface.addresses.primary` \- Indicates whether the IP address is the primary private IP address.
  ///
  /// *   `network-interface.delete-on-termination` \- Indicates whether the network interface is deleted when the instance is terminated.
  ///
  /// *   `network-interface.description` \- A description of the network interface.
  ///
  /// *   `network-interface.device-index` \- The index of the device for the network interface attachment on the instance.
  ///
  /// *   `network-interface.group-id` \- The ID of the security group associated with the network interface.
  ///
  /// *   `network-interface.network-interface-id` \- The ID of the network interface.
  ///
  /// *   `network-interface.private-ip-address` \- The primary private IP address of the network interface.
  ///
  /// *   `network-interface.subnet-id` \- The ID of the subnet for the instance.
  ///
  /// *   `product-description` \- The product description associated with the instance (`Linux/UNIX` | `Windows`).
  ///
  /// *   `spot-instance-request-id` \- The Spot Instance request ID.
  ///
  /// *   `spot-price` \- The maximum hourly price for any Spot Instance launched to fulfill the request.
  ///
  /// *   `state` \- The state of the Spot Instance request (`open` | `active` | `closed` | `cancelled` | `failed`). Spot request status information can help you track your Amazon EC2 Spot Instance requests. For more information, see [Spot request status](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-request-status.html) in the _Amazon EC2 User Guide for Linux Instances_.
  ///
  /// *   `status-code` \- The short code describing the most recent evaluation of your Spot Instance request.
  ///
  /// *   `status-message` \- The message explaining the status of the Spot Instance request.
  ///
  /// *   `tag:` \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `type` \- The type of Spot Instance request (`one-time` | `persistent`).
  ///
  /// *   `valid-from` \- The start date of the request.
  ///
  /// *   `valid-until` \- The end date of the request.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the Spot Instance requests.
  _i3.BuiltList<String>? get spotInstanceRequestIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeSpotInstanceRequestsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        spotInstanceRequestIds,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotInstanceRequestsRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'spotInstanceRequestIds',
            spotInstanceRequestIds,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'maxResults',
            maxResults,
          );
    return helper.toString();
  }
}

class DescribeSpotInstanceRequestsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeSpotInstanceRequestsRequest> {
  const DescribeSpotInstanceRequestsRequestEc2QuerySerializer()
      : super('DescribeSpotInstanceRequestsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotInstanceRequestsRequest,
        _$DescribeSpotInstanceRequestsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotInstanceRequestsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotInstanceRequestsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SpotInstanceRequestId':
          result.spotInstanceRequestIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SpotInstanceRequestId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotInstanceRequestsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotInstanceRequestsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotInstanceRequestsRequest(
      :filters,
      :dryRun,
      :spotInstanceRequestIds,
      :nextToken,
      :maxResults
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (spotInstanceRequestIds != null) {
      result$
        ..add(const _i1.XmlElementName('SpotInstanceRequestId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SpotInstanceRequestId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotInstanceRequestIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
