// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.object_attributes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectAttributes extends _i1.SmithyEnum<ObjectAttributes> {
  const ObjectAttributes._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectAttributes._sdkUnknown(String value) : super.sdkUnknown(value);

  static const checksum = ObjectAttributes._(
    0,
    'CHECKSUM',
    'Checksum',
  );

  static const etag = ObjectAttributes._(
    1,
    'ETAG',
    'ETag',
  );

  static const objectParts = ObjectAttributes._(
    2,
    'OBJECT_PARTS',
    'ObjectParts',
  );

  static const objectSize = ObjectAttributes._(
    3,
    'OBJECT_SIZE',
    'ObjectSize',
  );

  static const storageClass = ObjectAttributes._(
    4,
    'STORAGE_CLASS',
    'StorageClass',
  );

  /// All values of [ObjectAttributes].
  static const values = <ObjectAttributes>[
    ObjectAttributes.checksum,
    ObjectAttributes.etag,
    ObjectAttributes.objectParts,
    ObjectAttributes.objectSize,
    ObjectAttributes.storageClass,
  ];

  static const List<_i1.SmithySerializer<ObjectAttributes>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectAttributes',
      values: values,
      sdkUnknown: ObjectAttributes._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectAttributesHelpers on List<ObjectAttributes> {
  /// Returns the value of [ObjectAttributes] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectAttributes byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectAttributes] whose value matches [value].
  ObjectAttributes byValue(String value) =>
      firstWhere((el) => el.value == value);
}
