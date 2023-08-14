// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.destination_file_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DestinationFileFormat extends _i1.SmithyEnum<DestinationFileFormat> {
  const DestinationFileFormat._(
    super.index,
    super.name,
    super.value,
  );

  const DestinationFileFormat._sdkUnknown(super.value) : super.sdkUnknown();

  static const parquet = DestinationFileFormat._(
    0,
    'parquet',
    'parquet',
  );

  static const plainText = DestinationFileFormat._(
    1,
    'plain_text',
    'plain-text',
  );

  /// All values of [DestinationFileFormat].
  static const values = <DestinationFileFormat>[
    DestinationFileFormat.parquet,
    DestinationFileFormat.plainText,
  ];

  static const List<_i1.SmithySerializer<DestinationFileFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'DestinationFileFormat',
      values: values,
      sdkUnknown: DestinationFileFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DestinationFileFormatHelpers on List<DestinationFileFormat> {
  /// Returns the value of [DestinationFileFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DestinationFileFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DestinationFileFormat] whose value matches [value].
  DestinationFileFormat byValue(String value) =>
      firstWhere((el) => el.value == value);
}
