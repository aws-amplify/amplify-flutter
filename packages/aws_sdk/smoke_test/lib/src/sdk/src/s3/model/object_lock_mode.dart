// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.object_lock_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectLockMode extends _i1.SmithyEnum<ObjectLockMode> {
  const ObjectLockMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ObjectLockMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const compliance = ObjectLockMode._(
    0,
    'COMPLIANCE',
    'COMPLIANCE',
  );

  static const governance = ObjectLockMode._(
    1,
    'GOVERNANCE',
    'GOVERNANCE',
  );

  /// All values of [ObjectLockMode].
  static const values = <ObjectLockMode>[
    ObjectLockMode.compliance,
    ObjectLockMode.governance,
  ];

  static const List<_i1.SmithySerializer<ObjectLockMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectLockMode',
      values: values,
      sdkUnknown: ObjectLockMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ObjectLockModeHelpers on List<ObjectLockMode> {
  /// Returns the value of [ObjectLockMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectLockMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectLockMode] whose value matches [value].
  ObjectLockMode byValue(String value) => firstWhere((el) => el.value == value);
}
