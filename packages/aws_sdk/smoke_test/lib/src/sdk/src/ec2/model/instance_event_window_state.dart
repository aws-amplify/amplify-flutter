// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceEventWindowState
    extends _i1.SmithyEnum<InstanceEventWindowState> {
  const InstanceEventWindowState._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceEventWindowState._sdkUnknown(super.value) : super.sdkUnknown();

  static const active = InstanceEventWindowState._(
    0,
    'active',
    'active',
  );

  static const creating = InstanceEventWindowState._(
    1,
    'creating',
    'creating',
  );

  static const deleted = InstanceEventWindowState._(
    2,
    'deleted',
    'deleted',
  );

  static const deleting = InstanceEventWindowState._(
    3,
    'deleting',
    'deleting',
  );

  /// All values of [InstanceEventWindowState].
  static const values = <InstanceEventWindowState>[
    InstanceEventWindowState.active,
    InstanceEventWindowState.creating,
    InstanceEventWindowState.deleted,
    InstanceEventWindowState.deleting,
  ];

  static const List<_i1.SmithySerializer<InstanceEventWindowState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceEventWindowState',
      values: values,
      sdkUnknown: InstanceEventWindowState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceEventWindowStateHelpers on List<InstanceEventWindowState> {
  /// Returns the value of [InstanceEventWindowState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceEventWindowState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceEventWindowState] whose value matches [value].
  InstanceEventWindowState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
