// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.snapshot_recycle_bin_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'snapshot_recycle_bin_info.g.dart';

/// Information about a snapshot that is currently in the Recycle Bin.
abstract class SnapshotRecycleBinInfo
    with _i1.AWSEquatable<SnapshotRecycleBinInfo>
    implements Built<SnapshotRecycleBinInfo, SnapshotRecycleBinInfoBuilder> {
  /// Information about a snapshot that is currently in the Recycle Bin.
  factory SnapshotRecycleBinInfo({
    String? snapshotId,
    DateTime? recycleBinEnterTime,
    DateTime? recycleBinExitTime,
    String? description,
    String? volumeId,
  }) {
    return _$SnapshotRecycleBinInfo._(
      snapshotId: snapshotId,
      recycleBinEnterTime: recycleBinEnterTime,
      recycleBinExitTime: recycleBinExitTime,
      description: description,
      volumeId: volumeId,
    );
  }

  /// Information about a snapshot that is currently in the Recycle Bin.
  factory SnapshotRecycleBinInfo.build(
          [void Function(SnapshotRecycleBinInfoBuilder) updates]) =
      _$SnapshotRecycleBinInfo;

  const SnapshotRecycleBinInfo._();

  static const List<_i2.SmithySerializer<SnapshotRecycleBinInfo>> serializers =
      [SnapshotRecycleBinInfoEc2QuerySerializer()];

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The date and time when the snaphsot entered the Recycle Bin.
  DateTime? get recycleBinEnterTime;

  /// The date and time when the snapshot is to be permanently deleted from the Recycle Bin.
  DateTime? get recycleBinExitTime;

  /// The description for the snapshot.
  String? get description;

  /// The ID of the volume from which the snapshot was created.
  String? get volumeId;
  @override
  List<Object?> get props => [
        snapshotId,
        recycleBinEnterTime,
        recycleBinExitTime,
        description,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotRecycleBinInfo')
      ..add(
        'snapshotId',
        snapshotId,
      )
      ..add(
        'recycleBinEnterTime',
        recycleBinEnterTime,
      )
      ..add(
        'recycleBinExitTime',
        recycleBinExitTime,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'volumeId',
        volumeId,
      );
    return helper.toString();
  }
}

class SnapshotRecycleBinInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SnapshotRecycleBinInfo> {
  const SnapshotRecycleBinInfoEc2QuerySerializer()
      : super('SnapshotRecycleBinInfo');

  @override
  Iterable<Type> get types => const [
        SnapshotRecycleBinInfo,
        _$SnapshotRecycleBinInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotRecycleBinInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotRecycleBinInfoBuilder();
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
        case 'recycleBinEnterTime':
          result.recycleBinEnterTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'recycleBinExitTime':
          result.recycleBinExitTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'volumeId':
          result.volumeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SnapshotRecycleBinInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SnapshotRecycleBinInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SnapshotRecycleBinInfo(
      :snapshotId,
      :recycleBinEnterTime,
      :recycleBinExitTime,
      :description,
      :volumeId
    ) = object;
    if (snapshotId != null) {
      result$
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          snapshotId,
          specifiedType: const FullType(String),
        ));
    }
    if (recycleBinEnterTime != null) {
      result$
        ..add(const _i2.XmlElementName('RecycleBinEnterTime'))
        ..add(serializers.serialize(
          recycleBinEnterTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (recycleBinExitTime != null) {
      result$
        ..add(const _i2.XmlElementName('RecycleBinExitTime'))
        ..add(serializers.serialize(
          recycleBinExitTime,
          specifiedType: const FullType(DateTime),
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
    if (volumeId != null) {
      result$
        ..add(const _i2.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          volumeId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
