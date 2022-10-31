// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_auto_scaling_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_description.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart'
    as _i4;

part 'replica_auto_scaling_description.g.dart';

/// Represents the auto scaling settings of the replica.
abstract class ReplicaAutoScalingDescription
    with
        _i1.AWSEquatable<ReplicaAutoScalingDescription>
    implements
        Built<ReplicaAutoScalingDescription,
            ReplicaAutoScalingDescriptionBuilder> {
  /// Represents the auto scaling settings of the replica.
  factory ReplicaAutoScalingDescription({
    List<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
        globalSecondaryIndexes,
    String? regionName,
    _i3.AutoScalingSettingsDescription?
        replicaProvisionedReadCapacityAutoScalingSettings,
    _i3.AutoScalingSettingsDescription?
        replicaProvisionedWriteCapacityAutoScalingSettings,
    _i4.ReplicaStatus? replicaStatus,
  }) {
    return _$ReplicaAutoScalingDescription._(
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i5.BuiltList(globalSecondaryIndexes),
      regionName: regionName,
      replicaProvisionedReadCapacityAutoScalingSettings:
          replicaProvisionedReadCapacityAutoScalingSettings,
      replicaProvisionedWriteCapacityAutoScalingSettings:
          replicaProvisionedWriteCapacityAutoScalingSettings,
      replicaStatus: replicaStatus,
    );
  }

  /// Represents the auto scaling settings of the replica.
  factory ReplicaAutoScalingDescription.build(
          [void Function(ReplicaAutoScalingDescriptionBuilder) updates]) =
      _$ReplicaAutoScalingDescription;

  const ReplicaAutoScalingDescription._();

  static const List<_i6.SmithySerializer> serializers = [
    ReplicaAutoScalingDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaAutoScalingDescriptionBuilder b) {}

  /// Replica-specific global secondary index auto scaling settings.
  _i5.BuiltList<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      get globalSecondaryIndexes;

  /// The Region where the replica exists.
  String? get regionName;

  /// Represents the auto scaling settings for a global table or global secondary index.
  _i3.AutoScalingSettingsDescription?
      get replicaProvisionedReadCapacityAutoScalingSettings;

  /// Represents the auto scaling settings for a global table or global secondary index.
  _i3.AutoScalingSettingsDescription?
      get replicaProvisionedWriteCapacityAutoScalingSettings;

  /// The current state of the replica:
  ///
  /// *   `CREATING` \- The replica is being created.
  ///
  /// *   `UPDATING` \- The replica is being updated.
  ///
  /// *   `DELETING` \- The replica is being deleted.
  ///
  /// *   `ACTIVE` \- The replica is ready for use.
  _i4.ReplicaStatus? get replicaStatus;
  @override
  List<Object?> get props => [
        globalSecondaryIndexes,
        regionName,
        replicaProvisionedReadCapacityAutoScalingSettings,
        replicaProvisionedWriteCapacityAutoScalingSettings,
        replicaStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaAutoScalingDescription');
    helper.add(
      'globalSecondaryIndexes',
      globalSecondaryIndexes,
    );
    helper.add(
      'regionName',
      regionName,
    );
    helper.add(
      'replicaProvisionedReadCapacityAutoScalingSettings',
      replicaProvisionedReadCapacityAutoScalingSettings,
    );
    helper.add(
      'replicaProvisionedWriteCapacityAutoScalingSettings',
      replicaProvisionedWriteCapacityAutoScalingSettings,
    );
    helper.add(
      'replicaStatus',
      replicaStatus,
    );
    return helper.toString();
  }
}

class ReplicaAutoScalingDescriptionAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<ReplicaAutoScalingDescription> {
  const ReplicaAutoScalingDescriptionAwsJson10Serializer()
      : super('ReplicaAutoScalingDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaAutoScalingDescription,
        _$ReplicaAutoScalingDescription,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaAutoScalingDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaAutoScalingDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [
                  FullType(
                      _i2.ReplicaGlobalSecondaryIndexAutoScalingDescription)
                ],
              ),
            ) as _i5.BuiltList<
                _i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>));
          }
          break;
        case 'RegionName':
          if (value != null) {
            result.regionName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReplicaProvisionedReadCapacityAutoScalingSettings':
          if (value != null) {
            result.replicaProvisionedReadCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
            ) as _i3.AutoScalingSettingsDescription));
          }
          break;
        case 'ReplicaProvisionedWriteCapacityAutoScalingSettings':
          if (value != null) {
            result.replicaProvisionedWriteCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
            ) as _i3.AutoScalingSettingsDescription));
          }
          break;
        case 'ReplicaStatus':
          if (value != null) {
            result.replicaStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReplicaStatus),
            ) as _i4.ReplicaStatus);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ReplicaAutoScalingDescription);
    final result = <Object?>[];
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription)],
          ),
        ));
    }
    if (payload.regionName != null) {
      result
        ..add('RegionName')
        ..add(serializers.serialize(
          payload.regionName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.replicaProvisionedReadCapacityAutoScalingSettings != null) {
      result
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.replicaProvisionedReadCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    if (payload.replicaProvisionedWriteCapacityAutoScalingSettings != null) {
      result
        ..add('ReplicaProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.replicaProvisionedWriteCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    if (payload.replicaStatus != null) {
      result
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          payload.replicaStatus!,
          specifiedType: const FullType(_i4.ReplicaStatus),
        ));
    }
    return result;
  }
}
