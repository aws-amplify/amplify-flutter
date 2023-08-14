// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_discovery_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamResourceDiscoveryAssociationState
    extends _i1.SmithyEnum<IpamResourceDiscoveryAssociationState> {
  const IpamResourceDiscoveryAssociationState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamResourceDiscoveryAssociationState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const associateComplete = IpamResourceDiscoveryAssociationState._(
    0,
    'ASSOCIATE_COMPLETE',
    'associate-complete',
  );

  static const associateFailed = IpamResourceDiscoveryAssociationState._(
    1,
    'ASSOCIATE_FAILED',
    'associate-failed',
  );

  static const associateInProgress = IpamResourceDiscoveryAssociationState._(
    2,
    'ASSOCIATE_IN_PROGRESS',
    'associate-in-progress',
  );

  static const disassociateComplete = IpamResourceDiscoveryAssociationState._(
    3,
    'DISASSOCIATE_COMPLETE',
    'disassociate-complete',
  );

  static const disassociateFailed = IpamResourceDiscoveryAssociationState._(
    4,
    'DISASSOCIATE_FAILED',
    'disassociate-failed',
  );

  static const disassociateInProgress = IpamResourceDiscoveryAssociationState._(
    5,
    'DISASSOCIATE_IN_PROGRESS',
    'disassociate-in-progress',
  );

  static const isolateComplete = IpamResourceDiscoveryAssociationState._(
    6,
    'ISOLATE_COMPLETE',
    'isolate-complete',
  );

  static const isolateInProgress = IpamResourceDiscoveryAssociationState._(
    7,
    'ISOLATE_IN_PROGRESS',
    'isolate-in-progress',
  );

  static const restoreInProgress = IpamResourceDiscoveryAssociationState._(
    8,
    'RESTORE_IN_PROGRESS',
    'restore-in-progress',
  );

  /// All values of [IpamResourceDiscoveryAssociationState].
  static const values = <IpamResourceDiscoveryAssociationState>[
    IpamResourceDiscoveryAssociationState.associateComplete,
    IpamResourceDiscoveryAssociationState.associateFailed,
    IpamResourceDiscoveryAssociationState.associateInProgress,
    IpamResourceDiscoveryAssociationState.disassociateComplete,
    IpamResourceDiscoveryAssociationState.disassociateFailed,
    IpamResourceDiscoveryAssociationState.disassociateInProgress,
    IpamResourceDiscoveryAssociationState.isolateComplete,
    IpamResourceDiscoveryAssociationState.isolateInProgress,
    IpamResourceDiscoveryAssociationState.restoreInProgress,
  ];

  static const List<_i1.SmithySerializer<IpamResourceDiscoveryAssociationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IpamResourceDiscoveryAssociationState',
      values: values,
      sdkUnknown: IpamResourceDiscoveryAssociationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamResourceDiscoveryAssociationStateHelpers
    on List<IpamResourceDiscoveryAssociationState> {
  /// Returns the value of [IpamResourceDiscoveryAssociationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamResourceDiscoveryAssociationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamResourceDiscoveryAssociationState] whose value matches [value].
  IpamResourceDiscoveryAssociationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
