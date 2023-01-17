// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Permission extends _i1.SmithyEnum<Permission> {
  const Permission._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Permission._sdkUnknown(String value) : super.sdkUnknown(value);

  static const fullControl = Permission._(
    0,
    'FULL_CONTROL',
    'FULL_CONTROL',
  );

  static const read = Permission._(
    1,
    'READ',
    'READ',
  );

  static const readAcp = Permission._(
    2,
    'READ_ACP',
    'READ_ACP',
  );

  static const write = Permission._(
    3,
    'WRITE',
    'WRITE',
  );

  static const writeAcp = Permission._(
    4,
    'WRITE_ACP',
    'WRITE_ACP',
  );

  /// All values of [Permission].
  static const values = <Permission>[
    Permission.fullControl,
    Permission.read,
    Permission.readAcp,
    Permission.write,
    Permission.writeAcp,
  ];

  static const List<_i1.SmithySerializer<Permission>> serializers = [
    _i1.SmithyEnumSerializer(
      'Permission',
      values: values,
      sdkUnknown: Permission._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension PermissionHelpers on List<Permission> {
  /// Returns the value of [Permission] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Permission byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Permission] whose value matches [value].
  Permission byValue(String value) => firstWhere((el) => el.value == value);
}
