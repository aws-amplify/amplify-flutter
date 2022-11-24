// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_marker_replication_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeleteMarkerReplicationStatus
    extends _i1.SmithyEnum<DeleteMarkerReplicationStatus> {
  const DeleteMarkerReplicationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DeleteMarkerReplicationStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = DeleteMarkerReplicationStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = DeleteMarkerReplicationStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [DeleteMarkerReplicationStatus].
  static const values = <DeleteMarkerReplicationStatus>[
    DeleteMarkerReplicationStatus.disabled,
    DeleteMarkerReplicationStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<DeleteMarkerReplicationStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DeleteMarkerReplicationStatus',
      values: values,
      sdkUnknown: DeleteMarkerReplicationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension DeleteMarkerReplicationStatusHelpers
    on List<DeleteMarkerReplicationStatus> {
  /// Returns the value of [DeleteMarkerReplicationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeleteMarkerReplicationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeleteMarkerReplicationStatus] whose value matches [value].
  DeleteMarkerReplicationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
