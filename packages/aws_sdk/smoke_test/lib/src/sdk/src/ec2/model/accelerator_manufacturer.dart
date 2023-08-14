// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accelerator_manufacturer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AcceleratorManufacturer extends _i1.SmithyEnum<AcceleratorManufacturer> {
  const AcceleratorManufacturer._(
    super.index,
    super.name,
    super.value,
  );

  const AcceleratorManufacturer._sdkUnknown(super.value) : super.sdkUnknown();

  static const amazonWebServices = AcceleratorManufacturer._(
    0,
    'AMAZON_WEB_SERVICES',
    'amazon-web-services',
  );

  static const amd = AcceleratorManufacturer._(
    1,
    'AMD',
    'amd',
  );

  static const nvidia = AcceleratorManufacturer._(
    2,
    'NVIDIA',
    'nvidia',
  );

  static const xilinx = AcceleratorManufacturer._(
    3,
    'XILINX',
    'xilinx',
  );

  /// All values of [AcceleratorManufacturer].
  static const values = <AcceleratorManufacturer>[
    AcceleratorManufacturer.amazonWebServices,
    AcceleratorManufacturer.amd,
    AcceleratorManufacturer.nvidia,
    AcceleratorManufacturer.xilinx,
  ];

  static const List<_i1.SmithySerializer<AcceleratorManufacturer>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'AcceleratorManufacturer',
      values: values,
      sdkUnknown: AcceleratorManufacturer._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AcceleratorManufacturerHelpers on List<AcceleratorManufacturer> {
  /// Returns the value of [AcceleratorManufacturer] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AcceleratorManufacturer byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AcceleratorManufacturer] whose value matches [value].
  AcceleratorManufacturer byValue(String value) =>
      firstWhere((el) => el.value == value);
}
