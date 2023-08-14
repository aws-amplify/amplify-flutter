// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replacement_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplacementStrategy extends _i1.SmithyEnum<ReplacementStrategy> {
  const ReplacementStrategy._(
    super.index,
    super.name,
    super.value,
  );

  const ReplacementStrategy._sdkUnknown(super.value) : super.sdkUnknown();

  static const launch = ReplacementStrategy._(
    0,
    'LAUNCH',
    'launch',
  );

  static const launchBeforeTerminate = ReplacementStrategy._(
    1,
    'LAUNCH_BEFORE_TERMINATE',
    'launch-before-terminate',
  );

  /// All values of [ReplacementStrategy].
  static const values = <ReplacementStrategy>[
    ReplacementStrategy.launch,
    ReplacementStrategy.launchBeforeTerminate,
  ];

  static const List<_i1.SmithySerializer<ReplacementStrategy>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReplacementStrategy',
      values: values,
      sdkUnknown: ReplacementStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ReplacementStrategyHelpers on List<ReplacementStrategy> {
  /// Returns the value of [ReplacementStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplacementStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplacementStrategy] whose value matches [value].
  ReplacementStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
