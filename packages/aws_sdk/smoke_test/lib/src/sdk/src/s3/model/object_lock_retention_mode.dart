// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.object_lock_retention_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectLockRetentionMode extends _i1.SmithyEnum<ObjectLockRetentionMode> {
  const ObjectLockRetentionMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectLockRetentionMode._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const compliance = ObjectLockRetentionMode._(
    0,
    'COMPLIANCE',
    'COMPLIANCE',
  );

  static const governance = ObjectLockRetentionMode._(
    1,
    'GOVERNANCE',
    'GOVERNANCE',
  );

  /// All values of [ObjectLockRetentionMode].
  static const values = <ObjectLockRetentionMode>[
    ObjectLockRetentionMode.compliance,
    ObjectLockRetentionMode.governance,
  ];

  static const List<_i1.SmithySerializer<ObjectLockRetentionMode>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ObjectLockRetentionMode',
      values: values,
      sdkUnknown: ObjectLockRetentionMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectLockRetentionModeHelpers on List<ObjectLockRetentionMode> {
  /// Returns the value of [ObjectLockRetentionMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectLockRetentionMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectLockRetentionMode] whose value matches [value].
  ObjectLockRetentionMode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
