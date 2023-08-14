// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.auto_accept_shared_associations_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AutoAcceptSharedAssociationsValue
    extends _i1.SmithyEnum<AutoAcceptSharedAssociationsValue> {
  const AutoAcceptSharedAssociationsValue._(
    super.index,
    super.name,
    super.value,
  );

  const AutoAcceptSharedAssociationsValue._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disable = AutoAcceptSharedAssociationsValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = AutoAcceptSharedAssociationsValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [AutoAcceptSharedAssociationsValue].
  static const values = <AutoAcceptSharedAssociationsValue>[
    AutoAcceptSharedAssociationsValue.disable,
    AutoAcceptSharedAssociationsValue.enable,
  ];

  static const List<_i1.SmithySerializer<AutoAcceptSharedAssociationsValue>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AutoAcceptSharedAssociationsValue',
      values: values,
      sdkUnknown: AutoAcceptSharedAssociationsValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AutoAcceptSharedAssociationsValueHelpers
    on List<AutoAcceptSharedAssociationsValue> {
  /// Returns the value of [AutoAcceptSharedAssociationsValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AutoAcceptSharedAssociationsValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AutoAcceptSharedAssociationsValue] whose value matches [value].
  AutoAcceptSharedAssociationsValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
