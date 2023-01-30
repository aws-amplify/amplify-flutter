// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.transition_storage_class; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitionStorageClass extends _i1.SmithyEnum<TransitionStorageClass> {
  const TransitionStorageClass._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TransitionStorageClass._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const deepArchive = TransitionStorageClass._(
    0,
    'DEEP_ARCHIVE',
    'DEEP_ARCHIVE',
  );

  static const glacier = TransitionStorageClass._(
    1,
    'GLACIER',
    'GLACIER',
  );

  static const glacierIr = TransitionStorageClass._(
    2,
    'GLACIER_IR',
    'GLACIER_IR',
  );

  static const intelligentTiering = TransitionStorageClass._(
    3,
    'INTELLIGENT_TIERING',
    'INTELLIGENT_TIERING',
  );

  static const onezoneIa = TransitionStorageClass._(
    4,
    'ONEZONE_IA',
    'ONEZONE_IA',
  );

  static const standardIa = TransitionStorageClass._(
    5,
    'STANDARD_IA',
    'STANDARD_IA',
  );

  /// All values of [TransitionStorageClass].
  static const values = <TransitionStorageClass>[
    TransitionStorageClass.deepArchive,
    TransitionStorageClass.glacier,
    TransitionStorageClass.glacierIr,
    TransitionStorageClass.intelligentTiering,
    TransitionStorageClass.onezoneIa,
    TransitionStorageClass.standardIa,
  ];

  static const List<_i1.SmithySerializer<TransitionStorageClass>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'TransitionStorageClass',
      values: values,
      sdkUnknown: TransitionStorageClass._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension TransitionStorageClassHelpers on List<TransitionStorageClass> {
  /// Returns the value of [TransitionStorageClass] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitionStorageClass byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitionStorageClass] whose value matches [value].
  TransitionStorageClass byValue(String value) =>
      firstWhere((el) => el.value == value);
}
