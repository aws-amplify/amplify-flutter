// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamState extends _i1.SmithyEnum<IpamState> {
  const IpamState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamState._sdkUnknown(super.value) : super.sdkUnknown();

  static const createComplete = IpamState._(
    0,
    'create_complete',
    'create-complete',
  );

  static const createFailed = IpamState._(
    1,
    'create_failed',
    'create-failed',
  );

  static const createInProgress = IpamState._(
    2,
    'create_in_progress',
    'create-in-progress',
  );

  static const deleteComplete = IpamState._(
    3,
    'delete_complete',
    'delete-complete',
  );

  static const deleteFailed = IpamState._(
    4,
    'delete_failed',
    'delete-failed',
  );

  static const deleteInProgress = IpamState._(
    5,
    'delete_in_progress',
    'delete-in-progress',
  );

  static const isolateComplete = IpamState._(
    6,
    'isolate_complete',
    'isolate-complete',
  );

  static const isolateInProgress = IpamState._(
    7,
    'isolate_in_progress',
    'isolate-in-progress',
  );

  static const modifyComplete = IpamState._(
    8,
    'modify_complete',
    'modify-complete',
  );

  static const modifyFailed = IpamState._(
    9,
    'modify_failed',
    'modify-failed',
  );

  static const modifyInProgress = IpamState._(
    10,
    'modify_in_progress',
    'modify-in-progress',
  );

  static const restoreInProgress = IpamState._(
    11,
    'restore_in_progress',
    'restore-in-progress',
  );

  /// All values of [IpamState].
  static const values = <IpamState>[
    IpamState.createComplete,
    IpamState.createFailed,
    IpamState.createInProgress,
    IpamState.deleteComplete,
    IpamState.deleteFailed,
    IpamState.deleteInProgress,
    IpamState.isolateComplete,
    IpamState.isolateInProgress,
    IpamState.modifyComplete,
    IpamState.modifyFailed,
    IpamState.modifyInProgress,
    IpamState.restoreInProgress,
  ];

  static const List<_i1.SmithySerializer<IpamState>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamState',
      values: values,
      sdkUnknown: IpamState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamStateHelpers on List<IpamState> {
  /// Returns the value of [IpamState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamState] whose value matches [value].
  IpamState byValue(String value) => firstWhere((el) => el.value == value);
}
