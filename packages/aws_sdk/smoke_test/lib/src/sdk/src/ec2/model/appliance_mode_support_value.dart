// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.appliance_mode_support_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ApplianceModeSupportValue
    extends _i1.SmithyEnum<ApplianceModeSupportValue> {
  const ApplianceModeSupportValue._(
    super.index,
    super.name,
    super.value,
  );

  const ApplianceModeSupportValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = ApplianceModeSupportValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = ApplianceModeSupportValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [ApplianceModeSupportValue].
  static const values = <ApplianceModeSupportValue>[
    ApplianceModeSupportValue.disable,
    ApplianceModeSupportValue.enable,
  ];

  static const List<_i1.SmithySerializer<ApplianceModeSupportValue>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ApplianceModeSupportValue',
      values: values,
      sdkUnknown: ApplianceModeSupportValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ApplianceModeSupportValueHelpers on List<ApplianceModeSupportValue> {
  /// Returns the value of [ApplianceModeSupportValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ApplianceModeSupportValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ApplianceModeSupportValue] whose value matches [value].
  ApplianceModeSupportValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
