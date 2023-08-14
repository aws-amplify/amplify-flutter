// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.carrier_gateway_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CarrierGatewayState extends _i1.SmithyEnum<CarrierGatewayState> {
  const CarrierGatewayState._(
    super.index,
    super.name,
    super.value,
  );

  const CarrierGatewayState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = CarrierGatewayState._(
    0,
    'available',
    'available',
  );

  static const deleted = CarrierGatewayState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = CarrierGatewayState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = CarrierGatewayState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [CarrierGatewayState].
  static const values = <CarrierGatewayState>[
    CarrierGatewayState.available,
    CarrierGatewayState.deleted,
    CarrierGatewayState.deleting,
    CarrierGatewayState.pending,
  ];

  static const List<_i1.SmithySerializer<CarrierGatewayState>> serializers = [
    _i1.SmithyEnumSerializer(
      'CarrierGatewayState',
      values: values,
      sdkUnknown: CarrierGatewayState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CarrierGatewayStateHelpers on List<CarrierGatewayState> {
  /// Returns the value of [CarrierGatewayState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CarrierGatewayState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CarrierGatewayState] whose value matches [value].
  CarrierGatewayState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
