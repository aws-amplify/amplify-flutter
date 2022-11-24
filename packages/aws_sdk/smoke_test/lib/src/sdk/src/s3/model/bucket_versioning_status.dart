// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.bucket_versioning_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BucketVersioningStatus extends _i1.SmithyEnum<BucketVersioningStatus> {
  const BucketVersioningStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BucketVersioningStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const enabled = BucketVersioningStatus._(
    0,
    'Enabled',
    'Enabled',
  );

  static const suspended = BucketVersioningStatus._(
    1,
    'Suspended',
    'Suspended',
  );

  /// All values of [BucketVersioningStatus].
  static const values = <BucketVersioningStatus>[
    BucketVersioningStatus.enabled,
    BucketVersioningStatus.suspended,
  ];

  static const List<_i1.SmithySerializer<BucketVersioningStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'BucketVersioningStatus',
      values: values,
      sdkUnknown: BucketVersioningStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension BucketVersioningStatusHelpers on List<BucketVersioningStatus> {
  /// Returns the value of [BucketVersioningStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BucketVersioningStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BucketVersioningStatus] whose value matches [value].
  BucketVersioningStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
