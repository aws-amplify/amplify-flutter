// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_prefix_list_reference_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayPrefixListReferenceState
    extends _i1.SmithyEnum<TransitGatewayPrefixListReferenceState> {
  const TransitGatewayPrefixListReferenceState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayPrefixListReferenceState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayPrefixListReferenceState._(
    0,
    'available',
    'available',
  );

  static const deleting = TransitGatewayPrefixListReferenceState._(
    1,
    'deleting',
    'deleting',
  );

  static const modifying = TransitGatewayPrefixListReferenceState._(
    2,
    'modifying',
    'modifying',
  );

  static const pending = TransitGatewayPrefixListReferenceState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayPrefixListReferenceState].
  static const values = <TransitGatewayPrefixListReferenceState>[
    TransitGatewayPrefixListReferenceState.available,
    TransitGatewayPrefixListReferenceState.deleting,
    TransitGatewayPrefixListReferenceState.modifying,
    TransitGatewayPrefixListReferenceState.pending,
  ];

  static const List<
          _i1.SmithySerializer<TransitGatewayPrefixListReferenceState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayPrefixListReferenceState',
      values: values,
      sdkUnknown: TransitGatewayPrefixListReferenceState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayPrefixListReferenceStateHelpers
    on List<TransitGatewayPrefixListReferenceState> {
  /// Returns the value of [TransitGatewayPrefixListReferenceState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayPrefixListReferenceState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayPrefixListReferenceState] whose value matches [value].
  TransitGatewayPrefixListReferenceState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
