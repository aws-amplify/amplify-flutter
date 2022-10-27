// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.object_ownership; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// The container element for object ownership for a bucket's ownership controls.
///
/// BucketOwnerPreferred - Objects uploaded to the bucket change ownership to the bucket owner if the objects are uploaded with the `bucket-owner-full-control` canned ACL.
///
/// ObjectWriter - The uploading account will own the object if the object is uploaded with the `bucket-owner-full-control` canned ACL.
///
/// BucketOwnerEnforced - Access control lists (ACLs) are disabled and no longer affect permissions. The bucket owner automatically owns and has full control over every object in the bucket. The bucket only accepts PUT requests that don't specify an ACL or bucket owner full control ACLs, such as the `bucket-owner-full-control` canned ACL or an equivalent form of this ACL expressed in the XML format.
class ObjectOwnership extends _i1.SmithyEnum<ObjectOwnership> {
  const ObjectOwnership._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectOwnership._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bucketOwnerEnforced = ObjectOwnership._(
    0,
    'BucketOwnerEnforced',
    'BucketOwnerEnforced',
  );

  static const bucketOwnerPreferred = ObjectOwnership._(
    1,
    'BucketOwnerPreferred',
    'BucketOwnerPreferred',
  );

  static const objectWriter = ObjectOwnership._(
    2,
    'ObjectWriter',
    'ObjectWriter',
  );

  /// All values of [ObjectOwnership].
  static const values = <ObjectOwnership>[
    ObjectOwnership.bucketOwnerEnforced,
    ObjectOwnership.bucketOwnerPreferred,
    ObjectOwnership.objectWriter,
  ];

  static const List<_i1.SmithySerializer<ObjectOwnership>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectOwnership',
      values: values,
      sdkUnknown: ObjectOwnership._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectOwnershipHelpers on List<ObjectOwnership> {
  /// Returns the value of [ObjectOwnership] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectOwnership byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectOwnership] whose value matches [value].
  ObjectOwnership byValue(String value) =>
      firstWhere((el) => el.value == value);
}
