// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_route_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_mode.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'local_gateway_route_table.g.dart';

/// Describes a local gateway route table.
abstract class LocalGatewayRouteTable
    with _i1.AWSEquatable<LocalGatewayRouteTable>
    implements Built<LocalGatewayRouteTable, LocalGatewayRouteTableBuilder> {
  /// Describes a local gateway route table.
  factory LocalGatewayRouteTable({
    String? localGatewayRouteTableId,
    String? localGatewayRouteTableArn,
    String? localGatewayId,
    String? outpostArn,
    String? ownerId,
    String? state,
    List<Tag>? tags,
    LocalGatewayRouteTableMode? mode,
    StateReason? stateReason,
  }) {
    return _$LocalGatewayRouteTable._(
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayRouteTableArn: localGatewayRouteTableArn,
      localGatewayId: localGatewayId,
      outpostArn: outpostArn,
      ownerId: ownerId,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
      mode: mode,
      stateReason: stateReason,
    );
  }

  /// Describes a local gateway route table.
  factory LocalGatewayRouteTable.build(
          [void Function(LocalGatewayRouteTableBuilder) updates]) =
      _$LocalGatewayRouteTable;

  const LocalGatewayRouteTable._();

  static const List<_i3.SmithySerializer<LocalGatewayRouteTable>> serializers =
      [LocalGatewayRouteTableEc2QuerySerializer()];

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The Amazon Resource Name (ARN) of the local gateway route table.
  String? get localGatewayRouteTableArn;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The ID of the Amazon Web Services account that owns the local gateway route table.
  String? get ownerId;

  /// The state of the local gateway route table.
  String? get state;

  /// The tags assigned to the local gateway route table.
  _i2.BuiltList<Tag>? get tags;

  /// The mode of the local gateway route table.
  LocalGatewayRouteTableMode? get mode;

  /// Information about the state change.
  StateReason? get stateReason;
  @override
  List<Object?> get props => [
        localGatewayRouteTableId,
        localGatewayRouteTableArn,
        localGatewayId,
        outpostArn,
        ownerId,
        state,
        tags,
        mode,
        stateReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalGatewayRouteTable')
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
      )
      ..add(
        'localGatewayRouteTableArn',
        localGatewayRouteTableArn,
      )
      ..add(
        'localGatewayId',
        localGatewayId,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'mode',
        mode,
      )
      ..add(
        'stateReason',
        stateReason,
      );
    return helper.toString();
  }
}

class LocalGatewayRouteTableEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LocalGatewayRouteTable> {
  const LocalGatewayRouteTableEc2QuerySerializer()
      : super('LocalGatewayRouteTable');

  @override
  Iterable<Type> get types => const [
        LocalGatewayRouteTable,
        _$LocalGatewayRouteTable,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayRouteTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayRouteTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayRouteTableArn':
          result.localGatewayRouteTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocalGatewayRouteTableMode),
          ) as LocalGatewayRouteTableMode);
        case 'stateReason':
          result.stateReason.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StateReason),
          ) as StateReason));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalGatewayRouteTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LocalGatewayRouteTableResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGatewayRouteTable(
      :localGatewayRouteTableId,
      :localGatewayRouteTableArn,
      :localGatewayId,
      :outpostArn,
      :ownerId,
      :state,
      :tags,
      :mode,
      :stateReason
    ) = object;
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableArn != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableArn'))
        ..add(serializers.serialize(
          localGatewayRouteTableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (mode != null) {
      result$
        ..add(const _i3.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType.nullable(LocalGatewayRouteTableMode),
        ));
    }
    if (stateReason != null) {
      result$
        ..add(const _i3.XmlElementName('StateReason'))
        ..add(serializers.serialize(
          stateReason,
          specifiedType: const FullType(StateReason),
        ));
    }
    return result$;
  }
}
