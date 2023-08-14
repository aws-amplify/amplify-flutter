// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_metadata_endpoint_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceMetadataEndpointState
    extends _i1.SmithyEnum<InstanceMetadataEndpointState> {
  const InstanceMetadataEndpointState._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceMetadataEndpointState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = InstanceMetadataEndpointState._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = InstanceMetadataEndpointState._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [InstanceMetadataEndpointState].
  static const values = <InstanceMetadataEndpointState>[
    InstanceMetadataEndpointState.disabled,
    InstanceMetadataEndpointState.enabled,
  ];

  static const List<_i1.SmithySerializer<InstanceMetadataEndpointState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceMetadataEndpointState',
      values: values,
      sdkUnknown: InstanceMetadataEndpointState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceMetadataEndpointStateHelpers
    on List<InstanceMetadataEndpointState> {
  /// Returns the value of [InstanceMetadataEndpointState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceMetadataEndpointState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceMetadataEndpointState] whose value matches [value].
  InstanceMetadataEndpointState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
