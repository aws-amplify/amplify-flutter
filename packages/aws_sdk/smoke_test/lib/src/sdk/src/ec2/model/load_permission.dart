// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.load_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart';

part 'load_permission.g.dart';

/// Describes a load permission.
abstract class LoadPermission
    with _i1.AWSEquatable<LoadPermission>
    implements Built<LoadPermission, LoadPermissionBuilder> {
  /// Describes a load permission.
  factory LoadPermission({
    String? userId,
    PermissionGroup? group,
  }) {
    return _$LoadPermission._(
      userId: userId,
      group: group,
    );
  }

  /// Describes a load permission.
  factory LoadPermission.build([void Function(LoadPermissionBuilder) updates]) =
      _$LoadPermission;

  const LoadPermission._();

  static const List<_i2.SmithySerializer<LoadPermission>> serializers = [
    LoadPermissionEc2QuerySerializer()
  ];

  /// The Amazon Web Services account ID.
  String? get userId;

  /// The name of the group.
  PermissionGroup? get group;
  @override
  List<Object?> get props => [
        userId,
        group,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadPermission')
      ..add(
        'userId',
        userId,
      )
      ..add(
        'group',
        group,
      );
    return helper.toString();
  }
}

class LoadPermissionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LoadPermission> {
  const LoadPermissionEc2QuerySerializer() : super('LoadPermission');

  @override
  Iterable<Type> get types => const [
        LoadPermission,
        _$LoadPermission,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadPermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'userId':
          result.userId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'group':
          result.group = (serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionGroup),
          ) as PermissionGroup);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LoadPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LoadPermissionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LoadPermission(:userId, :group) = object;
    if (userId != null) {
      result$
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    if (group != null) {
      result$
        ..add(const _i2.XmlElementName('Group'))
        ..add(serializers.serialize(
          group,
          specifiedType: const FullType(PermissionGroup),
        ));
    }
    return result$;
  }
}
