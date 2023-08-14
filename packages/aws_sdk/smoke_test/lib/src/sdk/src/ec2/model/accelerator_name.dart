// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accelerator_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AcceleratorName extends _i1.SmithyEnum<AcceleratorName> {
  const AcceleratorName._(
    super.index,
    super.name,
    super.value,
  );

  const AcceleratorName._sdkUnknown(super.value) : super.sdkUnknown();

  static const a100 = AcceleratorName._(
    0,
    'A100',
    'a100',
  );

  static const inferentia = AcceleratorName._(
    1,
    'INFERENTIA',
    'inferentia',
  );

  static const k520 = AcceleratorName._(
    2,
    'K520',
    'k520',
  );

  static const k80 = AcceleratorName._(
    3,
    'K80',
    'k80',
  );

  static const m60 = AcceleratorName._(
    4,
    'M60',
    'm60',
  );

  static const radeonProV520 = AcceleratorName._(
    5,
    'RADEON_PRO_V520',
    'radeon-pro-v520',
  );

  static const t4 = AcceleratorName._(
    6,
    'T4',
    't4',
  );

  static const v100 = AcceleratorName._(
    7,
    'V100',
    'v100',
  );

  static const vu9P = AcceleratorName._(
    8,
    'VU9P',
    'vu9p',
  );

  /// All values of [AcceleratorName].
  static const values = <AcceleratorName>[
    AcceleratorName.a100,
    AcceleratorName.inferentia,
    AcceleratorName.k520,
    AcceleratorName.k80,
    AcceleratorName.m60,
    AcceleratorName.radeonProV520,
    AcceleratorName.t4,
    AcceleratorName.v100,
    AcceleratorName.vu9P,
  ];

  static const List<_i1.SmithySerializer<AcceleratorName>> serializers = [
    _i1.SmithyEnumSerializer(
      'AcceleratorName',
      values: values,
      sdkUnknown: AcceleratorName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AcceleratorNameHelpers on List<AcceleratorName> {
  /// Returns the value of [AcceleratorName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AcceleratorName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AcceleratorName] whose value matches [value].
  AcceleratorName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
