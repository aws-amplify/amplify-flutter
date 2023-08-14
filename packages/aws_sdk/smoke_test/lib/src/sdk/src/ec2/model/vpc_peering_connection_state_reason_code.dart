// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_peering_connection_state_reason_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcPeeringConnectionStateReasonCode
    extends _i1.SmithyEnum<VpcPeeringConnectionStateReasonCode> {
  const VpcPeeringConnectionStateReasonCode._(
    super.index,
    super.name,
    super.value,
  );

  const VpcPeeringConnectionStateReasonCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = VpcPeeringConnectionStateReasonCode._(
    0,
    'active',
    'active',
  );

  static const deleted = VpcPeeringConnectionStateReasonCode._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = VpcPeeringConnectionStateReasonCode._(
    2,
    'deleting',
    'deleting',
  );

  static const expired = VpcPeeringConnectionStateReasonCode._(
    3,
    'expired',
    'expired',
  );

  static const failed = VpcPeeringConnectionStateReasonCode._(
    4,
    'failed',
    'failed',
  );

  static const initiatingRequest = VpcPeeringConnectionStateReasonCode._(
    5,
    'initiating_request',
    'initiating-request',
  );

  static const pendingAcceptance = VpcPeeringConnectionStateReasonCode._(
    6,
    'pending_acceptance',
    'pending-acceptance',
  );

  static const provisioning = VpcPeeringConnectionStateReasonCode._(
    7,
    'provisioning',
    'provisioning',
  );

  static const rejected = VpcPeeringConnectionStateReasonCode._(
    8,
    'rejected',
    'rejected',
  );

  /// All values of [VpcPeeringConnectionStateReasonCode].
  static const values = <VpcPeeringConnectionStateReasonCode>[
    VpcPeeringConnectionStateReasonCode.active,
    VpcPeeringConnectionStateReasonCode.deleted,
    VpcPeeringConnectionStateReasonCode.deleting,
    VpcPeeringConnectionStateReasonCode.expired,
    VpcPeeringConnectionStateReasonCode.failed,
    VpcPeeringConnectionStateReasonCode.initiatingRequest,
    VpcPeeringConnectionStateReasonCode.pendingAcceptance,
    VpcPeeringConnectionStateReasonCode.provisioning,
    VpcPeeringConnectionStateReasonCode.rejected,
  ];

  static const List<_i1.SmithySerializer<VpcPeeringConnectionStateReasonCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'VpcPeeringConnectionStateReasonCode',
      values: values,
      sdkUnknown: VpcPeeringConnectionStateReasonCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpcPeeringConnectionStateReasonCodeHelpers
    on List<VpcPeeringConnectionStateReasonCode> {
  /// Returns the value of [VpcPeeringConnectionStateReasonCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcPeeringConnectionStateReasonCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcPeeringConnectionStateReasonCode] whose value matches [value].
  VpcPeeringConnectionStateReasonCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
