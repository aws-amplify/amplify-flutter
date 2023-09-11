// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.volume; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/sse_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart';

part 'volume.g.dart';

/// Describes a volume.
abstract class Volume
    with _i1.AWSEquatable<Volume>
    implements Built<Volume, VolumeBuilder> {
  /// Describes a volume.
  factory Volume({
    List<VolumeAttachment>? attachments,
    String? availabilityZone,
    DateTime? createTime,
    bool? encrypted,
    String? kmsKeyId,
    String? outpostArn,
    int? size,
    String? snapshotId,
    VolumeState? state,
    String? volumeId,
    int? iops,
    List<Tag>? tags,
    VolumeType? volumeType,
    bool? fastRestored,
    bool? multiAttachEnabled,
    int? throughput,
    SseType? sseType,
  }) {
    encrypted ??= false;
    size ??= 0;
    iops ??= 0;
    fastRestored ??= false;
    multiAttachEnabled ??= false;
    throughput ??= 0;
    return _$Volume._(
      attachments: attachments == null ? null : _i2.BuiltList(attachments),
      availabilityZone: availabilityZone,
      createTime: createTime,
      encrypted: encrypted,
      kmsKeyId: kmsKeyId,
      outpostArn: outpostArn,
      size: size,
      snapshotId: snapshotId,
      state: state,
      volumeId: volumeId,
      iops: iops,
      tags: tags == null ? null : _i2.BuiltList(tags),
      volumeType: volumeType,
      fastRestored: fastRestored,
      multiAttachEnabled: multiAttachEnabled,
      throughput: throughput,
      sseType: sseType,
    );
  }

  /// Describes a volume.
  factory Volume.build([void Function(VolumeBuilder) updates]) = _$Volume;

  const Volume._();

  /// Constructs a [Volume] from a [payload] and [response].
  factory Volume.fromResponse(
    Volume payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<Volume>> serializers = [
    VolumeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeBuilder b) {
    b
      ..encrypted = false
      ..size = 0
      ..iops = 0
      ..fastRestored = false
      ..multiAttachEnabled = false
      ..throughput = 0;
  }

  /// Information about the volume attachments.
  _i2.BuiltList<VolumeAttachment>? get attachments;

  /// The Availability Zone for the volume.
  String? get availabilityZone;

  /// The time stamp when volume creation was initiated.
  DateTime? get createTime;

  /// Indicates whether the volume is encrypted.
  bool get encrypted;

  /// The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the volume.
  String? get kmsKeyId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The size of the volume, in GiBs.
  int get size;

  /// The snapshot from which the volume was created, if applicable.
  String? get snapshotId;

  /// The volume state.
  VolumeState? get state;

  /// The ID of the volume.
  String? get volumeId;

  /// The number of I/O operations per second (IOPS). For `gp3`, `io1`, and `io2` volumes, this represents the number of IOPS that are provisioned for the volume. For `gp2` volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.
  int get iops;

  /// Any tags assigned to the volume.
  _i2.BuiltList<Tag>? get tags;

  /// The volume type.
  VolumeType? get volumeType;

  /// Indicates whether the volume was created using fast snapshot restore.
  bool get fastRestored;

  /// Indicates whether Amazon EBS Multi-Attach is enabled.
  bool get multiAttachEnabled;

  /// The throughput that the volume supports, in MiB/s.
  int get throughput;

  /// Reserved for future use.
  SseType? get sseType;
  @override
  List<Object?> get props => [
        attachments,
        availabilityZone,
        createTime,
        encrypted,
        kmsKeyId,
        outpostArn,
        size,
        snapshotId,
        state,
        volumeId,
        iops,
        tags,
        volumeType,
        fastRestored,
        multiAttachEnabled,
        throughput,
        sseType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Volume')
      ..add(
        'attachments',
        attachments,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'createTime',
        createTime,
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
        'outpostArn',
        outpostArn,
      )
      ..add(
        'size',
        size,
      )
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'volumeId',
        volumeId,
      )
      ..add(
        'iops',
        iops,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'volumeType',
        volumeType,
      )
      ..add(
        'fastRestored',
        fastRestored,
      )
      ..add(
        'multiAttachEnabled',
        multiAttachEnabled,
      )
      ..add(
        'throughput',
        throughput,
      )
      ..add(
        'sseType',
        sseType,
      );
    return helper.toString();
  }
}

class VolumeEc2QuerySerializer extends _i3.StructuredSmithySerializer<Volume> {
  const VolumeEc2QuerySerializer() : super('Volume');

  @override
  Iterable<Type> get types => const [
        Volume,
        _$Volume,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Volume deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachmentSet':
          result.attachments.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VolumeAttachment)],
            ),
          ) as _i2.BuiltList<VolumeAttachment>));
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'snapshotId':
          result.snapshotId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeState),
          ) as VolumeState);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'iops':
          result.iops = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'volumeType':
          result.volumeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(VolumeType),
          ) as VolumeType);
        case 'fastRestored':
          result.fastRestored = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'multiAttachEnabled':
          result.multiAttachEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'throughput':
          result.throughput = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    Volume object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VolumeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Volume(
      :attachments,
      :availabilityZone,
      :createTime,
      :encrypted,
      :kmsKeyId,
      :outpostArn,
      :size,
      :snapshotId,
      :state,
      :volumeId,
      :iops,
      :tags,
      :volumeType,
      :fastRestored,
      :multiAttachEnabled,
      :throughput,
      :sseType
    ) = object;
    if (attachments != null) {
      result$
        ..add(const _i3.XmlElementName('AttachmentSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          attachments,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VolumeAttachment)],
          ),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType(DateTime),
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
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Size'))
      ..add(serializers.serialize(
        size,
        specifiedType: const FullType(int),
      ));
    if (snapshotId != null) {
      result$
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(VolumeState),
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
      ..add(const _i3.XmlElementName('Iops'))
      ..add(serializers.serialize(
        iops,
        specifiedType: const FullType(int),
      ));
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
    if (volumeType != null) {
      result$
        ..add(const _i3.XmlElementName('VolumeType'))
        ..add(serializers.serialize(
          volumeType,
          specifiedType: const FullType(VolumeType),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('FastRestored'))
      ..add(serializers.serialize(
        fastRestored,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('MultiAttachEnabled'))
      ..add(serializers.serialize(
        multiAttachEnabled,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        throughput,
        specifiedType: const FullType(int),
      ));
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
