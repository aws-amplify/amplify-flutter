// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.object_lock_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectLockMode extends _i1.SmithyEnum<ObjectLockMode> {
  const ObjectLockMode._(
    super.index,
    super.name,
    super.value,
  );

  const ObjectLockMode._sdkUnknown(super.value) : super.sdkUnknown();

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
