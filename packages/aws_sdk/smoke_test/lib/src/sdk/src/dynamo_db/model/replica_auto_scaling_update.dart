// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.replica_auto_scaling_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_auto_scaling_update.dart'
    as _i2;

part 'replica_auto_scaling_update.g.dart';

/// Represents the auto scaling settings of a replica that will be modified.
abstract class ReplicaAutoScalingUpdate
    with _i1.AWSEquatable<ReplicaAutoScalingUpdate>
    implements
        Built<ReplicaAutoScalingUpdate, ReplicaAutoScalingUpdateBuilder> {
  /// Represents the auto scaling settings of a replica that will be modified.
  factory ReplicaAutoScalingUpdate({
    required String regionName,
    List<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
        replicaGlobalSecondaryIndexUpdates,
    _i3.AutoScalingSettingsUpdate?
        replicaProvisionedReadCapacityAutoScalingUpdate,
  }) {
    return _$ReplicaAutoScalingUpdate._(
      regionName: regionName,
      replicaGlobalSecondaryIndexUpdates:
          replicaGlobalSecondaryIndexUpdates == null
              ? null
              : _i4.BuiltList(replicaGlobalSecondaryIndexUpdates),
      replicaProvisionedReadCapacityAutoScalingUpdate:
          replicaProvisionedReadCapacityAutoScalingUpdate,
    );
  }

  /// Represents the auto scaling settings of a replica that will be modified.
  factory ReplicaAutoScalingUpdate.build(
          [void Function(ReplicaAutoScalingUpdateBuilder) updates]) =
      _$ReplicaAutoScalingUpdate;

  const ReplicaAutoScalingUpdate._();

  static const List<_i5.SmithySerializer<ReplicaAutoScalingUpdate>>
      serializers = [ReplicaAutoScalingUpdateAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaAutoScalingUpdateBuilder b) {}

  /// The Region where the replica exists.
  String get regionName;

  /// Represents the auto scaling settings of global secondary indexes that will be modified.
  _i4.BuiltList<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
      get replicaGlobalSecondaryIndexUpdates;

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  _i3.AutoScalingSettingsUpdate?
      get replicaProvisionedReadCapacityAutoScalingUpdate;
  @override
  List<Object?> get props => [
        regionName,
        replicaGlobalSecondaryIndexUpdates,
        replicaProvisionedReadCapacityAutoScalingUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaAutoScalingUpdate')
      ..add(
        'regionName',
        regionName,
      )
      ..add(
        'replicaGlobalSecondaryIndexUpdates',
        replicaGlobalSecondaryIndexUpdates,
      )
      ..add(
        'replicaProvisionedReadCapacityAutoScalingUpdate',
        replicaProvisionedReadCapacityAutoScalingUpdate,
      );
    return helper.toString();
  }
}

class ReplicaAutoScalingUpdateAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ReplicaAutoScalingUpdate> {
  const ReplicaAutoScalingUpdateAwsJson10Serializer()
      : super('ReplicaAutoScalingUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicaAutoScalingUpdate,
        _$ReplicaAutoScalingUpdate,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaAutoScalingUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaAutoScalingUpdateBuilder();
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
        case 'ReplicaGlobalSecondaryIndexUpdates':
          result.replicaGlobalSecondaryIndexUpdates.replace((serializers
              .deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate)],
            ),
          ) as _i4
              .BuiltList<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>));
        case 'ReplicaProvisionedReadCapacityAutoScalingUpdate':
          result.replicaProvisionedReadCapacityAutoScalingUpdate
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AutoScalingSettingsUpdate),
          ) as _i3.AutoScalingSettingsUpdate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaAutoScalingUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaAutoScalingUpdate(
      :regionName,
      :replicaGlobalSecondaryIndexUpdates,
      :replicaProvisionedReadCapacityAutoScalingUpdate
    ) = object;
    result$.addAll([
      'RegionName',
      serializers.serialize(
        regionName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (replicaGlobalSecondaryIndexUpdates != null) {
      result$
        ..add('ReplicaGlobalSecondaryIndexUpdates')
        ..add(serializers.serialize(
          replicaGlobalSecondaryIndexUpdates,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate)],
          ),
        ));
    }
    if (replicaProvisionedReadCapacityAutoScalingUpdate != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityAutoScalingUpdate')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityAutoScalingUpdate,
          specifiedType: const FullType(_i3.AutoScalingSettingsUpdate),
        ));
    }
    return result$;
  }
}
