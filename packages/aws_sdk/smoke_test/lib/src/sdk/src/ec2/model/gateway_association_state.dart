// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.gateway_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class GatewayAssociationState extends _i1.SmithyEnum<GatewayAssociationState> {
  const GatewayAssociationState._(
    super.index,
    super.name,
    super.value,
  );

  const GatewayAssociationState._sdkUnknown(super.value) : super.sdkUnknown();

  static const associated = GatewayAssociationState._(
    0,
    'associated',
    'associated',
  );

  static const associating = GatewayAssociationState._(
    1,
    'associating',
    'associating',
  );

  static const disassociating = GatewayAssociationState._(
    2,
    'disassociating',
    'disassociating',
  );

  static const notAssociated = GatewayAssociationState._(
    3,
    'not_associated',
    'not-associated',
  );

  /// All values of [GatewayAssociationState].
  static const values = <GatewayAssociationState>[
    GatewayAssociationState.associated,
    GatewayAssociationState.associating,
    GatewayAssociationState.disassociating,
    GatewayAssociationState.notAssociated,
  ];

  static const List<_i1.SmithySerializer<GatewayAssociationState>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'GatewayAssociationState',
      values: values,
      sdkUnknown: GatewayAssociationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension GatewayAssociationStateHelpers on List<GatewayAssociationState> {
  /// Returns the value of [GatewayAssociationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  GatewayAssociationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [GatewayAssociationState] whose value matches [value].
  GatewayAssociationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
