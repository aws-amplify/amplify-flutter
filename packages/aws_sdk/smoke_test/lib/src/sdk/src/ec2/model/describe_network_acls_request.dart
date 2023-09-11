// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_acls_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_network_acls_request.g.dart';

abstract class DescribeNetworkAclsRequest
    with
        _i1.HttpInput<DescribeNetworkAclsRequest>,
        _i2.AWSEquatable<DescribeNetworkAclsRequest>
    implements
        Built<DescribeNetworkAclsRequest, DescribeNetworkAclsRequestBuilder> {
  factory DescribeNetworkAclsRequest({
    List<Filter>? filters,
    bool? dryRun,
    List<String>? networkAclIds,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeNetworkAclsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      networkAclIds:
          networkAclIds == null ? null : _i3.BuiltList(networkAclIds),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeNetworkAclsRequest.build(
          [void Function(DescribeNetworkAclsRequestBuilder) updates]) =
      _$DescribeNetworkAclsRequest;

  const DescribeNetworkAclsRequest._();

  factory DescribeNetworkAclsRequest.fromRequest(
    DescribeNetworkAclsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeNetworkAclsRequest>>
      serializers = [DescribeNetworkAclsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkAclsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `association.association-id` \- The ID of an association ID for the ACL.
  ///
  /// *   `association.network-acl-id` \- The ID of the network ACL involved in the association.
  ///
  /// *   `association.subnet-id` \- The ID of the subnet involved in the association.
  ///
  /// *   `default` \- Indicates whether the ACL is the default network ACL for the VPC.
  ///
  /// *   `entry.cidr` \- The IPv4 CIDR range specified in the entry.
  ///
  /// *   `entry.icmp.code` \- The ICMP code specified in the entry, if any.
  ///
  /// *   `entry.icmp.type` \- The ICMP type specified in the entry, if any.
  ///
  /// *   `entry.ipv6-cidr` \- The IPv6 CIDR range specified in the entry.
  ///
  /// *   `entry.port-range.from` \- The start of the port range specified in the entry.
  ///
  /// *   `entry.port-range.to` \- The end of the port range specified in the entry.
  ///
  /// *   `entry.protocol` \- The protocol specified in the entry (`tcp` | `udp` | `icmp` or a protocol number).
  ///
  /// *   `entry.rule-action` \- Allows or denies the matching traffic (`allow` | `deny`).
  ///
  /// *   `entry.egress` \- A Boolean that indicates the type of rule. Specify `true` for egress rules, or `false` for ingress rules.
  ///
  /// *   `entry.rule-number` \- The number of an entry (in other words, rule) in the set of ACL entries.
  ///
  /// *   `network-acl-id` \- The ID of the network ACL.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the network ACL.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC for the network ACL.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the network ACLs.
  ///
  /// Default: Describes all your network ACLs.
  _i3.BuiltList<String>? get networkAclIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeNetworkAclsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        networkAclIds,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNetworkAclsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'networkAclIds',
        networkAclIds,
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

class DescribeNetworkAclsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeNetworkAclsRequest> {
  const DescribeNetworkAclsRequestEc2QuerySerializer()
      : super('DescribeNetworkAclsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkAclsRequest,
        _$DescribeNetworkAclsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkAclsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkAclsRequestBuilder();
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
        case 'NetworkAclId':
          result.networkAclIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
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
    DescribeNetworkAclsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkAclsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkAclsRequest(
      :filters,
      :dryRun,
      :networkAclIds,
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
    if (networkAclIds != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkAclId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkAclIds,
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
