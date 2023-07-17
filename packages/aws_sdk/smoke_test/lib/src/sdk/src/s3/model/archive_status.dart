// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.archive_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ArchiveStatus extends _i1.SmithyEnum<ArchiveStatus> {
  const ArchiveStatus._(
    super.index,
    super.name,
    super.value,
  );

  const ArchiveStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const archiveAccess = ArchiveStatus._(
    0,
    'ARCHIVE_ACCESS',
    'ARCHIVE_ACCESS',
  );

  static const deepArchiveAccess = ArchiveStatus._(
    1,
    'DEEP_ARCHIVE_ACCESS',
    'DEEP_ARCHIVE_ACCESS',
  );

  /// All values of [ArchiveStatus].
  static const values = <ArchiveStatus>[
    ArchiveStatus.archiveAccess,
    ArchiveStatus.deepArchiveAccess,
  ];

  static const List<_i1.SmithySerializer<ArchiveStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ArchiveStatus',
      values: values,
      sdkUnknown: ArchiveStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ArchiveStatusHelpers on List<ArchiveStatus> {
  /// Returns the value of [ArchiveStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ArchiveStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ArchiveStatus] whose value matches [value].
  ArchiveStatus byValue(String value) => firstWhere((el) => el.value == value);
}
