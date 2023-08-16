// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_transit_gateway_route_table_propagations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_propagation.dart';

part 'get_transit_gateway_route_table_propagations_result.g.dart';

abstract class GetTransitGatewayRouteTablePropagationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayRouteTablePropagationsResult>
    implements
        Built<GetTransitGatewayRouteTablePropagationsResult,
            GetTransitGatewayRouteTablePropagationsResultBuilder> {
  factory GetTransitGatewayRouteTablePropagationsResult({
    List<TransitGatewayRouteTablePropagation>?
        transitGatewayRouteTablePropagations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayRouteTablePropagationsResult._(
      transitGatewayRouteTablePropagations:
          transitGatewayRouteTablePropagations == null
              ? null
              : _i2.BuiltList(transitGatewayRouteTablePropagations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayRouteTablePropagationsResult.build(
      [void Function(GetTransitGatewayRouteTablePropagationsResultBuilder)
          updates]) = _$GetTransitGatewayRouteTablePropagationsResult;

  const GetTransitGatewayRouteTablePropagationsResult._();

  /// Constructs a [GetTransitGatewayRouteTablePropagationsResult] from a [payload] and [response].
  factory GetTransitGatewayRouteTablePropagationsResult.fromResponse(
    GetTransitGatewayRouteTablePropagationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetTransitGatewayRouteTablePropagationsResult>>
      serializers = [
    GetTransitGatewayRouteTablePropagationsResultEc2QuerySerializer()
  ];

  /// Information about the route table propagations.
  _i2.BuiltList<TransitGatewayRouteTablePropagation>?
      get transitGatewayRouteTablePropagations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayRouteTablePropagations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayRouteTablePropagationsResult')
      ..add(
        'transitGatewayRouteTablePropagations',
        transitGatewayRouteTablePropagations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetTransitGatewayRouteTablePropagationsResultEc2QuerySerializer
    extends _i3
    .StructuredSmithySerializer<GetTransitGatewayRouteTablePropagationsResult> {
  const GetTransitGatewayRouteTablePropagationsResultEc2QuerySerializer()
      : super('GetTransitGatewayRouteTablePropagationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayRouteTablePropagationsResult,
        _$GetTransitGatewayRouteTablePropagationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayRouteTablePropagationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayRouteTablePropagationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTablePropagations':
          result.transitGatewayRouteTablePropagations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayRouteTablePropagation)],
            ),
          ) as _i2.BuiltList<TransitGatewayRouteTablePropagation>));
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
    GetTransitGatewayRouteTablePropagationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetTransitGatewayRouteTablePropagationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayRouteTablePropagationsResult(
      :transitGatewayRouteTablePropagations,
      :nextToken
    ) = object;
    if (transitGatewayRouteTablePropagations != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTablePropagations'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayRouteTablePropagations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayRouteTablePropagation)],
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
