// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.snapshot; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/sse_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/storage_tier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'snapshot.g.dart';

/// Describes a snapshot.
abstract class Snapshot
    with _i1.AWSEquatable<Snapshot>
    implements Built<Snapshot, SnapshotBuilder> {
  /// Describes a snapshot.
  factory Snapshot({
    String? dataEncryptionKeyId,
    String? description,
    bool? encrypted,
    String? kmsKeyId,
    String? ownerId,
    String? progress,
    String? snapshotId,
    DateTime? startTime,
    SnapshotState? state,
    String? stateMessage,
    String? volumeId,
    int? volumeSize,
    String? ownerAlias,
    String? outpostArn,
    List<Tag>? tags,
    StorageTier? storageTier,
    DateTime? restoreExpiryTime,
    SseType? sseType,
  }) {
    encrypted ??= false;
    volumeSize ??= 0;
    return _$Snapshot._(
      dataEncryptionKeyId: dataEncryptionKeyId,
      description: description,
      encrypted: encrypted,
      kmsKeyId: kmsKeyId,
      ownerId: ownerId,
      progress: progress,
      snapshotId: snapshotId,
      startTime: startTime,
      state: state,
      stateMessage: stateMessage,
      volumeId: volumeId,
      volumeSize: volumeSize,
      ownerAlias: ownerAlias,
      outpostArn: outpostArn,
      tags: tags == null ? null : _i2.BuiltList(tags),
      storageTier: storageTier,
      restoreExpiryTime: restoreExpiryTime,
      sseType: sseType,
    );
  }

  /// Describes a snapshot.
  factory Snapshot.build([void Function(SnapshotBuilder) updates]) = _$Snapshot;

  const Snapshot._();

  /// Constructs a [Snapshot] from a [payload] and [response].
  factory Snapshot.fromResponse(
    Snapshot payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<Snapshot>> serializers = [
    SnapshotEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotBuilder b) {
    b
      ..encrypted = false
      ..volumeSize = 0;
  }

  /// The data encryption key identifier for the snapshot. This value is a unique identifier that corresponds to the data encryption key that was used to encrypt the original volume or snapshot copy. Because data encryption keys are inherited by volumes created from snapshots, and vice versa, if snapshots share the same data encryption key identifier, then they belong to the same volume/snapshot lineage. This parameter is only returned by DescribeSnapshots.
  String? get dataEncryptionKeyId;

  /// The description for the snapshot.
  String? get description;

  /// Indicates whether the snapshot is encrypted.
  bool get encrypted;

  /// The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the parent volume.
  String? get kmsKeyId;

  /// The ID of the Amazon Web Services account that owns the EBS snapshot.
  String? get ownerId;

  /// The progress of the snapshot, as a percentage.
  String? get progress;

  /// The ID of the snapshot. Each snapshot receives a unique identifier when it is created.
  String? get snapshotId;

  /// The time stamp when the snapshot was initiated.
  DateTime? get startTime;

  /// The snapshot state.
  SnapshotState? get state;

  /// Encrypted Amazon EBS snapshots are copied asynchronously. If a snapshot copy operation fails (for example, if the proper Key Management Service (KMS) permissions are not obtained) this field displays error state details to help you diagnose why the error occurred. This parameter is only returned by DescribeSnapshots.
  String? get stateMessage;

  /// The ID of the volume that was used to create the snapshot. Snapshots created by the CopySnapshot action have an arbitrary volume ID that should not be used for any purpose.
  String? get volumeId;

  /// The size of the volume, in GiB.
  int get volumeSize;

  /// The Amazon Web Services owner alias, from an Amazon-maintained list (`amazon`). This is not the user-configured Amazon Web Services account alias set using the IAM console.
  String? get ownerAlias;

  /// The ARN of the Outpost on which the snapshot is stored. For more information, see [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;

  /// Any tags assigned to the snapshot.
  _i2.BuiltList<Tag>? get tags;

  /// The storage tier in which the snapshot is stored. `standard` indicates that the snapshot is stored in the standard snapshot storage tier and that it is ready for use. `archive` indicates that the snapshot is currently archived and that it must be restored before it can be used.
  StorageTier? get storageTier;

  /// Only for archived snapshots that are temporarily restored. Indicates the date and time when a temporarily restored snapshot will be automatically re-archived.
  DateTime? get restoreExpiryTime;

  /// Reserved for future use.
  SseType? get sseType;
  @override
  List<Object?> get props => [
        dataEncryptionKeyId,
        description,
        encrypted,
        kmsKeyId,
        ownerId,
        progress,
        snapshotId,
        startTime,
        state,
        stateMessage,
        volumeId,
        volumeSize,
        ownerAlias,
        outpostArn,
        tags,
        storageTier,
        restoreExpiryTime,
        sseType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Snapshot')
      ..add(
        'dataEncryptionKeyId',
        dataEncryptionKeyId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'encrypted',
        encrypted,
      )
      ..add(
        'kmsKeyId',
        kmsKeyId,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'progress',
        progress,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'stateMessage',
        stateMessage,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'volumeSize',
        volumeSize,
      )
      ..add(
        'ownerAlias',
        ownerAlias,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'storageTier',
        storageTier,
      )
      ..add(
        'restoreExpiryTime',
        restoreExpiryTime,
      )
      ..add(
        'sseType',
        sseType,
      );
    return helper.toString();
  }
}

class SnapshotEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Snapshot> {
  const SnapshotEc2QuerySerializer() : super('Snapshot');

  @override
  Iterable<Type> get types => const [
        Snapshot,
        _$Snapshot,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Snapshot deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dataEncryptionKeyId':
          result.dataEncryptionKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'kmsKeyId':
          result.kmsKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'status':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(SnapshotState),
          ) as SnapshotState);
        case 'statusMessage':
          result.stateMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeSize':
          result.volumeSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ownerAlias':
          result.ownerAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'storageTier':
          result.storageTier = (serializers.deserialize(
            value,
            specifiedType: const FullType(StorageTier),
          ) as StorageTier);
        case 'restoreExpiryTime':
          result.restoreExpiryTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'sseType':
          result.sseType = (serializers.deserialize(
            value,
            specifiedType: const FullType(SseType),
          ) as SseType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Snapshot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SnapshotResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Snapshot(
      :dataEncryptionKeyId,
      :description,
      :encrypted,
      :kmsKeyId,
      :ownerId,
      :progress,
      :snapshotId,
      :startTime,
      :state,
      :stateMessage,
      :volumeId,
      :volumeSize,
      :ownerAlias,
      :outpostArn,
      :tags,
      :storageTier,
      :restoreExpiryTime,
      :sseType
    ) = object;
    if (dataEncryptionKeyId != null) {
      result$
        ..add(const _i3.XmlElementName('DataEncryptionKeyId'))
        ..add(serializers.serialize(
          dataEncryptionKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    if (kmsKeyId != null) {
      result$
        ..add(const _i3.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i3.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i3.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(SnapshotState),
        ));
    }
    if (stateMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          stateMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        volumeSize,
        specifiedType: const FullType(int),
      ));
    if (ownerAlias != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerAlias'))
        ..add(serializers.serialize(
          ownerAlias,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (storageTier != null) {
      result$
        ..add(const _i3.XmlElementName('StorageTier'))
        ..add(serializers.serialize(
          storageTier,
          specifiedType: const FullType.nullable(StorageTier),
        ));
    }
    if (restoreExpiryTime != null) {
      result$
        ..add(const _i3.XmlElementName('RestoreExpiryTime'))
        ..add(serializers.serialize(
          restoreExpiryTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (sseType != null) {
      result$
        ..add(const _i3.XmlElementName('SseType'))
        ..add(serializers.serialize(
          sseType,
          specifiedType: const FullType.nullable(SseType),
        ));
    }
    return result$;
  }
}
