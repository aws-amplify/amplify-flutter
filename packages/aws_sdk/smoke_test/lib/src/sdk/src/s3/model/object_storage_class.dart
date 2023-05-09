// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.object_storage_class; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectStorageClass extends _i1.SmithyEnum<ObjectStorageClass> {
  const ObjectStorageClass._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectStorageClass._sdkUnknown(String value) : super.sdkUnknown(value);

  static const deepArchive = ObjectStorageClass._(
    0,
    'DEEP_ARCHIVE',
    'DEEP_ARCHIVE',
  );

  static const glacier = ObjectStorageClass._(
    1,
    'GLACIER',
    'GLACIER',
  );

  static const glacierIr = ObjectStorageClass._(
    2,
    'GLACIER_IR',
    'GLACIER_IR',
  );

  static const intelligentTiering = ObjectStorageClass._(
    3,
    'INTELLIGENT_TIERING',
    'INTELLIGENT_TIERING',
  );

  static const onezoneIa = ObjectStorageClass._(
    4,
    'ONEZONE_IA',
    'ONEZONE_IA',
  );

  static const outposts = ObjectStorageClass._(
    5,
    'OUTPOSTS',
    'OUTPOSTS',
  );

  static const reducedRedundancy = ObjectStorageClass._(
    6,
    'REDUCED_REDUNDANCY',
    'REDUCED_REDUNDANCY',
  );

  static const standard = ObjectStorageClass._(
    7,
    'STANDARD',
    'STANDARD',
  );

  static const standardIa = ObjectStorageClass._(
    8,
    'STANDARD_IA',
    'STANDARD_IA',
  );

  /// All values of [ObjectStorageClass].
  static const values = <ObjectStorageClass>[
    ObjectStorageClass.deepArchive,
    ObjectStorageClass.glacier,
    ObjectStorageClass.glacierIr,
    ObjectStorageClass.intelligentTiering,
    ObjectStorageClass.onezoneIa,
    ObjectStorageClass.outposts,
    ObjectStorageClass.reducedRedundancy,
    ObjectStorageClass.standard,
    ObjectStorageClass.standardIa,
  ];

  static const List<_i1.SmithySerializer<ObjectStorageClass>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectStorageClass',
      values: values,
      sdkUnknown: ObjectStorageClass._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectStorageClassHelpers on List<ObjectStorageClass> {
  /// Returns the value of [ObjectStorageClass] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectStorageClass byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectStorageClass] whose value matches [value].
  ObjectStorageClass byValue(String value) =>
      firstWhere((el) => el.value == value);
}
