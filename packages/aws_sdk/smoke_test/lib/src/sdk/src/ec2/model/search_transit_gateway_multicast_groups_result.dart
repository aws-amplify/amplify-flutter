// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.search_transit_gateway_multicast_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_group.dart';

part 'search_transit_gateway_multicast_groups_result.g.dart';

abstract class SearchTransitGatewayMulticastGroupsResult
    with
        _i1.AWSEquatable<SearchTransitGatewayMulticastGroupsResult>
    implements
        Built<SearchTransitGatewayMulticastGroupsResult,
            SearchTransitGatewayMulticastGroupsResultBuilder> {
  factory SearchTransitGatewayMulticastGroupsResult({
    List<TransitGatewayMulticastGroup>? multicastGroups,
    String? nextToken,
  }) {
    return _$SearchTransitGatewayMulticastGroupsResult._(
      multicastGroups:
          multicastGroups == null ? null : _i2.BuiltList(multicastGroups),
      nextToken: nextToken,
    );
  }

  factory SearchTransitGatewayMulticastGroupsResult.build(
      [void Function(SearchTransitGatewayMulticastGroupsResultBuilder)
          updates]) = _$SearchTransitGatewayMulticastGroupsResult;

  const SearchTransitGatewayMulticastGroupsResult._();

  /// Constructs a [SearchTransitGatewayMulticastGroupsResult] from a [payload] and [response].
  factory SearchTransitGatewayMulticastGroupsResult.fromResponse(
    SearchTransitGatewayMulticastGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<SearchTransitGatewayMulticastGroupsResult>>
      serializers = [
    SearchTransitGatewayMulticastGroupsResultEc2QuerySerializer()
  ];

  /// Information about the transit gateway multicast group.
  _i2.BuiltList<TransitGatewayMulticastGroup>? get multicastGroups;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        multicastGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SearchTransitGatewayMulticastGroupsResult')
          ..add(
            'multicastGroups',
            multicastGroups,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class SearchTransitGatewayMulticastGroupsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<SearchTransitGatewayMulticastGroupsResult> {
  const SearchTransitGatewayMulticastGroupsResultEc2QuerySerializer()
      : super('SearchTransitGatewayMulticastGroupsResult');

  @override
  Iterable<Type> get types => const [
        SearchTransitGatewayMulticastGroupsResult,
        _$SearchTransitGatewayMulticastGroupsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchTransitGatewayMulticastGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTransitGatewayMulticastGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'multicastGroups':
          result.multicastGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayMulticastGroup)],
            ),
          ) as _i2.BuiltList<TransitGatewayMulticastGroup>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SearchTransitGatewayMulticastGroupsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SearchTransitGatewayMulticastGroupsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SearchTransitGatewayMulticastGroupsResult(
      :multicastGroups,
      :nextToken
    ) = object;
    if (multicastGroups != null) {
      result$
        ..add(const _i3.XmlElementName('MulticastGroups'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          multicastGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayMulticastGroup)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
