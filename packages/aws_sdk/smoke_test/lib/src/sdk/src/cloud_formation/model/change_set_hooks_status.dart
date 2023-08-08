// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.change_set_hooks_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChangeSetHooksStatus extends _i1.SmithyEnum<ChangeSetHooksStatus> {
  const ChangeSetHooksStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ChangeSetHooksStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const planned = ChangeSetHooksStatus._(
    0,
    'PLANNED',
    'PLANNED',
  );

  static const planning = ChangeSetHooksStatus._(
    1,
    'PLANNING',
    'PLANNING',
  );

  static const unavailable = ChangeSetHooksStatus._(
    2,
    'UNAVAILABLE',
    'UNAVAILABLE',
  );

  /// All values of [ChangeSetHooksStatus].
  static const values = <ChangeSetHooksStatus>[
    ChangeSetHooksStatus.planned,
    ChangeSetHooksStatus.planning,
    ChangeSetHooksStatus.unavailable,
  ];

  static const List<_i1.SmithySerializer<ChangeSetHooksStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChangeSetHooksStatus',
      values: values,
      sdkUnknown: ChangeSetHooksStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ChangeSetHooksStatusHelpers on List<ChangeSetHooksStatus> {
  /// Returns the value of [ChangeSetHooksStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChangeSetHooksStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChangeSetHooksStatus] whose value matches [value].
  ChangeSetHooksStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
