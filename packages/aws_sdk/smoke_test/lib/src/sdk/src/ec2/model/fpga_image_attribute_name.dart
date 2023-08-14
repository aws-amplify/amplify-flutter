// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fpga_image_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FpgaImageAttributeName extends _i1.SmithyEnum<FpgaImageAttributeName> {
  const FpgaImageAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const FpgaImageAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const description = FpgaImageAttributeName._(
    0,
    'description',
    'description',
  );

  static const loadPermission = FpgaImageAttributeName._(
    1,
    'loadPermission',
    'loadPermission',
  );

  static const name$ = FpgaImageAttributeName._(
    2,
    'name',
    'name',
  );

  static const productCodes = FpgaImageAttributeName._(
    3,
    'productCodes',
    'productCodes',
  );

  /// All values of [FpgaImageAttributeName].
  static const values = <FpgaImageAttributeName>[
    FpgaImageAttributeName.description,
    FpgaImageAttributeName.loadPermission,
    FpgaImageAttributeName.name$,
    FpgaImageAttributeName.productCodes,
  ];

  static const List<_i1.SmithySerializer<FpgaImageAttributeName>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'FpgaImageAttributeName',
      values: values,
      sdkUnknown: FpgaImageAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FpgaImageAttributeNameHelpers on List<FpgaImageAttributeName> {
  /// Returns the value of [FpgaImageAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FpgaImageAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FpgaImageAttributeName] whose value matches [value].
  FpgaImageAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
