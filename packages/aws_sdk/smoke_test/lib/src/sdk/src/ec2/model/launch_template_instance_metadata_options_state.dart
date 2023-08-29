// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_metadata_options_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateInstanceMetadataOptionsState
    extends _i1.SmithyEnum<LaunchTemplateInstanceMetadataOptionsState> {
  const LaunchTemplateInstanceMetadataOptionsState._(
    super.index,
    super.name,
    super.value,
  );

  const LaunchTemplateInstanceMetadataOptionsState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const applied = LaunchTemplateInstanceMetadataOptionsState._(
    0,
    'applied',
    'applied',
  );

  static const pending = LaunchTemplateInstanceMetadataOptionsState._(
    1,
    'pending',
    'pending',
  );

  /// All values of [LaunchTemplateInstanceMetadataOptionsState].
  static const values = <LaunchTemplateInstanceMetadataOptionsState>[
    LaunchTemplateInstanceMetadataOptionsState.applied,
    LaunchTemplateInstanceMetadataOptionsState.pending,
  ];

  static const List<
          _i1.SmithySerializer<LaunchTemplateInstanceMetadataOptionsState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateInstanceMetadataOptionsState',
      values: values,
      sdkUnknown: LaunchTemplateInstanceMetadataOptionsState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateInstanceMetadataOptionsStateHelpers
    on List<LaunchTemplateInstanceMetadataOptionsState> {
  /// Returns the value of [LaunchTemplateInstanceMetadataOptionsState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateInstanceMetadataOptionsState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateInstanceMetadataOptionsState] whose value matches [value].
  LaunchTemplateInstanceMetadataOptionsState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
