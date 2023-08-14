// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_discovery_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamResourceDiscoveryState
    extends _i1.SmithyEnum<IpamResourceDiscoveryState> {
  const IpamResourceDiscoveryState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamResourceDiscoveryState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const createComplete = IpamResourceDiscoveryState._(
    0,
    'CREATE_COMPLETE',
    'create-complete',
  );

  static const createFailed = IpamResourceDiscoveryState._(
    1,
    'CREATE_FAILED',
    'create-failed',
  );

  static const createInProgress = IpamResourceDiscoveryState._(
    2,
    'CREATE_IN_PROGRESS',
    'create-in-progress',
  );

  static const deleteComplete = IpamResourceDiscoveryState._(
    3,
    'DELETE_COMPLETE',
    'delete-complete',
  );

  static const deleteFailed = IpamResourceDiscoveryState._(
    4,
    'DELETE_FAILED',
    'delete-failed',
  );

  static const deleteInProgress = IpamResourceDiscoveryState._(
    5,
    'DELETE_IN_PROGRESS',
    'delete-in-progress',
  );

  static const isolateComplete = IpamResourceDiscoveryState._(
    6,
    'ISOLATE_COMPLETE',
    'isolate-complete',
  );

  static const isolateInProgress = IpamResourceDiscoveryState._(
    7,
    'ISOLATE_IN_PROGRESS',
    'isolate-in-progress',
  );

  static const modifyComplete = IpamResourceDiscoveryState._(
    8,
    'MODIFY_COMPLETE',
    'modify-complete',
  );

  static const modifyFailed = IpamResourceDiscoveryState._(
    9,
    'MODIFY_FAILED',
    'modify-failed',
  );

  static const modifyInProgress = IpamResourceDiscoveryState._(
    10,
    'MODIFY_IN_PROGRESS',
    'modify-in-progress',
  );

  static const restoreInProgress = IpamResourceDiscoveryState._(
    11,
    'RESTORE_IN_PROGRESS',
    'restore-in-progress',
  );

  /// All values of [IpamResourceDiscoveryState].
  static const values = <IpamResourceDiscoveryState>[
    IpamResourceDiscoveryState.createComplete,
    IpamResourceDiscoveryState.createFailed,
    IpamResourceDiscoveryState.createInProgress,
    IpamResourceDiscoveryState.deleteComplete,
    IpamResourceDiscoveryState.deleteFailed,
    IpamResourceDiscoveryState.deleteInProgress,
    IpamResourceDiscoveryState.isolateComplete,
    IpamResourceDiscoveryState.isolateInProgress,
    IpamResourceDiscoveryState.modifyComplete,
    IpamResourceDiscoveryState.modifyFailed,
    IpamResourceDiscoveryState.modifyInProgress,
    IpamResourceDiscoveryState.restoreInProgress,
  ];

  static const List<_i1.SmithySerializer<IpamResourceDiscoveryState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IpamResourceDiscoveryState',
      values: values,
      sdkUnknown: IpamResourceDiscoveryState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamResourceDiscoveryStateHelpers
    on List<IpamResourceDiscoveryState> {
  /// Returns the value of [IpamResourceDiscoveryState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamResourceDiscoveryState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamResourceDiscoveryState] whose value matches [value].
  IpamResourceDiscoveryState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
