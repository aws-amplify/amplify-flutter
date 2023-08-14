// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.nat_gateway_address_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NatGatewayAddressStatus extends _i1.SmithyEnum<NatGatewayAddressStatus> {
  const NatGatewayAddressStatus._(
    super.index,
    super.name,
    super.value,
  );

  const NatGatewayAddressStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const assigning = NatGatewayAddressStatus._(
    0,
    'ASSIGNING',
    'assigning',
  );

  static const associating = NatGatewayAddressStatus._(
    1,
    'ASSOCIATING',
    'associating',
  );

  static const disassociating = NatGatewayAddressStatus._(
    2,
    'DISASSOCIATING',
    'disassociating',
  );

  static const failed = NatGatewayAddressStatus._(
    3,
    'FAILED',
    'failed',
  );

  static const succeeded = NatGatewayAddressStatus._(
    4,
    'SUCCEEDED',
    'succeeded',
  );

  static const unassigning = NatGatewayAddressStatus._(
    5,
    'UNASSIGNING',
    'unassigning',
  );

  /// All values of [NatGatewayAddressStatus].
  static const values = <NatGatewayAddressStatus>[
    NatGatewayAddressStatus.assigning,
    NatGatewayAddressStatus.associating,
    NatGatewayAddressStatus.disassociating,
    NatGatewayAddressStatus.failed,
    NatGatewayAddressStatus.succeeded,
    NatGatewayAddressStatus.unassigning,
  ];

  static const List<_i1.SmithySerializer<NatGatewayAddressStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'NatGatewayAddressStatus',
      values: values,
      sdkUnknown: NatGatewayAddressStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NatGatewayAddressStatusHelpers on List<NatGatewayAddressStatus> {
  /// Returns the value of [NatGatewayAddressStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NatGatewayAddressStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NatGatewayAddressStatus] whose value matches [value].
  NatGatewayAddressStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
