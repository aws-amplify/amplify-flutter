// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_gpu_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ElasticGpuStatus extends _i1.SmithyEnum<ElasticGpuStatus> {
  const ElasticGpuStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ElasticGpuStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const impaired = ElasticGpuStatus._(
    0,
    'Impaired',
    'IMPAIRED',
  );

  static const ok = ElasticGpuStatus._(
    1,
    'Ok',
    'OK',
  );

  /// All values of [ElasticGpuStatus].
  static const values = <ElasticGpuStatus>[
    ElasticGpuStatus.impaired,
    ElasticGpuStatus.ok,
  ];

  static const List<_i1.SmithySerializer<ElasticGpuStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ElasticGpuStatus',
      values: values,
      sdkUnknown: ElasticGpuStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ElasticGpuStatusHelpers on List<ElasticGpuStatus> {
  /// Returns the value of [ElasticGpuStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ElasticGpuStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ElasticGpuStatus] whose value matches [value].
  ElasticGpuStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
