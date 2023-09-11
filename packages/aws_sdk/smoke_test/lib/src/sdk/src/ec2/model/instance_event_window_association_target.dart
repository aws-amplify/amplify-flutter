// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window_association_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'instance_event_window_association_target.g.dart';

/// One or more targets associated with the event window.
abstract class InstanceEventWindowAssociationTarget
    with
        _i1.AWSEquatable<InstanceEventWindowAssociationTarget>
    implements
        Built<InstanceEventWindowAssociationTarget,
            InstanceEventWindowAssociationTargetBuilder> {
  /// One or more targets associated with the event window.
  factory InstanceEventWindowAssociationTarget({
    List<String>? instanceIds,
    List<Tag>? tags,
    List<String>? dedicatedHostIds,
  }) {
    return _$InstanceEventWindowAssociationTarget._(
      instanceIds: instanceIds == null ? null : _i2.BuiltList(instanceIds),
      tags: tags == null ? null : _i2.BuiltList(tags),
      dedicatedHostIds:
          dedicatedHostIds == null ? null : _i2.BuiltList(dedicatedHostIds),
    );
  }

  /// One or more targets associated with the event window.
  factory InstanceEventWindowAssociationTarget.build(
      [void Function(InstanceEventWindowAssociationTargetBuilder)
          updates]) = _$InstanceEventWindowAssociationTarget;

  const InstanceEventWindowAssociationTarget._();

  static const List<_i3.SmithySerializer<InstanceEventWindowAssociationTarget>>
      serializers = [InstanceEventWindowAssociationTargetEc2QuerySerializer()];

  /// The IDs of the instances associated with the event window.
  _i2.BuiltList<String>? get instanceIds;

  /// The instance tags associated with the event window. Any instances associated with the tags will be associated with the event window.
  _i2.BuiltList<Tag>? get tags;

  /// The IDs of the Dedicated Hosts associated with the event window.
  _i2.BuiltList<String>? get dedicatedHostIds;
  @override
  List<Object?> get props => [
        instanceIds,
        tags,
        dedicatedHostIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceEventWindowAssociationTarget')
          ..add(
            'instanceIds',
            instanceIds,
          )
          ..add(
            'tags',
            tags,
          )
          ..add(
            'dedicatedHostIds',
            dedicatedHostIds,
          );
    return helper.toString();
  }
}

class InstanceEventWindowAssociationTargetEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<InstanceEventWindowAssociationTarget> {
  const InstanceEventWindowAssociationTargetEc2QuerySerializer()
      : super('InstanceEventWindowAssociationTarget');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowAssociationTarget,
        _$InstanceEventWindowAssociationTarget,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowAssociationTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowAssociationTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceIdSet':
          result.instanceIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
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
        case 'dedicatedHostIdSet':
          result.dedicatedHostIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceEventWindowAssociationTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceEventWindowAssociationTargetResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceEventWindowAssociationTarget(
      :instanceIds,
      :tags,
      :dedicatedHostIds
    ) = object;
    if (instanceIds != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
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
    if (dedicatedHostIds != null) {
      result$
        ..add(const _i3.XmlElementName('DedicatedHostIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dedicatedHostIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
