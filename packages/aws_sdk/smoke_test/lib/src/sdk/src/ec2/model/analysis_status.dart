// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AnalysisStatus extends _i1.SmithyEnum<AnalysisStatus> {
  const AnalysisStatus._(
    super.index,
    super.name,
    super.value,
  );

  const AnalysisStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const failed = AnalysisStatus._(
    0,
    'failed',
    'failed',
  );

  static const running = AnalysisStatus._(
    1,
    'running',
    'running',
  );

  static const succeeded = AnalysisStatus._(
    2,
    'succeeded',
    'succeeded',
  );

  /// All values of [AnalysisStatus].
  static const values = <AnalysisStatus>[
    AnalysisStatus.failed,
    AnalysisStatus.running,
    AnalysisStatus.succeeded,
  ];

  static const List<_i1.SmithySerializer<AnalysisStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'AnalysisStatus',
      values: values,
      sdkUnknown: AnalysisStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AnalysisStatusHelpers on List<AnalysisStatus> {
  /// Returns the value of [AnalysisStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AnalysisStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AnalysisStatus] whose value matches [value].
  AnalysisStatus byValue(String value) => firstWhere((el) => el.value == value);
}
