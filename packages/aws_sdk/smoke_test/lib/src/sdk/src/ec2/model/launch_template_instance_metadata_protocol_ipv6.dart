// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_metadata_protocol_ipv6; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateInstanceMetadataProtocolIpv6
    extends _i1.SmithyEnum<LaunchTemplateInstanceMetadataProtocolIpv6> {
  const LaunchTemplateInstanceMetadataProtocolIpv6._(
    super.index,
    super.name,
    super.value,
  );

  const LaunchTemplateInstanceMetadataProtocolIpv6._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = LaunchTemplateInstanceMetadataProtocolIpv6._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = LaunchTemplateInstanceMetadataProtocolIpv6._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [LaunchTemplateInstanceMetadataProtocolIpv6].
  static const values = <LaunchTemplateInstanceMetadataProtocolIpv6>[
    LaunchTemplateInstanceMetadataProtocolIpv6.disabled,
    LaunchTemplateInstanceMetadataProtocolIpv6.enabled,
  ];

  static const List<
          _i1.SmithySerializer<LaunchTemplateInstanceMetadataProtocolIpv6>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateInstanceMetadataProtocolIpv6',
      values: values,
      sdkUnknown: LaunchTemplateInstanceMetadataProtocolIpv6._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateInstanceMetadataProtocolIpv6Helpers
    on List<LaunchTemplateInstanceMetadataProtocolIpv6> {
  /// Returns the value of [LaunchTemplateInstanceMetadataProtocolIpv6] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateInstanceMetadataProtocolIpv6 byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateInstanceMetadataProtocolIpv6] whose value matches [value].
  LaunchTemplateInstanceMetadataProtocolIpv6 byValue(String value) =>
      firstWhere((el) => el.value == value);
}
