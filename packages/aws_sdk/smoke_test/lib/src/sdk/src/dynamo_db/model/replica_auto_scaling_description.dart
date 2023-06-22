// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? regionName,
    List<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
        globalSecondaryIndexes,
    _i3.AutoScalingSettingsDescription?
        replicaProvisionedReadCapacityAutoScalingSettings,
    _i3.AutoScalingSettingsDescription?
        replicaProvisionedWriteCapacityAutoScalingSettings,
    _i4.ReplicaStatus? replicaStatus,
  }) {
    return _$ReplicaAutoScalingDescription._(
      regionName: regionName,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i5.BuiltList(globalSecondaryIndexes),
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

  static const List<_i6.SmithySerializer<ReplicaAutoScalingDescription>>
      serializers = [ReplicaAutoScalingDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaAutoScalingDescriptionBuilder b) {}

  /// The Region where the replica exists.
  String? get regionName;

  /// Replica-specific global secondary index auto scaling settings.
  _i5.BuiltList<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      get globalSecondaryIndexes;

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
        regionName,
        globalSecondaryIndexes,
        replicaProvisionedReadCapacityAutoScalingSettings,
        replicaProvisionedWriteCapacityAutoScalingSettings,
        replicaStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaAutoScalingDescription')
      ..add(
        'regionName',
        regionName,
      )
      ..add(
        'globalSecondaryIndexes',
        globalSecondaryIndexes,
      )
      ..add(
        'replicaProvisionedReadCapacityAutoScalingSettings',
        replicaProvisionedReadCapacityAutoScalingSettings,
      )
      ..add(
        'replicaProvisionedWriteCapacityAutoScalingSettings',
        replicaProvisionedWriteCapacityAutoScalingSettings,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RegionName':
          result.regionName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription)],
            ),
          ) as _i5.BuiltList<
              _i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>));
        case 'ReplicaProvisionedReadCapacityAutoScalingSettings':
          result.replicaProvisionedReadCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
          ) as _i3.AutoScalingSettingsDescription));
        case 'ReplicaProvisionedWriteCapacityAutoScalingSettings':
          result.replicaProvisionedWriteCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
          ) as _i3.AutoScalingSettingsDescription));
        case 'ReplicaStatus':
          result.replicaStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ReplicaStatus),
          ) as _i4.ReplicaStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaAutoScalingDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaAutoScalingDescription(
      :regionName,
      :globalSecondaryIndexes,
      :replicaProvisionedReadCapacityAutoScalingSettings,
      :replicaProvisionedWriteCapacityAutoScalingSettings,
      :replicaStatus
    ) = object;
    if (regionName != null) {
      result$
        ..add('RegionName')
        ..add(serializers.serialize(
          regionName,
          specifiedType: const FullType(String),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription)],
          ),
        ));
    }
    if (replicaProvisionedReadCapacityAutoScalingSettings != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityAutoScalingSettings,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    if (replicaProvisionedWriteCapacityAutoScalingSettings != null) {
      result$
        ..add('ReplicaProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          replicaProvisionedWriteCapacityAutoScalingSettings,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    if (replicaStatus != null) {
      result$
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          replicaStatus,
          specifiedType: const FullType(_i4.ReplicaStatus),
        ));
    }
    return result$;
  }
}
