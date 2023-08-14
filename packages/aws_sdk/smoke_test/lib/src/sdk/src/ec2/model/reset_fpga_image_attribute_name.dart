// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_fpga_image_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResetFpgaImageAttributeName
    extends _i1.SmithyEnum<ResetFpgaImageAttributeName> {
  const ResetFpgaImageAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const ResetFpgaImageAttributeName._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const loadPermission = ResetFpgaImageAttributeName._(
    0,
    'loadPermission',
    'loadPermission',
  );

  /// All values of [ResetFpgaImageAttributeName].
  static const values = <ResetFpgaImageAttributeName>[
    ResetFpgaImageAttributeName.loadPermission
  ];

  static const List<_i1.SmithySerializer<ResetFpgaImageAttributeName>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ResetFpgaImageAttributeName',
      values: values,
      sdkUnknown: ResetFpgaImageAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ResetFpgaImageAttributeNameHelpers
    on List<ResetFpgaImageAttributeName> {
  /// Returns the value of [ResetFpgaImageAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResetFpgaImageAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResetFpgaImageAttributeName] whose value matches [value].
  ResetFpgaImageAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
