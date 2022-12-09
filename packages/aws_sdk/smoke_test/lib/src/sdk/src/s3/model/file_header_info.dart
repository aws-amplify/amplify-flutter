// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.file_header_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FileHeaderInfo extends _i1.SmithyEnum<FileHeaderInfo> {
  const FileHeaderInfo._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FileHeaderInfo._sdkUnknown(String value) : super.sdkUnknown(value);

  static const ignore = FileHeaderInfo._(
    0,
    'IGNORE',
    'IGNORE',
  );

  static const none = FileHeaderInfo._(
    1,
    'NONE',
    'NONE',
  );

  static const use = FileHeaderInfo._(
    2,
    'USE',
    'USE',
  );

  /// All values of [FileHeaderInfo].
  static const values = <FileHeaderInfo>[
    FileHeaderInfo.ignore,
    FileHeaderInfo.none,
    FileHeaderInfo.use,
  ];

  static const List<_i1.SmithySerializer<FileHeaderInfo>> serializers = [
    _i1.SmithyEnumSerializer(
      'FileHeaderInfo',
      values: values,
      sdkUnknown: FileHeaderInfo._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension FileHeaderInfoHelpers on List<FileHeaderInfo> {
  /// Returns the value of [FileHeaderInfo] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FileHeaderInfo byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FileHeaderInfo] whose value matches [value].
  FileHeaderInfo byValue(String value) => firstWhere((el) => el.value == value);
}
