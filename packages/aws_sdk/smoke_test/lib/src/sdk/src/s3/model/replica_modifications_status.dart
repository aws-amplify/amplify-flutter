// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.replica_modifications_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ReplicaModificationsStatus
    extends _i1.SmithyEnum<ReplicaModificationsStatus> {
  const ReplicaModificationsStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReplicaModificationsStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = ReplicaModificationsStatus._(
    0,
    'Disabled',
    'Disabled',
  );

  static const enabled = ReplicaModificationsStatus._(
    1,
    'Enabled',
    'Enabled',
  );

  /// All values of [ReplicaModificationsStatus].
  static const values = <ReplicaModificationsStatus>[
    ReplicaModificationsStatus.disabled,
    ReplicaModificationsStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<ReplicaModificationsStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ReplicaModificationsStatus',
      values: values,
      sdkUnknown: ReplicaModificationsStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension ReplicaModificationsStatusHelpers
    on List<ReplicaModificationsStatus> {
  /// Returns the value of [ReplicaModificationsStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReplicaModificationsStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReplicaModificationsStatus] whose value matches [value].
  ReplicaModificationsStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
