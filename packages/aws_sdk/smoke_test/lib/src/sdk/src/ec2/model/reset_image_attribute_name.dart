// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reset_image_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResetImageAttributeName extends _i1.SmithyEnum<ResetImageAttributeName> {
  const ResetImageAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const ResetImageAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const launchPermission = ResetImageAttributeName._(
    0,
    'launchPermission',
    'launchPermission',
  );

  /// All values of [ResetImageAttributeName].
  static const values = <ResetImageAttributeName>[
    ResetImageAttributeName.launchPermission
  ];

  static const List<_i1.SmithySerializer<ResetImageAttributeName>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ResetImageAttributeName',
      values: values,
      sdkUnknown: ResetImageAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ResetImageAttributeNameHelpers on List<ResetImageAttributeName> {
  /// Returns the value of [ResetImageAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResetImageAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResetImageAttributeName] whose value matches [value].
  ResetImageAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
