// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SubnetState extends _i1.SmithyEnum<SubnetState> {
  const SubnetState._(
    super.index,
    super.name,
    super.value,
  );

  const SubnetState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = SubnetState._(
    0,
    'available',
    'available',
  );

  static const pending = SubnetState._(
    1,
    'pending',
    'pending',
  );

  /// All values of [SubnetState].
  static const values = <SubnetState>[
    SubnetState.available,
    SubnetState.pending,
  ];

  static const List<_i1.SmithySerializer<SubnetState>> serializers = [
    _i1.SmithyEnumSerializer(
      'SubnetState',
      values: values,
      sdkUnknown: SubnetState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SubnetStateHelpers on List<SubnetState> {
  /// Returns the value of [SubnetState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SubnetState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SubnetState] whose value matches [value].
  SubnetState byValue(String value) => firstWhere((el) => el.value == value);
}
