// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_route_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart';

part 'describe_transit_gateway_route_tables_result.g.dart';

abstract class DescribeTransitGatewayRouteTablesResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayRouteTablesResult>
    implements
        Built<DescribeTransitGatewayRouteTablesResult,
            DescribeTransitGatewayRouteTablesResultBuilder> {
  factory DescribeTransitGatewayRouteTablesResult({
    List<TransitGatewayRouteTable>? transitGatewayRouteTables,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayRouteTablesResult._(
      transitGatewayRouteTables: transitGatewayRouteTables == null
          ? null
          : _i2.BuiltList(transitGatewayRouteTables),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayRouteTablesResult.build(
      [void Function(DescribeTransitGatewayRouteTablesResultBuilder)
          updates]) = _$DescribeTransitGatewayRouteTablesResult;

  const DescribeTransitGatewayRouteTablesResult._();

  /// Constructs a [DescribeTransitGatewayRouteTablesResult] from a [payload] and [response].
  factory DescribeTransitGatewayRouteTablesResult.fromResponse(
    DescribeTransitGatewayRouteTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTransitGatewayRouteTablesResult>>
      serializers = [
    DescribeTransitGatewayRouteTablesResultEc2QuerySerializer()
  ];

  /// Information about the transit gateway route tables.
  _i2.BuiltList<TransitGatewayRouteTable>? get transitGatewayRouteTables;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayRouteTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayRouteTablesResult')
          ..add(
            'transitGatewayRouteTables',
            transitGatewayRouteTables,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTransitGatewayRouteTablesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayRouteTablesResult> {
  const DescribeTransitGatewayRouteTablesResultEc2QuerySerializer()
      : super('DescribeTransitGatewayRouteTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayRouteTablesResult,
        _$DescribeTransitGatewayRouteTablesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayRouteTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayRouteTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTables':
          result.transitGatewayRouteTables
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayRouteTable)],
            ),
          ) as _i2.BuiltList<TransitGatewayRouteTable>));
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
    DescribeTransitGatewayRouteTablesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayRouteTablesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayRouteTablesResult(
      :transitGatewayRouteTables,
      :nextToken
    ) = object;
    if (transitGatewayRouteTables != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTables'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayRouteTables,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayRouteTable)],
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
