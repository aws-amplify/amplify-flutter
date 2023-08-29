// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cpu_manufacturer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CpuManufacturer extends _i1.SmithyEnum<CpuManufacturer> {
  const CpuManufacturer._(
    super.index,
    super.name,
    super.value,
  );

  const CpuManufacturer._sdkUnknown(super.value) : super.sdkUnknown();

  static const amazonWebServices = CpuManufacturer._(
    0,
    'AMAZON_WEB_SERVICES',
    'amazon-web-services',
  );

  static const amd = CpuManufacturer._(
    1,
    'AMD',
    'amd',
  );

  static const intel = CpuManufacturer._(
    2,
    'INTEL',
    'intel',
  );

  /// All values of [CpuManufacturer].
  static const values = <CpuManufacturer>[
    CpuManufacturer.amazonWebServices,
    CpuManufacturer.amd,
    CpuManufacturer.intel,
  ];

  static const List<_i1.SmithySerializer<CpuManufacturer>> serializers = [
    _i1.SmithyEnumSerializer(
      'CpuManufacturer',
      values: values,
      sdkUnknown: CpuManufacturer._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CpuManufacturerHelpers on List<CpuManufacturer> {
  /// Returns the value of [CpuManufacturer] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CpuManufacturer byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CpuManufacturer] whose value matches [value].
  CpuManufacturer byValue(String value) =>
      firstWhere((el) => el.value == value);
}
