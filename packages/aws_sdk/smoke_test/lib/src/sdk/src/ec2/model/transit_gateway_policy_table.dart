// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_policy_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_state.dart';

part 'transit_gateway_policy_table.g.dart';

/// Describes a transit gateway policy table.
abstract class TransitGatewayPolicyTable
    with _i1.AWSEquatable<TransitGatewayPolicyTable>
    implements
        Built<TransitGatewayPolicyTable, TransitGatewayPolicyTableBuilder> {
  /// Describes a transit gateway policy table.
  factory TransitGatewayPolicyTable({
    String? transitGatewayPolicyTableId,
    String? transitGatewayId,
    TransitGatewayPolicyTableState? state,
    DateTime? creationTime,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayPolicyTable._(
      transitGatewayPolicyTableId: transitGatewayPolicyTableId,
      transitGatewayId: transitGatewayId,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a transit gateway policy table.
  factory TransitGatewayPolicyTable.build(
          [void Function(TransitGatewayPolicyTableBuilder) updates]) =
      _$TransitGatewayPolicyTable;

  const TransitGatewayPolicyTable._();

  static const List<_i3.SmithySerializer<TransitGatewayPolicyTable>>
      serializers = [TransitGatewayPolicyTableEc2QuerySerializer()];

  /// The ID of the transit gateway policy table.
  String? get transitGatewayPolicyTableId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The state of the transit gateway policy table
  TransitGatewayPolicyTableState? get state;

  /// The timestamp when the transit gateway policy table was created.
  DateTime? get creationTime;

  /// he key-value pairs associated with the transit gateway policy table.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableId,
        transitGatewayId,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayPolicyTable')
      ..add(
        'transitGatewayPolicyTableId',
        transitGatewayPolicyTableId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TransitGatewayPolicyTableEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayPolicyTable> {
  const TransitGatewayPolicyTableEc2QuerySerializer()
      : super('TransitGatewayPolicyTable');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyTable,
        _$TransitGatewayPolicyTable,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPolicyTableId':
          result.transitGatewayPolicyTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPolicyTableState),
          ) as TransitGatewayPolicyTableState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayPolicyTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayPolicyTableResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPolicyTable(
      :transitGatewayPolicyTableId,
      :transitGatewayId,
      :state,
      :creationTime,
      :tags
    ) = object;
    if (transitGatewayPolicyTableId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayPolicyTableId'))
        ..add(serializers.serialize(
          transitGatewayPolicyTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayPolicyTableState),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
