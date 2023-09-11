// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_subnets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_subnets_request.g.dart';

abstract class DescribeSubnetsRequest
    with
        _i1.HttpInput<DescribeSubnetsRequest>,
        _i2.AWSEquatable<DescribeSubnetsRequest>
    implements Built<DescribeSubnetsRequest, DescribeSubnetsRequestBuilder> {
  factory DescribeSubnetsRequest({
    List<Filter>? filters,
    List<String>? subnetIds,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSubnetsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      subnetIds: subnetIds == null ? null : _i3.BuiltList(subnetIds),
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeSubnetsRequest.build(
          [void Function(DescribeSubnetsRequestBuilder) updates]) =
      _$DescribeSubnetsRequest;

  const DescribeSubnetsRequest._();

  factory DescribeSubnetsRequest.fromRequest(
    DescribeSubnetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeSubnetsRequest>> serializers =
      [DescribeSubnetsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSubnetsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `availability-zone` \- The Availability Zone for the subnet. You can also use `availabilityZone` as the filter name.
  ///
  /// *   `availability-zone-id` \- The ID of the Availability Zone for the subnet. You can also use `availabilityZoneId` as the filter name.
  ///
  /// *   `available-ip-address-count` \- The number of IPv4 addresses in the subnet that are available.
  ///
  /// *   `cidr-block` \- The IPv4 CIDR block of the subnet. The CIDR block you specify must exactly match the subnet's CIDR block for information to be returned for the subnet. You can also use `cidr` or `cidrBlock` as the filter names.
  ///
  /// *   `customer-owned-ipv4-pool` \- The customer-owned IPv4 address pool associated with the subnet.
  ///
  /// *   `default-for-az` \- Indicates whether this is the default subnet for the Availability Zone (`true` | `false`). You can also use `defaultForAz` as the filter name.
  ///
  /// *   `enable-dns64` \- Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
  ///
  /// *   `enable-lni-at-device-index` \- Indicates the device position for local network interfaces in this subnet. For example, `1` indicates local network interfaces in this subnet are the secondary network interface (eth1).
  ///
  /// *   `ipv6-cidr-block-association.ipv6-cidr-block` \- An IPv6 CIDR block associated with the subnet.
  ///
  /// *   `ipv6-cidr-block-association.association-id` \- An association ID for an IPv6 CIDR block associated with the subnet.
  ///
  /// *   `ipv6-cidr-block-association.state` \- The state of an IPv6 CIDR block associated with the subnet.
  ///
  /// *   `ipv6-native` \- Indicates whether this is an IPv6 only subnet (`true` | `false`).
  ///
  /// *   `map-customer-owned-ip-on-launch` \- Indicates whether a network interface created in this subnet (including a network interface created by RunInstances) receives a customer-owned IPv4 address.
  ///
  /// *   `map-public-ip-on-launch` \- Indicates whether instances launched in this subnet receive a public IPv4 address.
  ///
  /// *   `outpost-arn` \- The Amazon Resource Name (ARN) of the Outpost.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the subnet.
  ///
  /// *   `private-dns-name-options-on-launch.hostname-type` \- The type of hostname to assign to instances in the subnet at launch. For IPv4-only and dual-stack (IPv4 and IPv6) subnets, an instance DNS name can be based on the instance IPv4 address (ip-name) or the instance ID (resource-name). For IPv6 only subnets, an instance DNS name must be based on the instance ID (resource-name).
  ///
  /// *   `private-dns-name-options-on-launch.enable-resource-name-dns-a-record` \- Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  ///
  /// *   `private-dns-name-options-on-launch.enable-resource-name-dns-aaaa-record` \- Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  ///
  /// *   `state` \- The state of the subnet (`pending` | `available`).
  ///
  /// *   `subnet-arn` \- The Amazon Resource Name (ARN) of the subnet.
  ///
  /// *   `subnet-id` \- The ID of the subnet.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC for the subnet.
  _i3.BuiltList<Filter>? get filters;

  /// The IDs of the subnets.
  ///
  /// Default: Describes all your subnets.
  _i3.BuiltList<String>? get subnetIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeSubnetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        subnetIds,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSubnetsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'subnetIds',
        subnetIds,
      )
      ..add(
        'dryRun',
        dryRun,
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

class DescribeSubnetsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSubnetsRequest> {
  const DescribeSubnetsRequestEc2QuerySerializer()
      : super('DescribeSubnetsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSubnetsRequest,
        _$DescribeSubnetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSubnetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSubnetsRequestBuilder();
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
        case 'SubnetId':
          result.subnetIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SubnetId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    DescribeSubnetsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSubnetsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSubnetsRequest(
      :filters,
      :subnetIds,
      :dryRun,
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
    if (subnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SubnetId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
