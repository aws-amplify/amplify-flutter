// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.object_storage_class; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectStorageClass extends _i1.SmithyEnum<ObjectStorageClass> {
  const ObjectStorageClass._(
    super.index,
    super.name,
    super.value,
  );

  const ObjectStorageClass._sdkUnknown(super.value) : super.sdkUnknown();

  static const deepArchive = ObjectStorageClass._(
    0,
    'DEEP_ARCHIVE',
    'DEEP_ARCHIVE',
  );

  static const expressOnezone = ObjectStorageClass._(
    1,
    'EXPRESS_ONEZONE',
    'EXPRESS_ONEZONE',
  );

  static const glacier = ObjectStorageClass._(
    2,
    'GLACIER',
    'GLACIER',
  );

  static const glacierIr = ObjectStorageClass._(
    3,
    'GLACIER_IR',
    'GLACIER_IR',
  );

  static const intelligentTiering = ObjectStorageClass._(
    4,
    'INTELLIGENT_TIERING',
    'INTELLIGENT_TIERING',
  );

  static const onezoneIa = ObjectStorageClass._(
    5,
    'ONEZONE_IA',
    'ONEZONE_IA',
  );

  static const outposts = ObjectStorageClass._(
    6,
    'OUTPOSTS',
    'OUTPOSTS',
  );

  static const reducedRedundancy = ObjectStorageClass._(
    7,
    'REDUCED_REDUNDANCY',
    'REDUCED_REDUNDANCY',
  );

  static const snow = ObjectStorageClass._(
    8,
    'SNOW',
    'SNOW',
  );

  static const standard = ObjectStorageClass._(
    9,
    'STANDARD',
    'STANDARD',
  );

  static const standardIa = ObjectStorageClass._(
    10,
    'STANDARD_IA',
    'STANDARD_IA',
  );

  /// All values of [ObjectStorageClass].
  static const values = <ObjectStorageClass>[
    ObjectStorageClass.deepArchive,
    ObjectStorageClass.expressOnezone,
    ObjectStorageClass.glacier,
    ObjectStorageClass.glacierIr,
    ObjectStorageClass.intelligentTiering,
    ObjectStorageClass.onezoneIa,
    ObjectStorageClass.outposts,
    ObjectStorageClass.reducedRedundancy,
    ObjectStorageClass.snow,
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
