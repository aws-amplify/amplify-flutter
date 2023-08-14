// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_metadata_endpoint_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateInstanceMetadataEndpointState
    extends _i1.SmithyEnum<LaunchTemplateInstanceMetadataEndpointState> {
  const LaunchTemplateInstanceMetadataEndpointState._(
    super.index,
    super.name,
    super.value,
  );

  const LaunchTemplateInstanceMetadataEndpointState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = LaunchTemplateInstanceMetadataEndpointState._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = LaunchTemplateInstanceMetadataEndpointState._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [LaunchTemplateInstanceMetadataEndpointState].
  static const values = <LaunchTemplateInstanceMetadataEndpointState>[
    LaunchTemplateInstanceMetadataEndpointState.disabled,
    LaunchTemplateInstanceMetadataEndpointState.enabled,
  ];

  static const List<
          _i1.SmithySerializer<LaunchTemplateInstanceMetadataEndpointState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateInstanceMetadataEndpointState',
      values: values,
      sdkUnknown: LaunchTemplateInstanceMetadataEndpointState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateInstanceMetadataEndpointStateHelpers
    on List<LaunchTemplateInstanceMetadataEndpointState> {
  /// Returns the value of [LaunchTemplateInstanceMetadataEndpointState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateInstanceMetadataEndpointState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateInstanceMetadataEndpointState] whose value matches [value].
  LaunchTemplateInstanceMetadataEndpointState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
