// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_virtual_interface_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'local_gateway_virtual_interface_group.g.dart';

/// Describes a local gateway virtual interface group.
abstract class LocalGatewayVirtualInterfaceGroup
    with
        _i1.AWSEquatable<LocalGatewayVirtualInterfaceGroup>
    implements
        Built<LocalGatewayVirtualInterfaceGroup,
            LocalGatewayVirtualInterfaceGroupBuilder> {
  /// Describes a local gateway virtual interface group.
  factory LocalGatewayVirtualInterfaceGroup({
    String? localGatewayVirtualInterfaceGroupId,
    List<String>? localGatewayVirtualInterfaceIds,
    String? localGatewayId,
    String? ownerId,
    List<Tag>? tags,
  }) {
    return _$LocalGatewayVirtualInterfaceGroup._(
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      localGatewayVirtualInterfaceIds: localGatewayVirtualInterfaceIds == null
          ? null
          : _i2.BuiltList(localGatewayVirtualInterfaceIds),
      localGatewayId: localGatewayId,
      ownerId: ownerId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a local gateway virtual interface group.
  factory LocalGatewayVirtualInterfaceGroup.build(
          [void Function(LocalGatewayVirtualInterfaceGroupBuilder) updates]) =
      _$LocalGatewayVirtualInterfaceGroup;

  const LocalGatewayVirtualInterfaceGroup._();

  static const List<_i3.SmithySerializer<LocalGatewayVirtualInterfaceGroup>>
      serializers = [LocalGatewayVirtualInterfaceGroupEc2QuerySerializer()];

  /// The ID of the virtual interface group.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The IDs of the virtual interfaces.
  _i2.BuiltList<String>? get localGatewayVirtualInterfaceIds;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the Amazon Web Services account that owns the local gateway virtual interface group.
  String? get ownerId;

  /// The tags assigned to the virtual interface group.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceGroupId,
        localGatewayVirtualInterfaceIds,
        localGatewayId,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LocalGatewayVirtualInterfaceGroup')
          ..add(
            'localGatewayVirtualInterfaceGroupId',
            localGatewayVirtualInterfaceGroupId,
          )
          ..add(
            'localGatewayVirtualInterfaceIds',
            localGatewayVirtualInterfaceIds,
          )
          ..add(
            'localGatewayId',
            localGatewayId,
          )
          ..add(
            'ownerId',
            ownerId,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class LocalGatewayVirtualInterfaceGroupEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LocalGatewayVirtualInterfaceGroup> {
  const LocalGatewayVirtualInterfaceGroupEc2QuerySerializer()
      : super('LocalGatewayVirtualInterfaceGroup');

  @override
  Iterable<Type> get types => const [
        LocalGatewayVirtualInterfaceGroup,
        _$LocalGatewayVirtualInterfaceGroup,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayVirtualInterfaceGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayVirtualInterfaceGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayVirtualInterfaceGroupId':
          result.localGatewayVirtualInterfaceGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayVirtualInterfaceIdSet':
          result.localGatewayVirtualInterfaceIds
              .replace((const _i3.XmlBuiltListSerializer(
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
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalGatewayVirtualInterfaceGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LocalGatewayVirtualInterfaceGroupResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGatewayVirtualInterfaceGroup(
      :localGatewayVirtualInterfaceGroupId,
      :localGatewayVirtualInterfaceIds,
      :localGatewayId,
      :ownerId,
      :tags
    ) = object;
    if (localGatewayVirtualInterfaceGroupId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          localGatewayVirtualInterfaceGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayVirtualInterfaceIds != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayVirtualInterfaceIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayVirtualInterfaceIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
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
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
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
    return result$;
  }
}
