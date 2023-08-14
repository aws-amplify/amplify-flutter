// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateway_route_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table.dart';

part 'describe_local_gateway_route_tables_result.g.dart';

abstract class DescribeLocalGatewayRouteTablesResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayRouteTablesResult>
    implements
        Built<DescribeLocalGatewayRouteTablesResult,
            DescribeLocalGatewayRouteTablesResultBuilder> {
  factory DescribeLocalGatewayRouteTablesResult({
    List<LocalGatewayRouteTable>? localGatewayRouteTables,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayRouteTablesResult._(
      localGatewayRouteTables: localGatewayRouteTables == null
          ? null
          : _i2.BuiltList(localGatewayRouteTables),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayRouteTablesResult.build(
      [void Function(DescribeLocalGatewayRouteTablesResultBuilder)
          updates]) = _$DescribeLocalGatewayRouteTablesResult;

  const DescribeLocalGatewayRouteTablesResult._();

  /// Constructs a [DescribeLocalGatewayRouteTablesResult] from a [payload] and [response].
  factory DescribeLocalGatewayRouteTablesResult.fromResponse(
    DescribeLocalGatewayRouteTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeLocalGatewayRouteTablesResult>>
      serializers = [DescribeLocalGatewayRouteTablesResultEc2QuerySerializer()];

  /// Information about the local gateway route tables.
  _i2.BuiltList<LocalGatewayRouteTable>? get localGatewayRouteTables;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayRouteTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeLocalGatewayRouteTablesResult')
          ..add(
            'localGatewayRouteTables',
            localGatewayRouteTables,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeLocalGatewayRouteTablesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeLocalGatewayRouteTablesResult> {
  const DescribeLocalGatewayRouteTablesResultEc2QuerySerializer()
      : super('DescribeLocalGatewayRouteTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTablesResult,
        _$DescribeLocalGatewayRouteTablesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayRouteTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableSet':
          result.localGatewayRouteTables
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalGatewayRouteTable)],
            ),
          ) as _i2.BuiltList<LocalGatewayRouteTable>));
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
    DescribeLocalGatewayRouteTablesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeLocalGatewayRouteTablesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewayRouteTablesResult(
      :localGatewayRouteTables,
      :nextToken
    ) = object;
    if (localGatewayRouteTables != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayRouteTables,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LocalGatewayRouteTable)],
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
