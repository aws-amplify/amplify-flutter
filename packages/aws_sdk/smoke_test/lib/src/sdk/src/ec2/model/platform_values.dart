// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.platform_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PlatformValues extends _i1.SmithyEnum<PlatformValues> {
  const PlatformValues._(
    super.index,
    super.name,
    super.value,
  );

  const PlatformValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const windows = PlatformValues._(
    0,
    'Windows',
    'Windows',
  );

  /// All values of [PlatformValues].
  static const values = <PlatformValues>[PlatformValues.windows];

  static const List<_i1.SmithySerializer<PlatformValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'PlatformValues',
      values: values,
      sdkUnknown: PlatformValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PlatformValuesHelpers on List<PlatformValues> {
  /// Returns the value of [PlatformValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PlatformValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PlatformValues] whose value matches [value].
  PlatformValues byValue(String value) => firstWhere((el) => el.value == value);
}
