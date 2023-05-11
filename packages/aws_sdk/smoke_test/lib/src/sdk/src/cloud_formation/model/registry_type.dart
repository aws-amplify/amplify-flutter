// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.registry_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RegistryType extends _i1.SmithyEnum<RegistryType> {
  const RegistryType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RegistryType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const hook = RegistryType._(
    0,
    'HOOK',
    'HOOK',
  );

  static const module = RegistryType._(
    1,
    'MODULE',
    'MODULE',
  );

  static const resource = RegistryType._(
    2,
    'RESOURCE',
    'RESOURCE',
  );

  /// All values of [RegistryType].
  static const values = <RegistryType>[
    RegistryType.hook,
    RegistryType.module,
    RegistryType.resource,
  ];

  static const List<_i1.SmithySerializer<RegistryType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RegistryType',
      values: values,
      sdkUnknown: RegistryType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension RegistryTypeHelpers on List<RegistryType> {
  /// Returns the value of [RegistryType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RegistryType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RegistryType] whose value matches [value].
  RegistryType byValue(String value) => firstWhere((el) => el.value == value);
}
