// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.search_local_gateway_routes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'search_local_gateway_routes_request.g.dart';

abstract class SearchLocalGatewayRoutesRequest
    with
        _i1.HttpInput<SearchLocalGatewayRoutesRequest>,
        _i2.AWSEquatable<SearchLocalGatewayRoutesRequest>
    implements
        Built<SearchLocalGatewayRoutesRequest,
            SearchLocalGatewayRoutesRequestBuilder> {
  factory SearchLocalGatewayRoutesRequest({
    String? localGatewayRouteTableId,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$SearchLocalGatewayRoutesRequest._(
      localGatewayRouteTableId: localGatewayRouteTableId,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory SearchLocalGatewayRoutesRequest.build(
          [void Function(SearchLocalGatewayRoutesRequestBuilder) updates]) =
      _$SearchLocalGatewayRoutesRequest;

  const SearchLocalGatewayRoutesRequest._();

  factory SearchLocalGatewayRoutesRequest.fromRequest(
    SearchLocalGatewayRoutesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SearchLocalGatewayRoutesRequest>>
      serializers = [SearchLocalGatewayRoutesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SearchLocalGatewayRoutesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// One or more filters.
  ///
  /// *   `prefix-list-id` \- The ID of the prefix list.
  ///
  /// *   `route-search.exact-match` \- The exact match of the specified filter.
  ///
  /// *   `route-search.longest-prefix-match` \- The longest prefix that matches the route.
  ///
  /// *   `route-search.subnet-of-match` \- The routes with a subnet that match the specified CIDR filter.
  ///
  /// *   `route-search.supernet-of-match` \- The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify `supernet-of-match` as 10.0.1.0/30, then the result returns 10.0.1.0/29.
  ///
  /// *   `state` \- The state of the route.
  ///
  /// *   `type` \- The route type.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int? get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  SearchLocalGatewayRoutesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableId,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SearchLocalGatewayRoutesRequest')
          ..add(
            'localGatewayRouteTableId',
            localGatewayRouteTableId,
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
            'nextToken',
            nextToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class SearchLocalGatewayRoutesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<SearchLocalGatewayRoutesRequest> {
  const SearchLocalGatewayRoutesRequestEc2QuerySerializer()
      : super('SearchLocalGatewayRoutesRequest');

  @override
  Iterable<Type> get types => const [
        SearchLocalGatewayRoutesRequest,
        _$SearchLocalGatewayRoutesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchLocalGatewayRoutesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchLocalGatewayRoutesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    SearchLocalGatewayRoutesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SearchLocalGatewayRoutesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SearchLocalGatewayRoutesRequest(
      :localGatewayRouteTableId,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
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
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType(int),
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
