// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.burstable_performance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BurstablePerformance extends _i1.SmithyEnum<BurstablePerformance> {
  const BurstablePerformance._(
    super.index,
    super.name,
    super.value,
  );

  const BurstablePerformance._sdkUnknown(super.value) : super.sdkUnknown();

  static const excluded = BurstablePerformance._(
    0,
    'EXCLUDED',
    'excluded',
  );

  static const included = BurstablePerformance._(
    1,
    'INCLUDED',
    'included',
  );

  static const required = BurstablePerformance._(
    2,
    'REQUIRED',
    'required',
  );

  /// All values of [BurstablePerformance].
  static const values = <BurstablePerformance>[
    BurstablePerformance.excluded,
    BurstablePerformance.included,
    BurstablePerformance.required,
  ];

  static const List<_i1.SmithySerializer<BurstablePerformance>> serializers = [
    _i1.SmithyEnumSerializer(
      'BurstablePerformance',
      values: values,
      sdkUnknown: BurstablePerformance._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BurstablePerformanceHelpers on List<BurstablePerformance> {
  /// Returns the value of [BurstablePerformance] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BurstablePerformance byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BurstablePerformance] whose value matches [value].
  BurstablePerformance byValue(String value) =>
      firstWhere((el) => el.value == value);
}
