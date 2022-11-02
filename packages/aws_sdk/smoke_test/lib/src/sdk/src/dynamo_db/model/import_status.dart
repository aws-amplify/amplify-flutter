// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.import_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ImportStatus extends _i1.SmithyEnum<ImportStatus> {
  const ImportStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ImportStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const cancelled = ImportStatus._(
    0,
    'CANCELLED',
    'CANCELLED',
  );

  static const cancelling = ImportStatus._(
    1,
    'CANCELLING',
    'CANCELLING',
  );

  static const completed = ImportStatus._(
    2,
    'COMPLETED',
    'COMPLETED',
  );

  static const failed = ImportStatus._(
    3,
    'FAILED',
    'FAILED',
  );

  static const inProgress = ImportStatus._(
    4,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  /// All values of [ImportStatus].
  static const values = <ImportStatus>[
    ImportStatus.cancelled,
    ImportStatus.cancelling,
    ImportStatus.completed,
    ImportStatus.failed,
    ImportStatus.inProgress,
  ];

  static const List<_i1.SmithySerializer<ImportStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ImportStatus',
      values: values,
      sdkUnknown: ImportStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ImportStatusHelpers on List<ImportStatus> {
  /// Returns the value of [ImportStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ImportStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ImportStatus] whose value matches [value].
  ImportStatus byValue(String value) => firstWhere((el) => el.value == value);
}
