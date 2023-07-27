// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_table_replica_auto_scaling_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_auto_scaling_update.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_auto_scaling_update.dart'
    as _i5;

part 'update_table_replica_auto_scaling_input.g.dart';

abstract class UpdateTableReplicaAutoScalingInput
    with
        _i1.HttpInput<UpdateTableReplicaAutoScalingInput>,
        _i2.AWSEquatable<UpdateTableReplicaAutoScalingInput>
    implements
        Built<UpdateTableReplicaAutoScalingInput,
            UpdateTableReplicaAutoScalingInputBuilder> {
  factory UpdateTableReplicaAutoScalingInput({
    List<_i3.GlobalSecondaryIndexAutoScalingUpdate>?
        globalSecondaryIndexUpdates,
    required String tableName,
    _i4.AutoScalingSettingsUpdate? provisionedWriteCapacityAutoScalingUpdate,
    List<_i5.ReplicaAutoScalingUpdate>? replicaUpdates,
  }) {
    return _$UpdateTableReplicaAutoScalingInput._(
      globalSecondaryIndexUpdates: globalSecondaryIndexUpdates == null
          ? null
          : _i6.BuiltList(globalSecondaryIndexUpdates),
      tableName: tableName,
      provisionedWriteCapacityAutoScalingUpdate:
          provisionedWriteCapacityAutoScalingUpdate,
      replicaUpdates:
          replicaUpdates == null ? null : _i6.BuiltList(replicaUpdates),
    );
  }

  factory UpdateTableReplicaAutoScalingInput.build(
          [void Function(UpdateTableReplicaAutoScalingInputBuilder) updates]) =
      _$UpdateTableReplicaAutoScalingInput;

  const UpdateTableReplicaAutoScalingInput._();

  factory UpdateTableReplicaAutoScalingInput.fromRequest(
    UpdateTableReplicaAutoScalingInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateTableReplicaAutoScalingInput>>
      serializers = [UpdateTableReplicaAutoScalingInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTableReplicaAutoScalingInputBuilder b) {}

  /// Represents the auto scaling settings of the global secondary indexes of the replica to be updated.
  _i6.BuiltList<_i3.GlobalSecondaryIndexAutoScalingUpdate>?
      get globalSecondaryIndexUpdates;

  /// The name of the global table to be updated.
  String get tableName;

  /// Represents the auto scaling settings to be modified for a global table or global secondary index.
  _i4.AutoScalingSettingsUpdate? get provisionedWriteCapacityAutoScalingUpdate;

  /// Represents the auto scaling settings of replicas of the table that will be modified.
  _i6.BuiltList<_i5.ReplicaAutoScalingUpdate>? get replicaUpdates;
  @override
  UpdateTableReplicaAutoScalingInput getPayload() => this;
  @override
  List<Object?> get props => [
        globalSecondaryIndexUpdates,
        tableName,
        provisionedWriteCapacityAutoScalingUpdate,
        replicaUpdates,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateTableReplicaAutoScalingInput')
          ..add(
            'globalSecondaryIndexUpdates',
            globalSecondaryIndexUpdates,
          )
          ..add(
            'tableName',
            tableName,
          )
          ..add(
            'provisionedWriteCapacityAutoScalingUpdate',
            provisionedWriteCapacityAutoScalingUpdate,
          )
          ..add(
            'replicaUpdates',
            replicaUpdates,
          );
    return helper.toString();
  }
}

class UpdateTableReplicaAutoScalingInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateTableReplicaAutoScalingInput> {
  const UpdateTableReplicaAutoScalingInputAwsJson10Serializer()
      : super('UpdateTableReplicaAutoScalingInput');

  @override
  Iterable<Type> get types => const [
        UpdateTableReplicaAutoScalingInput,
        _$UpdateTableReplicaAutoScalingInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTableReplicaAutoScalingInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTableReplicaAutoScalingInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalSecondaryIndexUpdates':
          result.globalSecondaryIndexUpdates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.GlobalSecondaryIndexAutoScalingUpdate)],
            ),
          ) as _i6.BuiltList<_i3.GlobalSecondaryIndexAutoScalingUpdate>));
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedWriteCapacityAutoScalingUpdate':
          result.provisionedWriteCapacityAutoScalingUpdate
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AutoScalingSettingsUpdate),
          ) as _i4.AutoScalingSettingsUpdate));
        case 'ReplicaUpdates':
          result.replicaUpdates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i5.ReplicaAutoScalingUpdate)],
            ),
          ) as _i6.BuiltList<_i5.ReplicaAutoScalingUpdate>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateTableReplicaAutoScalingInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateTableReplicaAutoScalingInput(
      :globalSecondaryIndexUpdates,
      :tableName,
      :provisionedWriteCapacityAutoScalingUpdate,
      :replicaUpdates
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (globalSecondaryIndexUpdates != null) {
      result$
        ..add('GlobalSecondaryIndexUpdates')
        ..add(serializers.serialize(
          globalSecondaryIndexUpdates,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.GlobalSecondaryIndexAutoScalingUpdate)],
          ),
        ));
    }
    if (provisionedWriteCapacityAutoScalingUpdate != null) {
      result$
        ..add('ProvisionedWriteCapacityAutoScalingUpdate')
        ..add(serializers.serialize(
          provisionedWriteCapacityAutoScalingUpdate,
          specifiedType: const FullType(_i4.AutoScalingSettingsUpdate),
        ));
    }
    if (replicaUpdates != null) {
      result$
        ..add('ReplicaUpdates')
        ..add(serializers.serialize(
          replicaUpdates,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i5.ReplicaAutoScalingUpdate)],
          ),
        ));
    }
    return result$;
  }
}
