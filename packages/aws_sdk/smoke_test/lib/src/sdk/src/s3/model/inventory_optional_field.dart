// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.inventory_optional_field; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InventoryOptionalField extends _i1.SmithyEnum<InventoryOptionalField> {
  const InventoryOptionalField._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InventoryOptionalField._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const bucketKeyStatus = InventoryOptionalField._(
    0,
    'BucketKeyStatus',
    'BucketKeyStatus',
  );

  static const checksumAlgorithm = InventoryOptionalField._(
    1,
    'ChecksumAlgorithm',
    'ChecksumAlgorithm',
  );

  static const eTag = InventoryOptionalField._(
    2,
    'ETag',
    'ETag',
  );

  static const encryptionStatus = InventoryOptionalField._(
    3,
    'EncryptionStatus',
    'EncryptionStatus',
  );

  static const intelligentTieringAccessTier = InventoryOptionalField._(
    4,
    'IntelligentTieringAccessTier',
    'IntelligentTieringAccessTier',
  );

  static const isMultipartUploaded = InventoryOptionalField._(
    5,
    'IsMultipartUploaded',
    'IsMultipartUploaded',
  );

  static const lastModifiedDate = InventoryOptionalField._(
    6,
    'LastModifiedDate',
    'LastModifiedDate',
  );

  static const objectLockLegalHoldStatus = InventoryOptionalField._(
    7,
    'ObjectLockLegalHoldStatus',
    'ObjectLockLegalHoldStatus',
  );

  static const objectLockMode = InventoryOptionalField._(
    8,
    'ObjectLockMode',
    'ObjectLockMode',
  );

  static const objectLockRetainUntilDate = InventoryOptionalField._(
    9,
    'ObjectLockRetainUntilDate',
    'ObjectLockRetainUntilDate',
  );

  static const replicationStatus = InventoryOptionalField._(
    10,
    'ReplicationStatus',
    'ReplicationStatus',
  );

  static const size = InventoryOptionalField._(
    11,
    'Size',
    'Size',
  );

  static const storageClass = InventoryOptionalField._(
    12,
    'StorageClass',
    'StorageClass',
  );

  /// All values of [InventoryOptionalField].
  static const values = <InventoryOptionalField>[
    InventoryOptionalField.bucketKeyStatus,
    InventoryOptionalField.checksumAlgorithm,
    InventoryOptionalField.eTag,
    InventoryOptionalField.encryptionStatus,
    InventoryOptionalField.intelligentTieringAccessTier,
    InventoryOptionalField.isMultipartUploaded,
    InventoryOptionalField.lastModifiedDate,
    InventoryOptionalField.objectLockLegalHoldStatus,
    InventoryOptionalField.objectLockMode,
    InventoryOptionalField.objectLockRetainUntilDate,
    InventoryOptionalField.replicationStatus,
    InventoryOptionalField.size,
    InventoryOptionalField.storageClass,
  ];

  static const List<_i1.SmithySerializer<InventoryOptionalField>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'InventoryOptionalField',
      values: values,
      sdkUnknown: InventoryOptionalField._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension InventoryOptionalFieldHelpers on List<InventoryOptionalField> {
  /// Returns the value of [InventoryOptionalField] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InventoryOptionalField byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InventoryOptionalField] whose value matches [value].
  InventoryOptionalField byValue(String value) =>
      firstWhere((el) => el.value == value);
}
