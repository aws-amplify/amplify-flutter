// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.search_transit_gateway_routes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart';

part 'search_transit_gateway_routes_result.g.dart';

abstract class SearchTransitGatewayRoutesResult
    with
        _i1.AWSEquatable<SearchTransitGatewayRoutesResult>
    implements
        Built<SearchTransitGatewayRoutesResult,
            SearchTransitGatewayRoutesResultBuilder> {
  factory SearchTransitGatewayRoutesResult({
    List<TransitGatewayRoute>? routes,
    bool? additionalRoutesAvailable,
  }) {
    additionalRoutesAvailable ??= false;
    return _$SearchTransitGatewayRoutesResult._(
      routes: routes == null ? null : _i2.BuiltList(routes),
      additionalRoutesAvailable: additionalRoutesAvailable,
    );
  }

  factory SearchTransitGatewayRoutesResult.build(
          [void Function(SearchTransitGatewayRoutesResultBuilder) updates]) =
      _$SearchTransitGatewayRoutesResult;

  const SearchTransitGatewayRoutesResult._();

  /// Constructs a [SearchTransitGatewayRoutesResult] from a [payload] and [response].
  factory SearchTransitGatewayRoutesResult.fromResponse(
    SearchTransitGatewayRoutesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<SearchTransitGatewayRoutesResult>>
      serializers = [SearchTransitGatewayRoutesResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SearchTransitGatewayRoutesResultBuilder b) {
    b.additionalRoutesAvailable = false;
  }

  /// Information about the routes.
  _i2.BuiltList<TransitGatewayRoute>? get routes;

  /// Indicates whether there are additional routes available.
  bool get additionalRoutesAvailable;
  @override
  List<Object?> get props => [
        routes,
        additionalRoutesAvailable,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SearchTransitGatewayRoutesResult')
          ..add(
            'routes',
            routes,
          )
          ..add(
            'additionalRoutesAvailable',
            additionalRoutesAvailable,
          );
    return helper.toString();
  }
}

class SearchTransitGatewayRoutesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SearchTransitGatewayRoutesResult> {
  const SearchTransitGatewayRoutesResultEc2QuerySerializer()
      : super('SearchTransitGatewayRoutesResult');

  @override
  Iterable<Type> get types => const [
        SearchTransitGatewayRoutesResult,
        _$SearchTransitGatewayRoutesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchTransitGatewayRoutesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTransitGatewayRoutesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'routeSet':
          result.routes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayRoute)],
            ),
          ) as _i2.BuiltList<TransitGatewayRoute>));
        case 'additionalRoutesAvailable':
          result.additionalRoutesAvailable = (serializers.deserialize(
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
    SearchTransitGatewayRoutesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SearchTransitGatewayRoutesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SearchTransitGatewayRoutesResult(
      :routes,
      :additionalRoutesAvailable
    ) = object;
    if (routes != null) {
      result$
        ..add(const _i3.XmlElementName('RouteSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayRoute)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AdditionalRoutesAvailable'))
      ..add(serializers.serialize(
        additionalRoutesAvailable,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
