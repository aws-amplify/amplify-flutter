// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_boot_mode_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceBootModeValues extends _i1.SmithyEnum<InstanceBootModeValues> {
  const InstanceBootModeValues._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceBootModeValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const legacyBios = InstanceBootModeValues._(
    0,
    'legacy_bios',
    'legacy-bios',
  );

  static const uefi = InstanceBootModeValues._(
    1,
    'uefi',
    'uefi',
  );

  /// All values of [InstanceBootModeValues].
  static const values = <InstanceBootModeValues>[
    InstanceBootModeValues.legacyBios,
    InstanceBootModeValues.uefi,
  ];

  static const List<_i1.SmithySerializer<InstanceBootModeValues>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'InstanceBootModeValues',
      values: values,
      sdkUnknown: InstanceBootModeValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceBootModeValuesHelpers on List<InstanceBootModeValues> {
  /// Returns the value of [InstanceBootModeValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceBootModeValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceBootModeValues] whose value matches [value].
  InstanceBootModeValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
