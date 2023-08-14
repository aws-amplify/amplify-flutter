// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_route_tables_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_route_tables_request.g.dart';

abstract class DescribeRouteTablesRequest
    with
        _i1.HttpInput<DescribeRouteTablesRequest>,
        _i2.AWSEquatable<DescribeRouteTablesRequest>
    implements
        Built<DescribeRouteTablesRequest, DescribeRouteTablesRequestBuilder> {
  factory DescribeRouteTablesRequest({
    List<Filter>? filters,
    bool? dryRun,
    List<String>? routeTableIds,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeRouteTablesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      routeTableIds:
          routeTableIds == null ? null : _i3.BuiltList(routeTableIds),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeRouteTablesRequest.build(
          [void Function(DescribeRouteTablesRequestBuilder) updates]) =
      _$DescribeRouteTablesRequest;

  const DescribeRouteTablesRequest._();

  factory DescribeRouteTablesRequest.fromRequest(
    DescribeRouteTablesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeRouteTablesRequest>>
      serializers = [DescribeRouteTablesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRouteTablesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `association.route-table-association-id` \- The ID of an association ID for the route table.
  ///
  /// *   `association.route-table-id` \- The ID of the route table involved in the association.
  ///
  /// *   `association.subnet-id` \- The ID of the subnet involved in the association.
  ///
  /// *   `association.main` \- Indicates whether the route table is the main route table for the VPC (`true` | `false`). Route tables that do not have an association ID are not returned in the response.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the route table.
  ///
  /// *   `route-table-id` \- The ID of the route table.
  ///
  /// *   `route.destination-cidr-block` \- The IPv4 CIDR range specified in a route in the table.
  ///
  /// *   `route.destination-ipv6-cidr-block` \- The IPv6 CIDR range specified in a route in the route table.
  ///
  /// *   `route.destination-prefix-list-id` \- The ID (prefix) of the Amazon Web Service specified in a route in the table.
  ///
  /// *   `route.egress-only-internet-gateway-id` \- The ID of an egress-only Internet gateway specified in a route in the route table.
  ///
  /// *   `route.gateway-id` \- The ID of a gateway specified in a route in the table.
  ///
  /// *   `route.instance-id` \- The ID of an instance specified in a route in the table.
  ///
  /// *   `route.nat-gateway-id` \- The ID of a NAT gateway.
  ///
  /// *   `route.transit-gateway-id` \- The ID of a transit gateway.
  ///
  /// *   `route.origin` \- Describes how the route was created. `CreateRouteTable` indicates that the route was automatically created when the route table was created; `CreateRoute` indicates that the route was manually added to the route table; `EnableVgwRoutePropagation` indicates that the route was propagated by route propagation.
  ///
  /// *   `route.state` \- The state of a route in the route table (`active` | `blackhole`). The blackhole state indicates that the route's target isn't available (for example, the specified gateway isn't attached to the VPC, the specified NAT instance has been terminated, and so on).
  ///
  /// *   `route.vpc-peering-connection-id` \- The ID of a VPC peering connection specified in a route in the table.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC for the route table.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the route tables.
  ///
  /// Default: Describes all your route tables.
  _i3.BuiltList<String>? get routeTableIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeRouteTablesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        routeTableIds,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeRouteTablesRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'routeTableIds',
        routeTableIds,
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

class DescribeRouteTablesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeRouteTablesRequest> {
  const DescribeRouteTablesRequestEc2QuerySerializer()
      : super('DescribeRouteTablesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeRouteTablesRequest,
        _$DescribeRouteTablesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeRouteTablesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRouteTablesRequestBuilder();
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
        case 'RouteTableId':
          result.routeTableIds.replace((const _i1.XmlBuiltListSerializer(
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
    DescribeRouteTablesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeRouteTablesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeRouteTablesRequest(
      :filters,
      :dryRun,
      :routeTableIds,
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
          specifiedType: const FullType.nullable(
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
    if (routeTableIds != null) {
      result$
        ..add(const _i1.XmlElementName('RouteTableId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routeTableIds,
          specifiedType: const FullType.nullable(
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
