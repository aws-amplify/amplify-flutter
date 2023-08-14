// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.boot_mode_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BootModeValues extends _i1.SmithyEnum<BootModeValues> {
  const BootModeValues._(
    super.index,
    super.name,
    super.value,
  );

  const BootModeValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const legacyBios = BootModeValues._(
    0,
    'legacy_bios',
    'legacy-bios',
  );

  static const uefi = BootModeValues._(
    1,
    'uefi',
    'uefi',
  );

  static const uefiPreferred = BootModeValues._(
    2,
    'uefi_preferred',
    'uefi-preferred',
  );

  /// All values of [BootModeValues].
  static const values = <BootModeValues>[
    BootModeValues.legacyBios,
    BootModeValues.uefi,
    BootModeValues.uefiPreferred,
  ];

  static const List<_i1.SmithySerializer<BootModeValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'BootModeValues',
      values: values,
      sdkUnknown: BootModeValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BootModeValuesHelpers on List<BootModeValues> {
  /// Returns the value of [BootModeValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BootModeValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BootModeValues] whose value matches [value].
  BootModeValues byValue(String value) => firstWhere((el) => el.value == value);
}
