// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_metadata_protocol_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceMetadataProtocolState
    extends _i1.SmithyEnum<InstanceMetadataProtocolState> {
  const InstanceMetadataProtocolState._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceMetadataProtocolState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disabled = InstanceMetadataProtocolState._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = InstanceMetadataProtocolState._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [InstanceMetadataProtocolState].
  static const values = <InstanceMetadataProtocolState>[
    InstanceMetadataProtocolState.disabled,
    InstanceMetadataProtocolState.enabled,
  ];

  static const List<_i1.SmithySerializer<InstanceMetadataProtocolState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceMetadataProtocolState',
      values: values,
      sdkUnknown: InstanceMetadataProtocolState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceMetadataProtocolStateHelpers
    on List<InstanceMetadataProtocolState> {
  /// Returns the value of [InstanceMetadataProtocolState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceMetadataProtocolState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceMetadataProtocolState] whose value matches [value].
  InstanceMetadataProtocolState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
