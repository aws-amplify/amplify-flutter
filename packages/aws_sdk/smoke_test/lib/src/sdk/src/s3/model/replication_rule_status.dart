// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.replication_rule_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplicationRuleStatus extends _i1.SmithyEnum<ReplicationRuleStatus> {
  const ReplicationRuleStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ReplicationRuleStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = ReplicationRuleStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = ReplicationRuleStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [ReplicationRuleStatus].
  static const values = <ReplicationRuleStatus>[
    ReplicationRuleStatus.disabled,
    ReplicationRuleStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<ReplicationRuleStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReplicationRuleStatus',
      values: values,
      sdkUnknown: ReplicationRuleStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ReplicationRuleStatusHelpers on List<ReplicationRuleStatus> {
  /// Returns the value of [ReplicationRuleStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplicationRuleStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplicationRuleStatus] whose value matches [value].
  ReplicationRuleStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
