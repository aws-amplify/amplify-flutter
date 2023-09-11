// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_state.dart';

part 'transit_gateway_route_table.g.dart';

/// Describes a transit gateway route table.
abstract class TransitGatewayRouteTable
    with _i1.AWSEquatable<TransitGatewayRouteTable>
    implements
        Built<TransitGatewayRouteTable, TransitGatewayRouteTableBuilder> {
  /// Describes a transit gateway route table.
  factory TransitGatewayRouteTable({
    String? transitGatewayRouteTableId,
    String? transitGatewayId,
    TransitGatewayRouteTableState? state,
    bool? defaultAssociationRouteTable,
    bool? defaultPropagationRouteTable,
    DateTime? creationTime,
    List<Tag>? tags,
  }) {
    defaultAssociationRouteTable ??= false;
    defaultPropagationRouteTable ??= false;
    return _$TransitGatewayRouteTable._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      transitGatewayId: transitGatewayId,
      state: state,
      defaultAssociationRouteTable: defaultAssociationRouteTable,
      defaultPropagationRouteTable: defaultPropagationRouteTable,
      creationTime: creationTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a transit gateway route table.
  factory TransitGatewayRouteTable.build(
          [void Function(TransitGatewayRouteTableBuilder) updates]) =
      _$TransitGatewayRouteTable;

  const TransitGatewayRouteTable._();

  static const List<_i3.SmithySerializer<TransitGatewayRouteTable>>
      serializers = [TransitGatewayRouteTableEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteTableBuilder b) {
    b
      ..defaultAssociationRouteTable = false
      ..defaultPropagationRouteTable = false;
  }

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The state of the transit gateway route table.
  TransitGatewayRouteTableState? get state;

  /// Indicates whether this is the default association route table for the transit gateway.
  bool get defaultAssociationRouteTable;

  /// Indicates whether this is the default propagation route table for the transit gateway.
  bool get defaultPropagationRouteTable;

  /// The creation time.
  DateTime? get creationTime;

  /// Any tags assigned to the route table.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        transitGatewayId,
        state,
        defaultAssociationRouteTable,
        defaultPropagationRouteTable,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRouteTable')
      ..add(
        'transitGatewayRouteTableId',
        transitGatewayRouteTableId,
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
        'defaultAssociationRouteTable',
        defaultAssociationRouteTable,
      )
      ..add(
        'defaultPropagationRouteTable',
        defaultPropagationRouteTable,
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

class TransitGatewayRouteTableEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayRouteTable> {
  const TransitGatewayRouteTableEc2QuerySerializer()
      : super('TransitGatewayRouteTable');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTable,
        _$TransitGatewayRouteTable,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
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
            specifiedType: const FullType(TransitGatewayRouteTableState),
          ) as TransitGatewayRouteTableState);
        case 'defaultAssociationRouteTable':
          result.defaultAssociationRouteTable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'defaultPropagationRouteTable':
          result.defaultPropagationRouteTable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    TransitGatewayRouteTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayRouteTableResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRouteTable(
      :transitGatewayRouteTableId,
      :transitGatewayId,
      :state,
      :defaultAssociationRouteTable,
      :defaultPropagationRouteTable,
      :creationTime,
      :tags
    ) = object;
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
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
          specifiedType: const FullType(TransitGatewayRouteTableState),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('DefaultAssociationRouteTable'))
      ..add(serializers.serialize(
        defaultAssociationRouteTable,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('DefaultPropagationRouteTable'))
      ..add(serializers.serialize(
        defaultPropagationRouteTable,
        specifiedType: const FullType(bool),
      ));
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
