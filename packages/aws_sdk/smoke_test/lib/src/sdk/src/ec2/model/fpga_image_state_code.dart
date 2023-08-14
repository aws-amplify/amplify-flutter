// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_image_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FpgaImageStateCode extends _i1.SmithyEnum<FpgaImageStateCode> {
  const FpgaImageStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const FpgaImageStateCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = FpgaImageStateCode._(
    0,
    'available',
    'available',
  );

  static const failed = FpgaImageStateCode._(
    1,
    'failed',
    'failed',
  );

  static const pending = FpgaImageStateCode._(
    2,
    'pending',
    'pending',
  );

  static const unavailable = FpgaImageStateCode._(
    3,
    'unavailable',
    'unavailable',
  );

  /// All values of [FpgaImageStateCode].
  static const values = <FpgaImageStateCode>[
    FpgaImageStateCode.available,
    FpgaImageStateCode.failed,
    FpgaImageStateCode.pending,
    FpgaImageStateCode.unavailable,
  ];

  static const List<_i1.SmithySerializer<FpgaImageStateCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'FpgaImageStateCode',
      values: values,
      sdkUnknown: FpgaImageStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FpgaImageStateCodeHelpers on List<FpgaImageStateCode> {
  /// Returns the value of [FpgaImageStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FpgaImageStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FpgaImageStateCode] whose value matches [value].
  FpgaImageStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
