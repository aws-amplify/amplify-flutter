// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.continuous_backups_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContinuousBackupsStatus extends _i1.SmithyEnum<ContinuousBackupsStatus> {
  const ContinuousBackupsStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ContinuousBackupsStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = ContinuousBackupsStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const enabled = ContinuousBackupsStatus._(
    1,
    'ENABLED',
    'ENABLED',
  );

  /// All values of [ContinuousBackupsStatus].
  static const values = <ContinuousBackupsStatus>[
    ContinuousBackupsStatus.disabled,
    ContinuousBackupsStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<ContinuousBackupsStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ContinuousBackupsStatus',
      values: values,
      sdkUnknown: ContinuousBackupsStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ContinuousBackupsStatusHelpers on List<ContinuousBackupsStatus> {
  /// Returns the value of [ContinuousBackupsStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ContinuousBackupsStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ContinuousBackupsStatus] whose value matches [value].
  ContinuousBackupsStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}