// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.nat_gateway_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NatGatewayState extends _i1.SmithyEnum<NatGatewayState> {
  const NatGatewayState._(
    super.index,
    super.name,
    super.value,
  );

  const NatGatewayState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = NatGatewayState._(
    0,
    'AVAILABLE',
    'available',
  );

  static const deleted = NatGatewayState._(
    1,
    'DELETED',
    'deleted',
  );

  static const deleting = NatGatewayState._(
    2,
    'DELETING',
    'deleting',
  );

  static const failed = NatGatewayState._(
    3,
    'FAILED',
    'failed',
  );

  static const pending = NatGatewayState._(
    4,
    'PENDING',
    'pending',
  );

  /// All values of [NatGatewayState].
  static const values = <NatGatewayState>[
    NatGatewayState.available,
    NatGatewayState.deleted,
    NatGatewayState.deleting,
    NatGatewayState.failed,
    NatGatewayState.pending,
  ];

  static const List<_i1.SmithySerializer<NatGatewayState>> serializers = [
    _i1.SmithyEnumSerializer(
      'NatGatewayState',
      values: values,
      sdkUnknown: NatGatewayState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NatGatewayStateHelpers on List<NatGatewayState> {
  /// Returns the value of [NatGatewayState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NatGatewayState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NatGatewayState] whose value matches [value].
  NatGatewayState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
