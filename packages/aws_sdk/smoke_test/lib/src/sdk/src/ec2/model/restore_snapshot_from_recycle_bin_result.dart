// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.restore_snapshot_from_recycle_bin_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/sse_type.dart';

part 'restore_snapshot_from_recycle_bin_result.g.dart';

abstract class RestoreSnapshotFromRecycleBinResult
    with
        _i1.AWSEquatable<RestoreSnapshotFromRecycleBinResult>
    implements
        Built<RestoreSnapshotFromRecycleBinResult,
            RestoreSnapshotFromRecycleBinResultBuilder> {
  factory RestoreSnapshotFromRecycleBinResult({
    String? snapshotId,
    String? outpostArn,
    String? description,
    bool? encrypted,
    String? ownerId,
    String? progress,
    DateTime? startTime,
    SnapshotState? state,
    String? volumeId,
    int? volumeSize,
    SseType? sseType,
  }) {
    encrypted ??= false;
    volumeSize ??= 0;
    return _$RestoreSnapshotFromRecycleBinResult._(
      snapshotId: snapshotId,
      outpostArn: outpostArn,
      description: description,
      encrypted: encrypted,
      ownerId: ownerId,
      progress: progress,
      startTime: startTime,
      state: state,
      volumeId: volumeId,
      volumeSize: volumeSize,
      sseType: sseType,
    );
  }

  factory RestoreSnapshotFromRecycleBinResult.build(
          [void Function(RestoreSnapshotFromRecycleBinResultBuilder) updates]) =
      _$RestoreSnapshotFromRecycleBinResult;

  const RestoreSnapshotFromRecycleBinResult._();

  /// Constructs a [RestoreSnapshotFromRecycleBinResult] from a [payload] and [response].
  factory RestoreSnapshotFromRecycleBinResult.fromResponse(
    RestoreSnapshotFromRecycleBinResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RestoreSnapshotFromRecycleBinResult>>
      serializers = [RestoreSnapshotFromRecycleBinResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreSnapshotFromRecycleBinResultBuilder b) {
    b
      ..encrypted = false
      ..volumeSize = 0;
  }

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The ARN of the Outpost on which the snapshot is stored. For more information, see [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;

  /// The description for the snapshot.
  String? get description;

  /// Indicates whether the snapshot is encrypted.
  bool get encrypted;

  /// The ID of the Amazon Web Services account that owns the EBS snapshot.
  String? get ownerId;

  /// The progress of the snapshot, as a percentage.
  String? get progress;

  /// The time stamp when the snapshot was initiated.
  DateTime? get startTime;

  /// The state of the snapshot.
  SnapshotState? get state;

  /// The ID of the volume that was used to create the snapshot.
  String? get volumeId;

  /// The size of the volume, in GiB.
  int get volumeSize;

  /// Reserved for future use.
  SseType? get sseType;
  @override
  List<Object?> get props => [
        snapshotId,
        outpostArn,
        description,
        encrypted,
        ownerId,
        progress,
        startTime,
        state,
        volumeId,
        volumeSize,
        sseType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreSnapshotFromRecycleBinResult')
          ..add(
            'snapshotId',
            snapshotId,
          )
          ..add(
            'outpostArn',
            outpostArn,
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
            'ownerId',
            ownerId,
          )
          ..add(
            'progress',
            progress,
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
            'volumeId',
            volumeId,
          )
          ..add(
            'volumeSize',
            volumeSize,
          )
          ..add(
            'sseType',
            sseType,
          );
    return helper.toString();
  }
}

class RestoreSnapshotFromRecycleBinResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<RestoreSnapshotFromRecycleBinResult> {
  const RestoreSnapshotFromRecycleBinResultEc2QuerySerializer()
      : super('RestoreSnapshotFromRecycleBinResult');

  @override
  Iterable<Type> get types => const [
        RestoreSnapshotFromRecycleBinResult,
        _$RestoreSnapshotFromRecycleBinResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreSnapshotFromRecycleBinResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreSnapshotFromRecycleBinResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    RestoreSnapshotFromRecycleBinResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RestoreSnapshotFromRecycleBinResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RestoreSnapshotFromRecycleBinResult(
      :snapshotId,
      :outpostArn,
      :description,
      :encrypted,
      :ownerId,
      :progress,
      :startTime,
      :state,
      :volumeId,
      :volumeSize,
      :sseType
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i2.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        encrypted,
        specifiedType: const FullType(bool),
      ));
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (progress != null) {
      result$
        ..add(const _i2.XmlElementName('Progress'))
        ..add(serializers.serialize(
          progress,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i2.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(SnapshotState),
        ));
    }
    if (volumeId != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        volumeSize,
        specifiedType: const FullType(int),
      ));
    if (sseType != null) {
      result$
        ..add(const _i2.XmlElementName('SseType'))
        ..add(serializers.serialize(
          sseType,
          specifiedType: const FullType(SseType),
        ));
    }
    return result$;
  }
}
