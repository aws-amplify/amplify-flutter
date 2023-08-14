// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_route_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart';

part 'describe_route_tables_result.g.dart';

/// Contains the output of DescribeRouteTables.
abstract class DescribeRouteTablesResult
    with _i1.AWSEquatable<DescribeRouteTablesResult>
    implements
        Built<DescribeRouteTablesResult, DescribeRouteTablesResultBuilder> {
  /// Contains the output of DescribeRouteTables.
  factory DescribeRouteTablesResult({
    List<RouteTable>? routeTables,
    String? nextToken,
  }) {
    return _$DescribeRouteTablesResult._(
      routeTables: routeTables == null ? null : _i2.BuiltList(routeTables),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeRouteTables.
  factory DescribeRouteTablesResult.build(
          [void Function(DescribeRouteTablesResultBuilder) updates]) =
      _$DescribeRouteTablesResult;

  const DescribeRouteTablesResult._();

  /// Constructs a [DescribeRouteTablesResult] from a [payload] and [response].
  factory DescribeRouteTablesResult.fromResponse(
    DescribeRouteTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeRouteTablesResult>>
      serializers = [DescribeRouteTablesResultEc2QuerySerializer()];

  /// Information about one or more route tables.
  _i2.BuiltList<RouteTable>? get routeTables;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        routeTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeRouteTablesResult')
      ..add(
        'routeTables',
        routeTables,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeRouteTablesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeRouteTablesResult> {
  const DescribeRouteTablesResultEc2QuerySerializer()
      : super('DescribeRouteTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeRouteTablesResult,
        _$DescribeRouteTablesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeRouteTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRouteTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'routeTableSet':
          result.routeTables.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(RouteTable)],
            ),
          ) as _i2.BuiltList<RouteTable>));
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
    DescribeRouteTablesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeRouteTablesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeRouteTablesResult(:routeTables, :nextToken) = object;
    if (routeTables != null) {
      result$
        ..add(const _i3.XmlElementName('RouteTableSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          routeTables,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(RouteTable)],
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
