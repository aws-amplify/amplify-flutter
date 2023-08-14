// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class State extends _i1.SmithyEnum<State> {
  const State._(
    super.index,
    super.name,
    super.value,
  );

  const State._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = State._(
    0,
    'Available',
    'Available',
  );

  static const deleted = State._(
    1,
    'Deleted',
    'Deleted',
  );

  static const deleting = State._(
    2,
    'Deleting',
    'Deleting',
  );

  static const expired = State._(
    3,
    'Expired',
    'Expired',
  );

  static const failed = State._(
    4,
    'Failed',
    'Failed',
  );

  static const pending = State._(
    5,
    'Pending',
    'Pending',
  );

  static const pendingAcceptance = State._(
    6,
    'PendingAcceptance',
    'PendingAcceptance',
  );

  static const rejected = State._(
    7,
    'Rejected',
    'Rejected',
  );

  /// All values of [State].
  static const values = <State>[
    State.available,
    State.deleted,
    State.deleting,
    State.expired,
    State.failed,
    State.pending,
    State.pendingAcceptance,
    State.rejected,
  ];

  static const List<_i1.SmithySerializer<State>> serializers = [
    _i1.SmithyEnumSerializer(
      'State',
      values: values,
      sdkUnknown: State._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StateHelpers on List<State> {
  /// Returns the value of [State] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  State byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [State] whose value matches [value].
  State byValue(String value) => firstWhere((el) => el.value == value);
}
