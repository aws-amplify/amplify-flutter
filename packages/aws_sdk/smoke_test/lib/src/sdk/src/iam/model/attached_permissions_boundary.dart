// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.attached_permissions_boundary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/permissions_boundary_attachment_type.dart';

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
    PermissionsBoundaryAttachmentType? permissionsBoundaryType,
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

  static const List<_i2.SmithySerializer<AttachedPermissionsBoundary>>
      serializers = [AttachedPermissionsBoundaryAwsQuerySerializer()];

  /// The permissions boundary usage type that indicates what type of IAM resource is used as the permissions boundary for an entity. This data type can only have a value of `Policy`.
  PermissionsBoundaryAttachmentType? get permissionsBoundaryType;

  /// The ARN of the policy used to set the permissions boundary for the user or role.
  String? get permissionsBoundaryArn;
  @override
  List<Object?> get props => [
        permissionsBoundaryType,
        permissionsBoundaryArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachedPermissionsBoundary')
      ..add(
        'permissionsBoundaryType',
        permissionsBoundaryType,
      )
      ..add(
        'permissionsBoundaryArn',
        permissionsBoundaryArn,
      );
    return helper.toString();
  }
}

class AttachedPermissionsBoundaryAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AttachedPermissionsBoundary> {
  const AttachedPermissionsBoundaryAwsQuerySerializer()
      : super('AttachedPermissionsBoundary');

  @override
  Iterable<Type> get types => const [
        AttachedPermissionsBoundary,
        _$AttachedPermissionsBoundary,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PermissionsBoundaryType':
          result.permissionsBoundaryType = (serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionsBoundaryAttachmentType),
          ) as PermissionsBoundaryAttachmentType);
        case 'PermissionsBoundaryArn':
          result.permissionsBoundaryArn = (serializers.deserialize(
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
    AttachedPermissionsBoundary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AttachedPermissionsBoundaryResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AttachedPermissionsBoundary(
      :permissionsBoundaryType,
      :permissionsBoundaryArn
    ) = object;
    if (permissionsBoundaryType != null) {
      result$
        ..add(const _i2.XmlElementName('PermissionsBoundaryType'))
        ..add(serializers.serialize(
          permissionsBoundaryType,
          specifiedType: const FullType(PermissionsBoundaryAttachmentType),
        ));
    }
    if (permissionsBoundaryArn != null) {
      result$
        ..add(const _i2.XmlElementName('PermissionsBoundaryArn'))
        ..add(serializers.serialize(
          permissionsBoundaryArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
