// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_policy_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart';

part 'describe_transit_gateway_policy_tables_result.g.dart';

abstract class DescribeTransitGatewayPolicyTablesResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayPolicyTablesResult>
    implements
        Built<DescribeTransitGatewayPolicyTablesResult,
            DescribeTransitGatewayPolicyTablesResultBuilder> {
  factory DescribeTransitGatewayPolicyTablesResult({
    List<TransitGatewayPolicyTable>? transitGatewayPolicyTables,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayPolicyTablesResult._(
      transitGatewayPolicyTables: transitGatewayPolicyTables == null
          ? null
          : _i2.BuiltList(transitGatewayPolicyTables),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayPolicyTablesResult.build(
      [void Function(DescribeTransitGatewayPolicyTablesResultBuilder)
          updates]) = _$DescribeTransitGatewayPolicyTablesResult;

  const DescribeTransitGatewayPolicyTablesResult._();

  /// Constructs a [DescribeTransitGatewayPolicyTablesResult] from a [payload] and [response].
  factory DescribeTransitGatewayPolicyTablesResult.fromResponse(
    DescribeTransitGatewayPolicyTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTransitGatewayPolicyTablesResult>>
      serializers = [
    DescribeTransitGatewayPolicyTablesResultEc2QuerySerializer()
  ];

  /// Describes the transit gateway policy tables.
  _i2.BuiltList<TransitGatewayPolicyTable>? get transitGatewayPolicyTables;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayPolicyTablesResult')
          ..add(
            'transitGatewayPolicyTables',
            transitGatewayPolicyTables,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTransitGatewayPolicyTablesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayPolicyTablesResult> {
  const DescribeTransitGatewayPolicyTablesResultEc2QuerySerializer()
      : super('DescribeTransitGatewayPolicyTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayPolicyTablesResult,
        _$DescribeTransitGatewayPolicyTablesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayPolicyTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayPolicyTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPolicyTables':
          result.transitGatewayPolicyTables
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayPolicyTable)],
            ),
          ) as _i2.BuiltList<TransitGatewayPolicyTable>));
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
    DescribeTransitGatewayPolicyTablesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayPolicyTablesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayPolicyTablesResult(
      :transitGatewayPolicyTables,
      :nextToken
    ) = object;
    if (transitGatewayPolicyTables != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayPolicyTables'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayPolicyTables,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayPolicyTable)],
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
