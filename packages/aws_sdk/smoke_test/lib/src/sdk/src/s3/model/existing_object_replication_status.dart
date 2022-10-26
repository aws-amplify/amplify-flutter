// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.existing_object_replication_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExistingObjectReplicationStatus
    extends _i1.SmithyEnum<ExistingObjectReplicationStatus> {
  const ExistingObjectReplicationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExistingObjectReplicationStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = ExistingObjectReplicationStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = ExistingObjectReplicationStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [ExistingObjectReplicationStatus].
  static const values = <ExistingObjectReplicationStatus>[
    ExistingObjectReplicationStatus.disabled,
    ExistingObjectReplicationStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<ExistingObjectReplicationStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ExistingObjectReplicationStatus',
      values: values,
      sdkUnknown: ExistingObjectReplicationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ExistingObjectReplicationStatusHelpers
    on List<ExistingObjectReplicationStatus> {
  /// Returns the value of [ExistingObjectReplicationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExistingObjectReplicationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExistingObjectReplicationStatus] whose value matches [value].
  ExistingObjectReplicationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
