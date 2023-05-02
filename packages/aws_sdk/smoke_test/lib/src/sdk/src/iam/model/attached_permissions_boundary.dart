// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.attached_permissions_boundary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_attachment_type.dart'
    as _i2;

part 'attached_permissions_boundary.g.dart';

/// Contains information about an attached permissions boundary.
///
/// An attached permissions boundary is a managed policy that has been attached to a user or role to set the permissions boundary.
///
/// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
abstract class AttachedPermissionsBoundary
    with _i1.AWSEquatable<AttachedPermissionsBoundary>
    implements
        Built<AttachedPermissionsBoundary, AttachedPermissionsBoundaryBuilder> {
  /// Contains information about an attached permissions boundary.
  ///
  /// An attached permissions boundary is a managed policy that has been attached to a user or role to set the permissions boundary.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  factory AttachedPermissionsBoundary({
    _i2.PermissionsBoundaryAttachmentType? permissionsBoundaryType,
    String? permissionsBoundaryArn,
  }) {
    return _$AttachedPermissionsBoundary._(
      permissionsBoundaryType: permissionsBoundaryType,
      permissionsBoundaryArn: permissionsBoundaryArn,
    );
  }

  /// Contains information about an attached permissions boundary.
  ///
  /// An attached permissions boundary is a managed policy that has been attached to a user or role to set the permissions boundary.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  factory AttachedPermissionsBoundary.build(
          [void Function(AttachedPermissionsBoundaryBuilder) updates]) =
      _$AttachedPermissionsBoundary;

  const AttachedPermissionsBoundary._();

  static const List<_i3.SmithySerializer> serializers = [
    AttachedPermissionsBoundaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachedPermissionsBoundaryBuilder b) {}

  /// The permissions boundary usage type that indicates what type of IAM resource is used as the permissions boundary for an entity. This data type can only have a value of `Policy`.
  _i2.PermissionsBoundaryAttachmentType? get permissionsBoundaryType;

  /// The ARN of the policy used to set the permissions boundary for the user or role.
  String? get permissionsBoundaryArn;
  @override
  List<Object?> get props => [
        permissionsBoundaryType,
        permissionsBoundaryArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachedPermissionsBoundary');
    helper.add(
      'permissionsBoundaryType',
      permissionsBoundaryType,
    );
    helper.add(
      'permissionsBoundaryArn',
      permissionsBoundaryArn,
    );
    return helper.toString();
  }
}

class AttachedPermissionsBoundaryAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<AttachedPermissionsBoundary> {
  const AttachedPermissionsBoundaryAwsQuerySerializer()
      : super('AttachedPermissionsBoundary');

  @override
  Iterable<Type> get types => const [
        AttachedPermissionsBoundary,
        _$AttachedPermissionsBoundary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AttachedPermissionsBoundary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachedPermissionsBoundaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PermissionsBoundaryType':
          if (value != null) {
            result.permissionsBoundaryType = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.PermissionsBoundaryAttachmentType),
            ) as _i2.PermissionsBoundaryAttachmentType);
          }
          break;
        case 'PermissionsBoundaryArn':
          if (value != null) {
            result.permissionsBoundaryArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as AttachedPermissionsBoundary);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AttachedPermissionsBoundaryResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.permissionsBoundaryType != null) {
      result
        ..add(const _i3.XmlElementName('PermissionsBoundaryType'))
        ..add(serializers.serialize(
          payload.permissionsBoundaryType!,
          specifiedType:
              const FullType.nullable(_i2.PermissionsBoundaryAttachmentType),
        ));
    }
    if (payload.permissionsBoundaryArn != null) {
      result
        ..add(const _i3.XmlElementName('PermissionsBoundaryArn'))
        ..add(serializers.serialize(
          payload.permissionsBoundaryArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
