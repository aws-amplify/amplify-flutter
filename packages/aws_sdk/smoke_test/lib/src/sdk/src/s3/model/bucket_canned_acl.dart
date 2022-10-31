// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.bucket_canned_acl; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BucketCannedAcl extends _i1.SmithyEnum<BucketCannedAcl> {
  const BucketCannedAcl._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BucketCannedAcl._sdkUnknown(String value) : super.sdkUnknown(value);

  static const authenticatedRead = BucketCannedAcl._(
    0,
    'authenticated_read',
    'authenticated-read',
  );

  static const private = BucketCannedAcl._(
    1,
    'private',
    'private',
  );

  static const publicRead = BucketCannedAcl._(
    2,
    'public_read',
    'public-read',
  );

  static const publicReadWrite = BucketCannedAcl._(
    3,
    'public_read_write',
    'public-read-write',
  );

  /// All values of [BucketCannedAcl].
  static const values = <BucketCannedAcl>[
    BucketCannedAcl.authenticatedRead,
    BucketCannedAcl.private,
    BucketCannedAcl.publicRead,
    BucketCannedAcl.publicReadWrite,
  ];

  static const List<_i1.SmithySerializer<BucketCannedAcl>> serializers = [
    _i1.SmithyEnumSerializer(
      'BucketCannedACL',
      values: values,
      sdkUnknown: BucketCannedAcl._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension BucketCannedAclHelpers on List<BucketCannedAcl> {
  /// Returns the value of [BucketCannedAcl] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BucketCannedAcl byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BucketCannedAcl] whose value matches [value].
  BucketCannedAcl byValue(String value) =>
      firstWhere((el) => el.value == value);
}
