// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.placement_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spread_level.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'placement_group.g.dart';

/// Describes a placement group.
abstract class PlacementGroup
    with _i1.AWSEquatable<PlacementGroup>
    implements Built<PlacementGroup, PlacementGroupBuilder> {
  /// Describes a placement group.
  factory PlacementGroup({
    String? groupName,
    PlacementGroupState? state,
    PlacementStrategy? strategy,
    int? partitionCount,
    String? groupId,
    List<Tag>? tags,
    String? groupArn,
    SpreadLevel? spreadLevel,
  }) {
    partitionCount ??= 0;
    return _$PlacementGroup._(
      groupName: groupName,
      state: state,
      strategy: strategy,
      partitionCount: partitionCount,
      groupId: groupId,
      tags: tags == null ? null : _i2.BuiltList(tags),
      groupArn: groupArn,
      spreadLevel: spreadLevel,
    );
  }

  /// Describes a placement group.
  factory PlacementGroup.build([void Function(PlacementGroupBuilder) updates]) =
      _$PlacementGroup;

  const PlacementGroup._();

  static const List<_i3.SmithySerializer<PlacementGroup>> serializers = [
    PlacementGroupEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PlacementGroupBuilder b) {
    b.partitionCount = 0;
  }

  /// The name of the placement group.
  String? get groupName;

  /// The state of the placement group.
  PlacementGroupState? get state;

  /// The placement strategy.
  PlacementStrategy? get strategy;

  /// The number of partitions. Valid only if **strategy** is set to `partition`.
  int get partitionCount;

  /// The ID of the placement group.
  String? get groupId;

  /// Any tags applied to the placement group.
  _i2.BuiltList<Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the placement group.
  String? get groupArn;

  /// The spread level for the placement group. _Only_ Outpost placement groups can be spread across hosts.
  SpreadLevel? get spreadLevel;
  @override
  List<Object?> get props => [
        groupName,
        state,
        strategy,
        partitionCount,
        groupId,
        tags,
        groupArn,
        spreadLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PlacementGroup')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'strategy',
        strategy,
      )
      ..add(
        'partitionCount',
        partitionCount,
      )
      ..add(
        'groupId',
        groupId,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'groupArn',
        groupArn,
      )
      ..add(
        'spreadLevel',
        spreadLevel,
      );
    return helper.toString();
  }
}

class PlacementGroupEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PlacementGroup> {
  const PlacementGroupEc2QuerySerializer() : super('PlacementGroup');

  @override
  Iterable<Type> get types => const [
        PlacementGroup,
        _$PlacementGroup,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PlacementGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacementGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlacementGroupState),
          ) as PlacementGroupState);
        case 'strategy':
          result.strategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlacementStrategy),
          ) as PlacementStrategy);
        case 'partitionCount':
          result.partitionCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'groupId':
          result.groupId = (serializers.deserialize(
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
        case 'groupArn':
          result.groupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spreadLevel':
          result.spreadLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(SpreadLevel),
          ) as SpreadLevel);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PlacementGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PlacementGroupResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PlacementGroup(
      :groupName,
      :state,
      :strategy,
      :partitionCount,
      :groupId,
      :tags,
      :groupArn,
      :spreadLevel
    ) = object;
    if (groupName != null) {
      result$
        ..add(const _i3.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(PlacementGroupState),
        ));
    }
    if (strategy != null) {
      result$
        ..add(const _i3.XmlElementName('Strategy'))
        ..add(serializers.serialize(
          strategy,
          specifiedType: const FullType.nullable(PlacementStrategy),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('PartitionCount'))
      ..add(serializers.serialize(
        partitionCount,
        specifiedType: const FullType(int),
      ));
    if (groupId != null) {
      result$
        ..add(const _i3.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
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
    if (groupArn != null) {
      result$
        ..add(const _i3.XmlElementName('GroupArn'))
        ..add(serializers.serialize(
          groupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (spreadLevel != null) {
      result$
        ..add(const _i3.XmlElementName('SpreadLevel'))
        ..add(serializers.serialize(
          spreadLevel,
          specifiedType: const FullType.nullable(SpreadLevel),
        ));
    }
    return result$;
  }
}
