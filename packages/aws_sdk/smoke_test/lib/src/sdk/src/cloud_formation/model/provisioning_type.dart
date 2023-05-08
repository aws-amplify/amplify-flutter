// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.provisioning_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ProvisioningType extends _i1.SmithyEnum<ProvisioningType> {
  const ProvisioningType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ProvisioningType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const fullyMutable = ProvisioningType._(
    0,
    'FULLY_MUTABLE',
    'FULLY_MUTABLE',
  );

  static const immutable = ProvisioningType._(
    1,
    'IMMUTABLE',
    'IMMUTABLE',
  );

  static const nonProvisionable = ProvisioningType._(
    2,
    'NON_PROVISIONABLE',
    'NON_PROVISIONABLE',
  );

  /// All values of [ProvisioningType].
  static const values = <ProvisioningType>[
    ProvisioningType.fullyMutable,
    ProvisioningType.immutable,
    ProvisioningType.nonProvisionable,
  ];

  static const List<_i1.SmithySerializer<ProvisioningType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ProvisioningType',
      values: values,
      sdkUnknown: ProvisioningType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ProvisioningTypeHelpers on List<ProvisioningType> {
  /// Returns the value of [ProvisioningType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ProvisioningType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ProvisioningType] whose value matches [value].
  ProvisioningType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
