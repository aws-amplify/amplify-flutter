// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart';

part 'launch_permission.g.dart';

/// Describes a launch permission.
abstract class LaunchPermission
    with _i1.AWSEquatable<LaunchPermission>
    implements Built<LaunchPermission, LaunchPermissionBuilder> {
  /// Describes a launch permission.
  factory LaunchPermission({
    PermissionGroup? group,
    String? userId,
    String? organizationArn,
    String? organizationalUnitArn,
  }) {
    return _$LaunchPermission._(
      group: group,
      userId: userId,
      organizationArn: organizationArn,
      organizationalUnitArn: organizationalUnitArn,
    );
  }

  /// Describes a launch permission.
  factory LaunchPermission.build(
      [void Function(LaunchPermissionBuilder) updates]) = _$LaunchPermission;

  const LaunchPermission._();

  static const List<_i2.SmithySerializer<LaunchPermission>> serializers = [
    LaunchPermissionEc2QuerySerializer()
  ];

  /// The name of the group.
  PermissionGroup? get group;

  /// The Amazon Web Services account ID.
  ///
  /// Constraints: Up to 10 000 account IDs can be specified in a single request.
  String? get userId;

  /// The Amazon Resource Name (ARN) of an organization.
  String? get organizationArn;

  /// The Amazon Resource Name (ARN) of an organizational unit (OU).
  String? get organizationalUnitArn;
  @override
  List<Object?> get props => [
        group,
        userId,
        organizationArn,
        organizationalUnitArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchPermission')
      ..add(
        'group',
        group,
      )
      ..add(
        'userId',
        userId,
      )
      ..add(
        'organizationArn',
        organizationArn,
      )
      ..add(
        'organizationalUnitArn',
        organizationalUnitArn,
      );
    return helper.toString();
  }
}

class LaunchPermissionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchPermission> {
  const LaunchPermissionEc2QuerySerializer() : super('LaunchPermission');

  @override
  Iterable<Type> get types => const [
        LaunchPermission,
        _$LaunchPermission,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchPermissionBuilder();
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
        case 'organizationArn':
          result.organizationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'organizationalUnitArn':
          result.organizationalUnitArn = (serializers.deserialize(
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
    LaunchPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchPermissionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchPermission(
      :group,
      :userId,
      :organizationArn,
      :organizationalUnitArn
    ) = object;
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
    if (organizationArn != null) {
      result$
        ..add(const _i2.XmlElementName('OrganizationArn'))
        ..add(serializers.serialize(
          organizationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (organizationalUnitArn != null) {
      result$
        ..add(const _i2.XmlElementName('OrganizationalUnitArn'))
        ..add(serializers.serialize(
          organizationalUnitArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
