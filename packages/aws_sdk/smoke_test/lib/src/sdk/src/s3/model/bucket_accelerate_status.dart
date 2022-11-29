// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.bucket_accelerate_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BucketAccelerateStatus extends _i1.SmithyEnum<BucketAccelerateStatus> {
  const BucketAccelerateStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BucketAccelerateStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const enabled = BucketAccelerateStatus._(
    0,
    'Enabled',
    'Enabled',
  );

  static const suspended = BucketAccelerateStatus._(
    1,
    'Suspended',
    'Suspended',
  );

  /// All values of [BucketAccelerateStatus].
  static const values = <BucketAccelerateStatus>[
    BucketAccelerateStatus.enabled,
    BucketAccelerateStatus.suspended,
  ];

  static const List<_i1.SmithySerializer<BucketAccelerateStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'BucketAccelerateStatus',
      values: values,
      sdkUnknown: BucketAccelerateStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension BucketAccelerateStatusHelpers on List<BucketAccelerateStatus> {
  /// Returns the value of [BucketAccelerateStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BucketAccelerateStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BucketAccelerateStatus] whose value matches [value].
  BucketAccelerateStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
