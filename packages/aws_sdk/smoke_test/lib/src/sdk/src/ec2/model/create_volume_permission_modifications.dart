// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_volume_permission_modifications; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission.dart';

part 'create_volume_permission_modifications.g.dart';

/// Describes modifications to the list of create volume permissions for a volume.
abstract class CreateVolumePermissionModifications
    with
        _i1.AWSEquatable<CreateVolumePermissionModifications>
    implements
        Built<CreateVolumePermissionModifications,
            CreateVolumePermissionModificationsBuilder> {
  /// Describes modifications to the list of create volume permissions for a volume.
  factory CreateVolumePermissionModifications({
    List<CreateVolumePermission>? add,
    List<CreateVolumePermission>? remove,
  }) {
    return _$CreateVolumePermissionModifications._(
      add: add == null ? null : _i2.BuiltList(add),
      remove: remove == null ? null : _i2.BuiltList(remove),
    );
  }

  /// Describes modifications to the list of create volume permissions for a volume.
  factory CreateVolumePermissionModifications.build(
          [void Function(CreateVolumePermissionModificationsBuilder) updates]) =
      _$CreateVolumePermissionModifications;

  const CreateVolumePermissionModifications._();

  static const List<_i3.SmithySerializer<CreateVolumePermissionModifications>>
      serializers = [CreateVolumePermissionModificationsEc2QuerySerializer()];

  /// Adds the specified Amazon Web Services account ID or group to the list.
  _i2.BuiltList<CreateVolumePermission>? get add;

  /// Removes the specified Amazon Web Services account ID or group from the list.
  _i2.BuiltList<CreateVolumePermission>? get remove;
  @override
  List<Object?> get props => [
        add,
        remove,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVolumePermissionModifications')
          ..add(
            'add',
            add,
          )
          ..add(
            'remove',
            remove,
          );
    return helper.toString();
  }
}

class CreateVolumePermissionModificationsEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateVolumePermissionModifications> {
  const CreateVolumePermissionModificationsEc2QuerySerializer()
      : super('CreateVolumePermissionModifications');

  @override
  Iterable<Type> get types => const [
        CreateVolumePermissionModifications,
        _$CreateVolumePermissionModifications,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVolumePermissionModifications deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVolumePermissionModificationsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Add':
          result.add.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CreateVolumePermission)],
            ),
          ) as _i2.BuiltList<CreateVolumePermission>));
        case 'Remove':
          result.remove.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CreateVolumePermission)],
            ),
          ) as _i2.BuiltList<CreateVolumePermission>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVolumePermissionModifications object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateVolumePermissionModificationsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVolumePermissionModifications(:add, :remove) = object;
    if (add != null) {
      result$
        ..add(const _i3.XmlElementName('Add'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          add,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CreateVolumePermission)],
          ),
        ));
    }
    if (remove != null) {
      result$
        ..add(const _i3.XmlElementName('Remove'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          remove,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CreateVolumePermission)],
          ),
        ));
    }
    return result$;
  }
}
