// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.classic_link_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'classic_link_instance.g.dart';

/// Deprecated.
///
/// Describes a linked EC2-Classic instance.
abstract class ClassicLinkInstance
    with _i1.AWSEquatable<ClassicLinkInstance>
    implements Built<ClassicLinkInstance, ClassicLinkInstanceBuilder> {
  /// Deprecated.
  ///
  /// Describes a linked EC2-Classic instance.
  factory ClassicLinkInstance({
    List<GroupIdentifier>? groups,
    String? instanceId,
    List<Tag>? tags,
    String? vpcId,
  }) {
    return _$ClassicLinkInstance._(
      groups: groups == null ? null : _i2.BuiltList(groups),
      instanceId: instanceId,
      tags: tags == null ? null : _i2.BuiltList(tags),
      vpcId: vpcId,
    );
  }

  /// Deprecated.
  ///
  /// Describes a linked EC2-Classic instance.
  factory ClassicLinkInstance.build(
          [void Function(ClassicLinkInstanceBuilder) updates]) =
      _$ClassicLinkInstance;

  const ClassicLinkInstance._();

  static const List<_i3.SmithySerializer<ClassicLinkInstance>> serializers = [
    ClassicLinkInstanceEc2QuerySerializer()
  ];

  /// The security groups.
  _i2.BuiltList<GroupIdentifier>? get groups;

  /// The ID of the instance.
  String? get instanceId;

  /// Any tags assigned to the instance.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        groups,
        instanceId,
        tags,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClassicLinkInstance')
      ..add(
        'groups',
        groups,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class ClassicLinkInstanceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClassicLinkInstance> {
  const ClassicLinkInstanceEc2QuerySerializer() : super('ClassicLinkInstance');

  @override
  Iterable<Type> get types => const [
        ClassicLinkInstance,
        _$ClassicLinkInstance,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClassicLinkInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassicLinkInstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupSet':
          result.groups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GroupIdentifier)],
            ),
          ) as _i2.BuiltList<GroupIdentifier>));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
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
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    ClassicLinkInstance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ClassicLinkInstanceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClassicLinkInstance(:groups, :instanceId, :tags, :vpcId) = object;
    if (groups != null) {
      result$
        ..add(const _i3.XmlElementName('GroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(GroupIdentifier)],
          ),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
