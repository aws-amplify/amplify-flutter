// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.object_version_storage_class; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectVersionStorageClass
    extends _i1.SmithyEnum<ObjectVersionStorageClass> {
  const ObjectVersionStorageClass._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectVersionStorageClass._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const standard = ObjectVersionStorageClass._(
    0,
    'STANDARD',
    'STANDARD',
  );

  /// All values of [ObjectVersionStorageClass].
  static const values = <ObjectVersionStorageClass>[
    ObjectVersionStorageClass.standard
  ];

  static const List<_i1.SmithySerializer<ObjectVersionStorageClass>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectVersionStorageClass',
      values: values,
      sdkUnknown: ObjectVersionStorageClass._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectVersionStorageClassHelpers on List<ObjectVersionStorageClass> {
  /// Returns the value of [ObjectVersionStorageClass] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectVersionStorageClass byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectVersionStorageClass] whose value matches [value].
  ObjectVersionStorageClass byValue(String value) =>
      firstWhere((el) => el.value == value);
}
