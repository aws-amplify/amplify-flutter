// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume_status_info_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VolumeStatusInfoStatus extends _i1.SmithyEnum<VolumeStatusInfoStatus> {
  const VolumeStatusInfoStatus._(
    super.index,
    super.name,
    super.value,
  );

  const VolumeStatusInfoStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const impaired = VolumeStatusInfoStatus._(
    0,
    'impaired',
    'impaired',
  );

  static const insufficientData = VolumeStatusInfoStatus._(
    1,
    'insufficient_data',
    'insufficient-data',
  );

  static const ok = VolumeStatusInfoStatus._(
    2,
    'ok',
    'ok',
  );

  /// All values of [VolumeStatusInfoStatus].
  static const values = <VolumeStatusInfoStatus>[
    VolumeStatusInfoStatus.impaired,
    VolumeStatusInfoStatus.insufficientData,
    VolumeStatusInfoStatus.ok,
  ];

  static const List<_i1.SmithySerializer<VolumeStatusInfoStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'VolumeStatusInfoStatus',
      values: values,
      sdkUnknown: VolumeStatusInfoStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VolumeStatusInfoStatusHelpers on List<VolumeStatusInfoStatus> {
  /// Returns the value of [VolumeStatusInfoStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VolumeStatusInfoStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VolumeStatusInfoStatus] whose value matches [value].
  VolumeStatusInfoStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
