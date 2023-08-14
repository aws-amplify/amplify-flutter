// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_match_criteria; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceMatchCriteria extends _i1.SmithyEnum<InstanceMatchCriteria> {
  const InstanceMatchCriteria._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceMatchCriteria._sdkUnknown(super.value) : super.sdkUnknown();

  static const open = InstanceMatchCriteria._(
    0,
    'open',
    'open',
  );

  static const targeted = InstanceMatchCriteria._(
    1,
    'targeted',
    'targeted',
  );

  /// All values of [InstanceMatchCriteria].
  static const values = <InstanceMatchCriteria>[
    InstanceMatchCriteria.open,
    InstanceMatchCriteria.targeted,
  ];

  static const List<_i1.SmithySerializer<InstanceMatchCriteria>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceMatchCriteria',
      values: values,
      sdkUnknown: InstanceMatchCriteria._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceMatchCriteriaHelpers on List<InstanceMatchCriteria> {
  /// Returns the value of [InstanceMatchCriteria] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceMatchCriteria byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceMatchCriteria] whose value matches [value].
  InstanceMatchCriteria byValue(String value) =>
      firstWhere((el) => el.value == value);
}
