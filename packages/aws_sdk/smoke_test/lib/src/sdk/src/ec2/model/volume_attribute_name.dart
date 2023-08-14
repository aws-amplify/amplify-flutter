// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeAttributeName extends _i1.SmithyEnum<VolumeAttributeName> {
  const VolumeAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const autoEnableIo = VolumeAttributeName._(
    0,
    'autoEnableIO',
    'autoEnableIO',
  );

  static const productCodes = VolumeAttributeName._(
    1,
    'productCodes',
    'productCodes',
  );

  /// All values of [VolumeAttributeName].
  static const values = <VolumeAttributeName>[
    VolumeAttributeName.autoEnableIo,
    VolumeAttributeName.productCodes,
  ];

  static const List<_i1.SmithySerializer<VolumeAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'VolumeAttributeName',
      values: values,
      sdkUnknown: VolumeAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeAttributeNameHelpers on List<VolumeAttributeName> {
  /// Returns the value of [VolumeAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeAttributeName] whose value matches [value].
  VolumeAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
