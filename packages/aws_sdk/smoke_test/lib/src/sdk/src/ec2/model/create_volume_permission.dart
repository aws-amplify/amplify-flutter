// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_volume_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart';

part 'create_volume_permission.g.dart';

/// Describes the user or group to be added or removed from the list of create volume permissions for a volume.
abstract class CreateVolumePermission
    with _i1.AWSEquatable<CreateVolumePermission>
    implements Built<CreateVolumePermission, CreateVolumePermissionBuilder> {
  /// Describes the user or group to be added or removed from the list of create volume permissions for a volume.
  factory CreateVolumePermission({
    PermissionGroup? group,
    String? userId,
  }) {
    return _$CreateVolumePermission._(
      group: group,
      userId: userId,
    );
  }

  /// Describes the user or group to be added or removed from the list of create volume permissions for a volume.
  factory CreateVolumePermission.build(
          [void Function(CreateVolumePermissionBuilder) updates]) =
      _$CreateVolumePermission;

  const CreateVolumePermission._();

  static const List<_i2.SmithySerializer<CreateVolumePermission>> serializers =
      [CreateVolumePermissionEc2QuerySerializer()];

  /// The group to be added or removed. The possible value is `all`.
  PermissionGroup? get group;

  /// The ID of the Amazon Web Services account to be added or removed.
  String? get userId;
  @override
  List<Object?> get props => [
        group,
        userId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVolumePermission')
      ..add(
        'group',
        group,
      )
      ..add(
        'userId',
        userId,
      );
    return helper.toString();
  }
}

class CreateVolumePermissionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVolumePermission> {
  const CreateVolumePermissionEc2QuerySerializer()
      : super('CreateVolumePermission');

  @override
  Iterable<Type> get types => const [
        CreateVolumePermission,
        _$CreateVolumePermission,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVolumePermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVolumePermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'group':
          result.group = (serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionGroup),
          ) as PermissionGroup);
        case 'userId':
          result.userId = (serializers.deserialize(
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
    CreateVolumePermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVolumePermissionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVolumePermission(:group, :userId) = object;
    if (group != null) {
      result$
        ..add(const _i2.XmlElementName('Group'))
        ..add(serializers.serialize(
          group,
          specifiedType: const FullType.nullable(PermissionGroup),
        ));
    }
    if (userId != null) {
      result$
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
