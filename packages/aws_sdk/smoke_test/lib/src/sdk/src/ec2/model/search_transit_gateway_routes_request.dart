// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.search_transit_gateway_routes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'search_transit_gateway_routes_request.g.dart';

abstract class SearchTransitGatewayRoutesRequest
    with
        _i1.HttpInput<SearchTransitGatewayRoutesRequest>,
        _i2.AWSEquatable<SearchTransitGatewayRoutesRequest>
    implements
        Built<SearchTransitGatewayRoutesRequest,
            SearchTransitGatewayRoutesRequestBuilder> {
  factory SearchTransitGatewayRoutesRequest({
    String? transitGatewayRouteTableId,
    List<Filter>? filters,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$SearchTransitGatewayRoutesRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory SearchTransitGatewayRoutesRequest.build(
          [void Function(SearchTransitGatewayRoutesRequestBuilder) updates]) =
      _$SearchTransitGatewayRoutesRequest;

  const SearchTransitGatewayRoutesRequest._();

  factory SearchTransitGatewayRoutesRequest.fromRequest(
    SearchTransitGatewayRoutesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SearchTransitGatewayRoutesRequest>>
      serializers = [SearchTransitGatewayRoutesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SearchTransitGatewayRoutesRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// One or more filters. The possible values are:
  ///
  /// *   `attachment.transit-gateway-attachment-id`\- The id of the transit gateway attachment.
  ///
  /// *   `attachment.resource-id` \- The resource id of the transit gateway attachment.
  ///
  /// *   `attachment.resource-type` \- The attachment resource type. Valid values are `vpc` | `vpn` | `direct-connect-gateway` | `peering` | `connect`.
  ///
  /// *   `prefix-list-id` \- The ID of the prefix list.
  ///
  /// *   `route-search.exact-match` \- The exact match of the specified filter.
  ///
  /// *   `route-search.longest-prefix-match` \- The longest prefix that matches the route.
  ///
  /// *   `route-search.subnet-of-match` \- The routes with a subnet that match the specified CIDR filter.
  ///
  /// *   `route-search.supernet-of-match` \- The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.
  ///
  /// *   `state` \- The state of the route (`active` | `blackhole`).
  ///
  /// *   `type` \- The type of route (`propagated` | `static`).
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of routes to return.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  SearchTransitGatewayRoutesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        filters,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SearchTransitGatewayRoutesRequest')
          ..add(
            'transitGatewayRouteTableId',
            transitGatewayRouteTableId,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class SearchTransitGatewayRoutesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<SearchTransitGatewayRoutesRequest> {
  const SearchTransitGatewayRoutesRequestEc2QuerySerializer()
      : super('SearchTransitGatewayRoutesRequest');

  @override
  Iterable<Type> get types => const [
        SearchTransitGatewayRoutesRequest,
        _$SearchTransitGatewayRoutesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchTransitGatewayRoutesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTransitGatewayRoutesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SearchTransitGatewayRoutesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SearchTransitGatewayRoutesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SearchTransitGatewayRoutesRequest(
      :transitGatewayRouteTableId,
      :filters,
      :maxResults,
      :dryRun
    ) = object;
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
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
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
