// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_spot_instance_request_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CancelSpotInstanceRequestState
    extends _i1.SmithyEnum<CancelSpotInstanceRequestState> {
  const CancelSpotInstanceRequestState._(
    super.index,
    super.name,
    super.value,
  );

  const CancelSpotInstanceRequestState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const active = CancelSpotInstanceRequestState._(
    0,
    'active',
    'active',
  );

  static const cancelled = CancelSpotInstanceRequestState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const closed = CancelSpotInstanceRequestState._(
    2,
    'closed',
    'closed',
  );

  static const completed = CancelSpotInstanceRequestState._(
    3,
    'completed',
    'completed',
  );

  static const open = CancelSpotInstanceRequestState._(
    4,
    'open',
    'open',
  );

  /// All values of [CancelSpotInstanceRequestState].
  static const values = <CancelSpotInstanceRequestState>[
    CancelSpotInstanceRequestState.active,
    CancelSpotInstanceRequestState.cancelled,
    CancelSpotInstanceRequestState.closed,
    CancelSpotInstanceRequestState.completed,
    CancelSpotInstanceRequestState.open,
  ];

  static const List<_i1.SmithySerializer<CancelSpotInstanceRequestState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'CancelSpotInstanceRequestState',
      values: values,
      sdkUnknown: CancelSpotInstanceRequestState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CancelSpotInstanceRequestStateHelpers
    on List<CancelSpotInstanceRequestState> {
  /// Returns the value of [CancelSpotInstanceRequestState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CancelSpotInstanceRequestState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CancelSpotInstanceRequestState] whose value matches [value].
  CancelSpotInstanceRequestState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
