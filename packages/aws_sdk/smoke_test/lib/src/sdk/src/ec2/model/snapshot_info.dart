// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.snapshot_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/sse_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'snapshot_info.g.dart';

/// Information about a snapshot.
abstract class SnapshotInfo
    with _i1.AWSEquatable<SnapshotInfo>
    implements Built<SnapshotInfo, SnapshotInfoBuilder> {
  /// Information about a snapshot.
  factory SnapshotInfo({
    String? description,
    List<Tag>? tags,
    bool? encrypted,
    String? volumeId,
    SnapshotState? state,
    int? volumeSize,
    DateTime? startTime,
    String? progress,
    String? ownerId,
    String? snapshotId,
    String? outpostArn,
    SseType? sseType,
  }) {
    encrypted ??= false;
    volumeSize ??= 0;
    return _$SnapshotInfo._(
      description: description,
      tags: tags == null ? null : _i2.BuiltList(tags),
      encrypted: encrypted,
      volumeId: volumeId,
      state: state,
      volumeSize: volumeSize,
      startTime: startTime,
      progress: progress,
      ownerId: ownerId,
      snapshotId: snapshotId,
      outpostArn: outpostArn,
      sseType: sseType,
    );
  }

  /// Information about a snapshot.
  factory SnapshotInfo.build([void Function(SnapshotInfoBuilder) updates]) =
      _$SnapshotInfo;

  const SnapshotInfo._();

  static const List<_i3.SmithySerializer<SnapshotInfo>> serializers = [
    SnapshotInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotInfoBuilder b) {
    b
      ..encrypted = false
      ..volumeSize = 0;
  }

  /// Description specified by the CreateSnapshotRequest that has been applied to all snapshots.
  String? get description;

  /// Tags associated with this snapshot.
  _i2.BuiltList<Tag>? get tags;

  /// Indicates whether the snapshot is encrypted.
  bool get encrypted;

  /// Source volume from which this snapshot was created.
  String? get volumeId;

  /// Current state of the snapshot.
  SnapshotState? get state;

  /// Size of the volume from which this snapshot was created.
  int get volumeSize;

  /// Time this snapshot was started. This is the same for all snapshots initiated by the same request.
  DateTime? get startTime;

  /// Progress this snapshot has made towards completing.
  String? get progress;

  /// Account id used when creating this snapshot.
  String? get ownerId;

  /// Snapshot id that can be used to describe this snapshot.
  String? get snapshotId;

  /// The ARN of the Outpost on which the snapshot is stored. For more information, see [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;

  /// Reserved for future use.
  SseType? get sseType;
  @override
  List<Object?> get props => [
        description,
        tags,
        encrypted,
        volumeId,
        state,
        volumeSize,
        startTime,
        progress,
        ownerId,
        snapshotId,
        outpostArn,
        sseType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotInfo')
      ..add(
        'description',
        description,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'encrypted',
        encrypted,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'volumeSize',
        volumeSize,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'progress',
        progress,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'sseType',
        sseType,
      );
    return helper.toString();
  }
}

class SnapshotInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SnapshotInfo> {
  const SnapshotInfoEc2QuerySerializer() : super('SnapshotInfo');

  @override
  Iterable<Type> get types => const [
        SnapshotInfo,
        _$SnapshotInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
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
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(SnapshotState),
          ) as SnapshotState);
        case 'volumeSize':
          result.volumeSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'progress':
          result.progress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    SnapshotInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SnapshotInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SnapshotInfo(
      :description,
      :tags,
      :encrypted,
      :volumeId,
      :state,
      :volumeSize,
      :startTime,
      :progress,
      :ownerId,
      :snapshotId,
      :outpostArn,
      :sseType
    ) = object;
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    if (volumeId != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(SnapshotState),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        volumeSize,
        specifiedType: const FullType(int),
      ));
    if (startTime != null) {
      result$
        ..add(const _i3.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
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
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
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
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (sseType != null) {
      result$
        ..add(const _i3.XmlElementName('SseType'))
        ..add(serializers.serialize(
          sseType,
          specifiedType: const FullType(SseType),
        ));
    }
    return result$;
  }
}
