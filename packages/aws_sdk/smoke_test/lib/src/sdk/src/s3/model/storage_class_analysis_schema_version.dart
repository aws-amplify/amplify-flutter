// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.storage_class_analysis_schema_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StorageClassAnalysisSchemaVersion
    extends _i1.SmithyEnum<StorageClassAnalysisSchemaVersion> {
  const StorageClassAnalysisSchemaVersion._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StorageClassAnalysisSchemaVersion._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const v1 = StorageClassAnalysisSchemaVersion._(
    0,
    'V_1',
    'V_1',
  );

  /// All values of [StorageClassAnalysisSchemaVersion].
  static const values = <StorageClassAnalysisSchemaVersion>[
    StorageClassAnalysisSchemaVersion.v1
  ];

  static const List<_i1.SmithySerializer<StorageClassAnalysisSchemaVersion>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'StorageClassAnalysisSchemaVersion',
      values: values,
      sdkUnknown: StorageClassAnalysisSchemaVersion._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension StorageClassAnalysisSchemaVersionHelpers
    on List<StorageClassAnalysisSchemaVersion> {
  /// Returns the value of [StorageClassAnalysisSchemaVersion] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StorageClassAnalysisSchemaVersion byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StorageClassAnalysisSchemaVersion] whose value matches [value].
  StorageClassAnalysisSchemaVersion byValue(String value) =>
      firstWhere((el) => el.value == value);
}
