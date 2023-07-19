// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.data_protection_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DataProtectionStatus extends _i1.SmithyEnum<DataProtectionStatus> {
  const DataProtectionStatus._(
    super.index,
    super.name,
    super.value,
  );

  const DataProtectionStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const activated = DataProtectionStatus._(
    0,
    'ACTIVATED',
    'ACTIVATED',
  );

  static const archived = DataProtectionStatus._(
    1,
    'ARCHIVED',
    'ARCHIVED',
  );

  static const deleted = DataProtectionStatus._(
    2,
    'DELETED',
    'DELETED',
  );

  static const disabled = DataProtectionStatus._(
    3,
    'DISABLED',
    'DISABLED',
  );

  /// All values of [DataProtectionStatus].
  static const values = <DataProtectionStatus>[
    DataProtectionStatus.activated,
    DataProtectionStatus.archived,
    DataProtectionStatus.deleted,
    DataProtectionStatus.disabled,
  ];

  static const List<_i1.SmithySerializer<DataProtectionStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'DataProtectionStatus',
      values: values,
      sdkUnknown: DataProtectionStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension DataProtectionStatusHelpers on List<DataProtectionStatus> {
  /// Returns the value of [DataProtectionStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DataProtectionStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DataProtectionStatus] whose value matches [value].
  DataProtectionStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
