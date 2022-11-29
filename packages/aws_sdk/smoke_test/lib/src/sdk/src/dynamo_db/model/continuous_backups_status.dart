// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.continuous_backups_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ContinuousBackupsStatus extends _i1.SmithyEnum<ContinuousBackupsStatus> {
  const ContinuousBackupsStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ContinuousBackupsStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

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
