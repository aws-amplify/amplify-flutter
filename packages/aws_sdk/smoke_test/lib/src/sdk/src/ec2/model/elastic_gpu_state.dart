// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_gpu_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ElasticGpuState extends _i1.SmithyEnum<ElasticGpuState> {
  const ElasticGpuState._(
    super.index,
    super.name,
    super.value,
  );

  const ElasticGpuState._sdkUnknown(super.value) : super.sdkUnknown();

  static const attached = ElasticGpuState._(
    0,
    'Attached',
    'ATTACHED',
  );

  /// All values of [ElasticGpuState].
  static const values = <ElasticGpuState>[ElasticGpuState.attached];

  static const List<_i1.SmithySerializer<ElasticGpuState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ElasticGpuState',
      values: values,
      sdkUnknown: ElasticGpuState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ElasticGpuStateHelpers on List<ElasticGpuState> {
  /// Returns the value of [ElasticGpuState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ElasticGpuState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ElasticGpuState] whose value matches [value].
  ElasticGpuState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
