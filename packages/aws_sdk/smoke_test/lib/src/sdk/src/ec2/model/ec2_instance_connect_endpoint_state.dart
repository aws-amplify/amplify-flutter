// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ec2_instance_connect_endpoint_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Ec2InstanceConnectEndpointState
    extends _i1.SmithyEnum<Ec2InstanceConnectEndpointState> {
  const Ec2InstanceConnectEndpointState._(
    super.index,
    super.name,
    super.value,
  );

  const Ec2InstanceConnectEndpointState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const createComplete = Ec2InstanceConnectEndpointState._(
    0,
    'create_complete',
    'create-complete',
  );

  static const createFailed = Ec2InstanceConnectEndpointState._(
    1,
    'create_failed',
    'create-failed',
  );

  static const createInProgress = Ec2InstanceConnectEndpointState._(
    2,
    'create_in_progress',
    'create-in-progress',
  );

  static const deleteComplete = Ec2InstanceConnectEndpointState._(
    3,
    'delete_complete',
    'delete-complete',
  );

  static const deleteFailed = Ec2InstanceConnectEndpointState._(
    4,
    'delete_failed',
    'delete-failed',
  );

  static const deleteInProgress = Ec2InstanceConnectEndpointState._(
    5,
    'delete_in_progress',
    'delete-in-progress',
  );

  /// All values of [Ec2InstanceConnectEndpointState].
  static const values = <Ec2InstanceConnectEndpointState>[
    Ec2InstanceConnectEndpointState.createComplete,
    Ec2InstanceConnectEndpointState.createFailed,
    Ec2InstanceConnectEndpointState.createInProgress,
    Ec2InstanceConnectEndpointState.deleteComplete,
    Ec2InstanceConnectEndpointState.deleteFailed,
    Ec2InstanceConnectEndpointState.deleteInProgress,
  ];

  static const List<_i1.SmithySerializer<Ec2InstanceConnectEndpointState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'Ec2InstanceConnectEndpointState',
      values: values,
      sdkUnknown: Ec2InstanceConnectEndpointState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension Ec2InstanceConnectEndpointStateHelpers
    on List<Ec2InstanceConnectEndpointState> {
  /// Returns the value of [Ec2InstanceConnectEndpointState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Ec2InstanceConnectEndpointState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Ec2InstanceConnectEndpointState] whose value matches [value].
  Ec2InstanceConnectEndpointState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
