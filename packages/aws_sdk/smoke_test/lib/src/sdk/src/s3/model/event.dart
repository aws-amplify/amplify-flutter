// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// The bucket event for which to send notifications.
class Event extends _i1.SmithyEnum<Event> {
  const Event._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Event._sdkUnknown(String value) : super.sdkUnknown(value);

  static const s3IntelligentTiering = Event._(
    0,
    's3:IntelligentTiering',
    's3:IntelligentTiering',
  );

  static const s3LifecycleExpiration = Event._(
    1,
    's3:LifecycleExpiration:*',
    's3:LifecycleExpiration:*',
  );

  static const s3LifecycleExpirationDelete = Event._(
    2,
    's3:LifecycleExpiration:Delete',
    's3:LifecycleExpiration:Delete',
  );

  static const s3LifecycleExpirationDeleteMarkerCreated = Event._(
    3,
    's3:LifecycleExpiration:DeleteMarkerCreated',
    's3:LifecycleExpiration:DeleteMarkerCreated',
  );

  static const s3LifecycleTransition = Event._(
    4,
    's3:LifecycleTransition',
    's3:LifecycleTransition',
  );

  static const s3ObjectAclPut = Event._(
    5,
    's3:ObjectAcl:Put',
    's3:ObjectAcl:Put',
  );

  static const s3ObjectCreated = Event._(
    6,
    's3:ObjectCreated:*',
    's3:ObjectCreated:*',
  );

  static const s3ObjectCreatedCompleteMultipartUpload = Event._(
    7,
    's3:ObjectCreated:CompleteMultipartUpload',
    's3:ObjectCreated:CompleteMultipartUpload',
  );

  static const s3ObjectCreatedCopy = Event._(
    8,
    's3:ObjectCreated:Copy',
    's3:ObjectCreated:Copy',
  );

  static const s3ObjectCreatedPost = Event._(
    9,
    's3:ObjectCreated:Post',
    's3:ObjectCreated:Post',
  );

  static const s3ObjectCreatedPut = Event._(
    10,
    's3:ObjectCreated:Put',
    's3:ObjectCreated:Put',
  );

  static const s3ObjectRemoved = Event._(
    11,
    's3:ObjectRemoved:*',
    's3:ObjectRemoved:*',
  );

  static const s3ObjectRemovedDelete = Event._(
    12,
    's3:ObjectRemoved:Delete',
    's3:ObjectRemoved:Delete',
  );

  static const s3ObjectRemovedDeleteMarkerCreated = Event._(
    13,
    's3:ObjectRemoved:DeleteMarkerCreated',
    's3:ObjectRemoved:DeleteMarkerCreated',
  );

  static const s3ObjectRestore = Event._(
    14,
    's3:ObjectRestore:*',
    's3:ObjectRestore:*',
  );

  static const s3ObjectRestoreCompleted = Event._(
    15,
    's3:ObjectRestore:Completed',
    's3:ObjectRestore:Completed',
  );

  static const s3ObjectRestoreDelete = Event._(
    16,
    's3:ObjectRestore:Delete',
    's3:ObjectRestore:Delete',
  );

  static const s3ObjectRestorePost = Event._(
    17,
    's3:ObjectRestore:Post',
    's3:ObjectRestore:Post',
  );

  static const s3ObjectTagging = Event._(
    18,
    's3:ObjectTagging:*',
    's3:ObjectTagging:*',
  );

  static const s3ObjectTaggingDelete = Event._(
    19,
    's3:ObjectTagging:Delete',
    's3:ObjectTagging:Delete',
  );

  static const s3ObjectTaggingPut = Event._(
    20,
    's3:ObjectTagging:Put',
    's3:ObjectTagging:Put',
  );

  static const s3ReducedRedundancyLostObject = Event._(
    21,
    's3:ReducedRedundancyLostObject',
    's3:ReducedRedundancyLostObject',
  );

  static const s3Replication = Event._(
    22,
    's3:Replication:*',
    's3:Replication:*',
  );

  static const s3ReplicationOperationFailedReplication = Event._(
    23,
    's3:Replication:OperationFailedReplication',
    's3:Replication:OperationFailedReplication',
  );

  static const s3ReplicationOperationMissedThreshold = Event._(
    24,
    's3:Replication:OperationMissedThreshold',
    's3:Replication:OperationMissedThreshold',
  );

  static const s3ReplicationOperationNotTracked = Event._(
    25,
    's3:Replication:OperationNotTracked',
    's3:Replication:OperationNotTracked',
  );

  static const s3ReplicationOperationReplicatedAfterThreshold = Event._(
    26,
    's3:Replication:OperationReplicatedAfterThreshold',
    's3:Replication:OperationReplicatedAfterThreshold',
  );

  /// All values of [Event].
  static const values = <Event>[
    Event.s3IntelligentTiering,
    Event.s3LifecycleExpiration,
    Event.s3LifecycleExpirationDelete,
    Event.s3LifecycleExpirationDeleteMarkerCreated,
    Event.s3LifecycleTransition,
    Event.s3ObjectAclPut,
    Event.s3ObjectCreated,
    Event.s3ObjectCreatedCompleteMultipartUpload,
    Event.s3ObjectCreatedCopy,
    Event.s3ObjectCreatedPost,
    Event.s3ObjectCreatedPut,
    Event.s3ObjectRemoved,
    Event.s3ObjectRemovedDelete,
    Event.s3ObjectRemovedDeleteMarkerCreated,
    Event.s3ObjectRestore,
    Event.s3ObjectRestoreCompleted,
    Event.s3ObjectRestoreDelete,
    Event.s3ObjectRestorePost,
    Event.s3ObjectTagging,
    Event.s3ObjectTaggingDelete,
    Event.s3ObjectTaggingPut,
    Event.s3ReducedRedundancyLostObject,
    Event.s3Replication,
    Event.s3ReplicationOperationFailedReplication,
    Event.s3ReplicationOperationMissedThreshold,
    Event.s3ReplicationOperationNotTracked,
    Event.s3ReplicationOperationReplicatedAfterThreshold,
  ];

  static const List<_i1.SmithySerializer<Event>> serializers = [
    _i1.SmithyEnumSerializer(
      'Event',
      values: values,
      sdkUnknown: Event._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension EventHelpers on List<Event> {
  /// Returns the value of [Event] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Event byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Event] whose value matches [value].
  Event byValue(String value) => firstWhere((el) => el.value == value);
}
