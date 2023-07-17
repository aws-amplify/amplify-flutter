// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.object_canned_acl; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectCannedAcl extends _i1.SmithyEnum<ObjectCannedAcl> {
  const ObjectCannedAcl._(
    super.index,
    super.name,
    super.value,
  );

  const ObjectCannedAcl._sdkUnknown(super.value) : super.sdkUnknown();

  static const authenticatedRead = ObjectCannedAcl._(
    0,
    'authenticated_read',
    'authenticated-read',
  );

  static const awsExecRead = ObjectCannedAcl._(
    1,
    'aws_exec_read',
    'aws-exec-read',
  );

  static const bucketOwnerFullControl = ObjectCannedAcl._(
    2,
    'bucket_owner_full_control',
    'bucket-owner-full-control',
  );

  static const bucketOwnerRead = ObjectCannedAcl._(
    3,
    'bucket_owner_read',
    'bucket-owner-read',
  );

  static const private = ObjectCannedAcl._(
    4,
    'private',
    'private',
  );

  static const publicRead = ObjectCannedAcl._(
    5,
    'public_read',
    'public-read',
  );

  static const publicReadWrite = ObjectCannedAcl._(
    6,
    'public_read_write',
    'public-read-write',
  );

  /// All values of [ObjectCannedAcl].
  static const values = <ObjectCannedAcl>[
    ObjectCannedAcl.authenticatedRead,
    ObjectCannedAcl.awsExecRead,
    ObjectCannedAcl.bucketOwnerFullControl,
    ObjectCannedAcl.bucketOwnerRead,
    ObjectCannedAcl.private,
    ObjectCannedAcl.publicRead,
    ObjectCannedAcl.publicReadWrite,
  ];

  static const List<_i1.SmithySerializer<ObjectCannedAcl>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectCannedACL',
      values: values,
      sdkUnknown: ObjectCannedAcl._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectCannedAclHelpers on List<ObjectCannedAcl> {
  /// Returns the value of [ObjectCannedAcl] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectCannedAcl byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectCannedAcl] whose value matches [value].
  ObjectCannedAcl byValue(String value) =>
      firstWhere((el) => el.value == value);
}
