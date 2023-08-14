// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_metadata_options_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceMetadataOptionsState
    extends _i1.SmithyEnum<InstanceMetadataOptionsState> {
  const InstanceMetadataOptionsState._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceMetadataOptionsState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const applied = InstanceMetadataOptionsState._(
    0,
    'applied',
    'applied',
  );

  static const pending = InstanceMetadataOptionsState._(
    1,
    'pending',
    'pending',
  );

  /// All values of [InstanceMetadataOptionsState].
  static const values = <InstanceMetadataOptionsState>[
    InstanceMetadataOptionsState.applied,
    InstanceMetadataOptionsState.pending,
  ];

  static const List<_i1.SmithySerializer<InstanceMetadataOptionsState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceMetadataOptionsState',
      values: values,
      sdkUnknown: InstanceMetadataOptionsState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceMetadataOptionsStateHelpers
    on List<InstanceMetadataOptionsState> {
  /// Returns the value of [InstanceMetadataOptionsState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceMetadataOptionsState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceMetadataOptionsState] whose value matches [value].
  InstanceMetadataOptionsState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
