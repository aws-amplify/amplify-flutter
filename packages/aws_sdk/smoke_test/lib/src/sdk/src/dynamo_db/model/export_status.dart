// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.export_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExportStatus extends _i1.SmithyEnum<ExportStatus> {
  const ExportStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ExportStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const completed = ExportStatus._(
    0,
    'COMPLETED',
    'COMPLETED',
  );

  static const failed = ExportStatus._(
    1,
    'FAILED',
    'FAILED',
  );

  static const inProgress = ExportStatus._(
    2,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  /// All values of [ExportStatus].
  static const values = <ExportStatus>[
    ExportStatus.completed,
    ExportStatus.failed,
    ExportStatus.inProgress,
  ];

  static const List<_i1.SmithySerializer<ExportStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExportStatus',
      values: values,
      sdkUnknown: ExportStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ExportStatusHelpers on List<ExportStatus> {
  /// Returns the value of [ExportStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExportStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExportStatus] whose value matches [value].
  ExportStatus byValue(String value) => firstWhere((el) => el.value == value);
}
