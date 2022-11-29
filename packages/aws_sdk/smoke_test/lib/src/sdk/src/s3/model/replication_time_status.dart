// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.replication_time_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplicationTimeStatus extends _i1.SmithyEnum<ReplicationTimeStatus> {
  const ReplicationTimeStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReplicationTimeStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = ReplicationTimeStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = ReplicationTimeStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [ReplicationTimeStatus].
  static const values = <ReplicationTimeStatus>[
    ReplicationTimeStatus.disabled,
    ReplicationTimeStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<ReplicationTimeStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ReplicationTimeStatus',
      values: values,
      sdkUnknown: ReplicationTimeStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ReplicationTimeStatusHelpers on List<ReplicationTimeStatus> {
  /// Returns the value of [ReplicationTimeStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplicationTimeStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplicationTimeStatus] whose value matches [value].
  ReplicationTimeStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
