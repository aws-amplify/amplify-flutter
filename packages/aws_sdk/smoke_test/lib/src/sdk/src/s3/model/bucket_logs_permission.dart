// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.bucket_logs_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BucketLogsPermission extends _i1.SmithyEnum<BucketLogsPermission> {
  const BucketLogsPermission._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BucketLogsPermission._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const fullControl = BucketLogsPermission._(
    0,
    'FULL_CONTROL',
    'FULL_CONTROL',
  );

  static const read = BucketLogsPermission._(
    1,
    'READ',
    'READ',
  );

  static const write = BucketLogsPermission._(
    2,
    'WRITE',
    'WRITE',
  );

  /// All values of [BucketLogsPermission].
  static const values = <BucketLogsPermission>[
    BucketLogsPermission.fullControl,
    BucketLogsPermission.read,
    BucketLogsPermission.write,
  ];

  static const List<_i1.SmithySerializer<BucketLogsPermission>> serializers = [
    _i1.SmithyEnumSerializer(
      'BucketLogsPermission',
      values: values,
      sdkUnknown: BucketLogsPermission._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension BucketLogsPermissionHelpers on List<BucketLogsPermission> {
  /// Returns the value of [BucketLogsPermission] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BucketLogsPermission byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BucketLogsPermission] whose value matches [value].
  BucketLogsPermission byValue(String value) =>
      firstWhere((el) => el.value == value);
}
