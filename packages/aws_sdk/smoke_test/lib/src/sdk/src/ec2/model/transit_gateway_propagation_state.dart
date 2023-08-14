// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_propagation_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayPropagationState
    extends _i1.SmithyEnum<TransitGatewayPropagationState> {
  const TransitGatewayPropagationState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayPropagationState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = TransitGatewayPropagationState._(
    0,
    'disabled',
    'disabled',
  );

  static const disabling = TransitGatewayPropagationState._(
    1,
    'disabling',
    'disabling',
  );

  static const enabled = TransitGatewayPropagationState._(
    2,
    'enabled',
    'enabled',
  );

  static const enabling = TransitGatewayPropagationState._(
    3,
    'enabling',
    'enabling',
  );

  /// All values of [TransitGatewayPropagationState].
  static const values = <TransitGatewayPropagationState>[
    TransitGatewayPropagationState.disabled,
    TransitGatewayPropagationState.disabling,
    TransitGatewayPropagationState.enabled,
    TransitGatewayPropagationState.enabling,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayPropagationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayPropagationState',
      values: values,
      sdkUnknown: TransitGatewayPropagationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayPropagationStateHelpers
    on List<TransitGatewayPropagationState> {
  /// Returns the value of [TransitGatewayPropagationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayPropagationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayPropagationState] whose value matches [value].
  TransitGatewayPropagationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
