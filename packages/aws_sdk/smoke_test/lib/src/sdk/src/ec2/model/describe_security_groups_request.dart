// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_security_groups_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_security_groups_request.g.dart';

abstract class DescribeSecurityGroupsRequest
    with
        _i1.HttpInput<DescribeSecurityGroupsRequest>,
        _i2.AWSEquatable<DescribeSecurityGroupsRequest>
    implements
        Built<DescribeSecurityGroupsRequest,
            DescribeSecurityGroupsRequestBuilder> {
  factory DescribeSecurityGroupsRequest({
    List<Filter>? filters,
    List<String>? groupIds,
    List<String>? groupNames,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSecurityGroupsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      groupIds: groupIds == null ? null : _i3.BuiltList(groupIds),
      groupNames: groupNames == null ? null : _i3.BuiltList(groupNames),
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeSecurityGroupsRequest.build(
          [void Function(DescribeSecurityGroupsRequestBuilder) updates]) =
      _$DescribeSecurityGroupsRequest;

  const DescribeSecurityGroupsRequest._();

  factory DescribeSecurityGroupsRequest.fromRequest(
    DescribeSecurityGroupsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeSecurityGroupsRequest>>
      serializers = [DescribeSecurityGroupsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSecurityGroupsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters. If using multiple filters for rules, the results include security groups for which any combination of rules - not necessarily a single rule - match all filters.
  ///
  /// *   `description` \- The description of the security group.
  ///
  /// *   `egress.ip-permission.cidr` \- An IPv4 CIDR block for an outbound security group rule.
  ///
  /// *   `egress.ip-permission.from-port` \- For an outbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.
  ///
  /// *   `egress.ip-permission.group-id` \- The ID of a security group that has been referenced in an outbound security group rule.
  ///
  /// *   `egress.ip-permission.group-name` \- The name of a security group that is referenced in an outbound security group rule.
  ///
  /// *   `egress.ip-permission.ipv6-cidr` \- An IPv6 CIDR block for an outbound security group rule.
  ///
  /// *   `egress.ip-permission.prefix-list-id` \- The ID of a prefix list to which a security group rule allows outbound access.
  ///
  /// *   `egress.ip-permission.protocol` \- The IP protocol for an outbound security group rule (`tcp` | `udp` | `icmp`, a protocol number, or -1 for all protocols).
  ///
  /// *   `egress.ip-permission.to-port` \- For an outbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.
  ///
  /// *   `egress.ip-permission.user-id` \- The ID of an Amazon Web Services account that has been referenced in an outbound security group rule.
  ///
  /// *   `group-id` \- The ID of the security group.
  ///
  /// *   `group-name` \- The name of the security group.
  ///
  /// *   `ip-permission.cidr` \- An IPv4 CIDR block for an inbound security group rule.
  ///
  /// *   `ip-permission.from-port` \- For an inbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.
  ///
  /// *   `ip-permission.group-id` \- The ID of a security group that has been referenced in an inbound security group rule.
  ///
  /// *   `ip-permission.group-name` \- The name of a security group that is referenced in an inbound security group rule.
  ///
  /// *   `ip-permission.ipv6-cidr` \- An IPv6 CIDR block for an inbound security group rule.
  ///
  /// *   `ip-permission.prefix-list-id` \- The ID of a prefix list from which a security group rule allows inbound access.
  ///
  /// *   `ip-permission.protocol` \- The IP protocol for an inbound security group rule (`tcp` | `udp` | `icmp`, a protocol number, or -1 for all protocols).
  ///
  /// *   `ip-permission.to-port` \- For an inbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.
  ///
  /// *   `ip-permission.user-id` \- The ID of an Amazon Web Services account that has been referenced in an inbound security group rule.
  ///
  /// *   `owner-id` \- The Amazon Web Services account ID of the owner of the security group.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC specified when the security group was created.
  _i3.BuiltList<Filter>? get filters;

  /// The IDs of the security groups. Required for security groups in a nondefault VPC.
  ///
  /// Default: Describes all of your security groups.
  _i3.BuiltList<String>? get groupIds;

  /// \[Default VPC\] The names of the security groups. You can specify either the security group name or the security group ID.
  ///
  /// Default: Describes all of your security groups.
  _i3.BuiltList<String>? get groupNames;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. This value can be between 5 and 1000. If this parameter is not specified, then all items are returned. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeSecurityGroupsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        groupIds,
        groupNames,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSecurityGroupsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'groupIds',
        groupIds,
      )
      ..add(
        'groupNames',
        groupNames,
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

class DescribeSecurityGroupsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSecurityGroupsRequest> {
  const DescribeSecurityGroupsRequestEc2QuerySerializer()
      : super('DescribeSecurityGroupsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupsRequest,
        _$DescribeSecurityGroupsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupsRequestBuilder();
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
        case 'GroupId':
          result.groupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'groupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'GroupName':
          result.groupNames.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'GroupName',
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
    DescribeSecurityGroupsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSecurityGroupsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSecurityGroupsRequest(
      :filters,
      :groupIds,
      :groupNames,
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
    if (groupIds != null) {
      result$
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'groupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groupIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (groupNames != null) {
      result$
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'GroupName',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groupNames,
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
