// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_scope_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamScopeState extends _i1.SmithyEnum<IpamScopeState> {
  const IpamScopeState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamScopeState._sdkUnknown(super.value) : super.sdkUnknown();

  static const createComplete = IpamScopeState._(
    0,
    'create_complete',
    'create-complete',
  );

  static const createFailed = IpamScopeState._(
    1,
    'create_failed',
    'create-failed',
  );

  static const createInProgress = IpamScopeState._(
    2,
    'create_in_progress',
    'create-in-progress',
  );

  static const deleteComplete = IpamScopeState._(
    3,
    'delete_complete',
    'delete-complete',
  );

  static const deleteFailed = IpamScopeState._(
    4,
    'delete_failed',
    'delete-failed',
  );

  static const deleteInProgress = IpamScopeState._(
    5,
    'delete_in_progress',
    'delete-in-progress',
  );

  static const isolateComplete = IpamScopeState._(
    6,
    'isolate_complete',
    'isolate-complete',
  );

  static const isolateInProgress = IpamScopeState._(
    7,
    'isolate_in_progress',
    'isolate-in-progress',
  );

  static const modifyComplete = IpamScopeState._(
    8,
    'modify_complete',
    'modify-complete',
  );

  static const modifyFailed = IpamScopeState._(
    9,
    'modify_failed',
    'modify-failed',
  );

  static const modifyInProgress = IpamScopeState._(
    10,
    'modify_in_progress',
    'modify-in-progress',
  );

  static const restoreInProgress = IpamScopeState._(
    11,
    'restore_in_progress',
    'restore-in-progress',
  );

  /// All values of [IpamScopeState].
  static const values = <IpamScopeState>[
    IpamScopeState.createComplete,
    IpamScopeState.createFailed,
    IpamScopeState.createInProgress,
    IpamScopeState.deleteComplete,
    IpamScopeState.deleteFailed,
    IpamScopeState.deleteInProgress,
    IpamScopeState.isolateComplete,
    IpamScopeState.isolateInProgress,
    IpamScopeState.modifyComplete,
    IpamScopeState.modifyFailed,
    IpamScopeState.modifyInProgress,
    IpamScopeState.restoreInProgress,
  ];

  static const List<_i1.SmithySerializer<IpamScopeState>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamScopeState',
      values: values,
      sdkUnknown: IpamScopeState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamScopeStateHelpers on List<IpamScopeState> {
  /// Returns the value of [IpamScopeState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamScopeState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamScopeState] whose value matches [value].
  IpamScopeState byValue(String value) => firstWhere((el) => el.value == value);
}
