// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.replica_auto_scaling_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart';

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
    List<ReplicaGlobalSecondaryIndexAutoScalingDescription>?
        globalSecondaryIndexes,
    AutoScalingSettingsDescription?
        replicaProvisionedReadCapacityAutoScalingSettings,
    AutoScalingSettingsDescription?
        replicaProvisionedWriteCapacityAutoScalingSettings,
    ReplicaStatus? replicaStatus,
  }) {
    return _$ReplicaAutoScalingDescription._(
      regionName: regionName,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i2.BuiltList(globalSecondaryIndexes),
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

  static const List<_i3.SmithySerializer<ReplicaAutoScalingDescription>>
      serializers = [ReplicaAutoScalingDescriptionAwsJson10Serializer()];

  /// The Region where the replica exists.
  String? get regionName;

  /// Replica-specific global secondary index auto scaling settings.
  _i2.BuiltList<ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      get globalSecondaryIndexes;

  /// Represents the auto scaling settings for a global table or global secondary index.
  AutoScalingSettingsDescription?
      get replicaProvisionedReadCapacityAutoScalingSettings;

  /// Represents the auto scaling settings for a global table or global secondary index.
  AutoScalingSettingsDescription?
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
  ReplicaStatus? get replicaStatus;
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
    extends _i3.StructuredSmithySerializer<ReplicaAutoScalingDescription> {
  const ReplicaAutoScalingDescriptionAwsJson10Serializer()
      : super('ReplicaAutoScalingDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaAutoScalingDescription,
        _$ReplicaAutoScalingDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
              _i2.BuiltList,
              [FullType(ReplicaGlobalSecondaryIndexAutoScalingDescription)],
            ),
          ) as _i2
              .BuiltList<ReplicaGlobalSecondaryIndexAutoScalingDescription>));
        case 'ReplicaProvisionedReadCapacityAutoScalingSettings':
          result.replicaProvisionedReadCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AutoScalingSettingsDescription),
          ) as AutoScalingSettingsDescription));
        case 'ReplicaProvisionedWriteCapacityAutoScalingSettings':
          result.replicaProvisionedWriteCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AutoScalingSettingsDescription),
          ) as AutoScalingSettingsDescription));
        case 'ReplicaStatus':
          result.replicaStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReplicaStatus),
          ) as ReplicaStatus);
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
            _i2.BuiltList,
            [FullType(ReplicaGlobalSecondaryIndexAutoScalingDescription)],
          ),
        ));
    }
    if (replicaProvisionedReadCapacityAutoScalingSettings != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityAutoScalingSettings,
          specifiedType: const FullType(AutoScalingSettingsDescription),
        ));
    }
    if (replicaProvisionedWriteCapacityAutoScalingSettings != null) {
      result$
        ..add('ReplicaProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          replicaProvisionedWriteCapacityAutoScalingSettings,
          specifiedType: const FullType(AutoScalingSettingsDescription),
        ));
    }
    if (replicaStatus != null) {
      result$
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          replicaStatus,
          specifiedType: const FullType(ReplicaStatus),
        ));
    }
    return result$;
  }
}