// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_policy_table_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayPolicyTableState
    extends _i1.SmithyEnum<TransitGatewayPolicyTableState> {
  const TransitGatewayPolicyTableState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayPolicyTableState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayPolicyTableState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayPolicyTableState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayPolicyTableState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = TransitGatewayPolicyTableState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayPolicyTableState].
  static const values = <TransitGatewayPolicyTableState>[
    TransitGatewayPolicyTableState.available,
    TransitGatewayPolicyTableState.deleted,
    TransitGatewayPolicyTableState.deleting,
    TransitGatewayPolicyTableState.pending,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayPolicyTableState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayPolicyTableState',
      values: values,
      sdkUnknown: TransitGatewayPolicyTableState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayPolicyTableStateHelpers
    on List<TransitGatewayPolicyTableState> {
  /// Returns the value of [TransitGatewayPolicyTableState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayPolicyTableState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayPolicyTableState] whose value matches [value].
  TransitGatewayPolicyTableState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
