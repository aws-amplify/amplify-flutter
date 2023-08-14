// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_attachment_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayAttachmentState
    extends _i1.SmithyEnum<TransitGatewayAttachmentState> {
  const TransitGatewayAttachmentState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayAttachmentState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayAttachmentState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayAttachmentState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayAttachmentState._(
    2,
    'deleting',
    'deleting',
  );

  static const failed = TransitGatewayAttachmentState._(
    3,
    'failed',
    'failed',
  );

  static const failing = TransitGatewayAttachmentState._(
    4,
    'failing',
    'failing',
  );

  static const initiating = TransitGatewayAttachmentState._(
    5,
    'initiating',
    'initiating',
  );

  static const initiatingRequest = TransitGatewayAttachmentState._(
    6,
    'initiatingRequest',
    'initiatingRequest',
  );

  static const modifying = TransitGatewayAttachmentState._(
    7,
    'modifying',
    'modifying',
  );

  static const pending = TransitGatewayAttachmentState._(
    8,
    'pending',
    'pending',
  );

  static const pendingAcceptance = TransitGatewayAttachmentState._(
    9,
    'pendingAcceptance',
    'pendingAcceptance',
  );

  static const rejected = TransitGatewayAttachmentState._(
    10,
    'rejected',
    'rejected',
  );

  static const rejecting = TransitGatewayAttachmentState._(
    11,
    'rejecting',
    'rejecting',
  );

  static const rollingBack = TransitGatewayAttachmentState._(
    12,
    'rollingBack',
    'rollingBack',
  );

  /// All values of [TransitGatewayAttachmentState].
  static const values = <TransitGatewayAttachmentState>[
    TransitGatewayAttachmentState.available,
    TransitGatewayAttachmentState.deleted,
    TransitGatewayAttachmentState.deleting,
    TransitGatewayAttachmentState.failed,
    TransitGatewayAttachmentState.failing,
    TransitGatewayAttachmentState.initiating,
    TransitGatewayAttachmentState.initiatingRequest,
    TransitGatewayAttachmentState.modifying,
    TransitGatewayAttachmentState.pending,
    TransitGatewayAttachmentState.pendingAcceptance,
    TransitGatewayAttachmentState.rejected,
    TransitGatewayAttachmentState.rejecting,
    TransitGatewayAttachmentState.rollingBack,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayAttachmentState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayAttachmentState',
      values: values,
      sdkUnknown: TransitGatewayAttachmentState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayAttachmentStateHelpers
    on List<TransitGatewayAttachmentState> {
  /// Returns the value of [TransitGatewayAttachmentState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayAttachmentState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayAttachmentState] whose value matches [value].
  TransitGatewayAttachmentState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
