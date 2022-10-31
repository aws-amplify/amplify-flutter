// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_update.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart' as _i5;

part 'replica_settings_update.g.dart';

/// Represents the settings for a global table in a Region that will be modified.
abstract class ReplicaSettingsUpdate
    with _i1.AWSEquatable<ReplicaSettingsUpdate>
    implements Built<ReplicaSettingsUpdate, ReplicaSettingsUpdateBuilder> {
  /// Represents the settings for a global table in a Region that will be modified.
  factory ReplicaSettingsUpdate({
    required String regionName,
    List<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>?
        replicaGlobalSecondaryIndexSettingsUpdate,
    _i3.AutoScalingSettingsUpdate?
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
    _i4.Int64? replicaProvisionedReadCapacityUnits,
    _i5.TableClass? replicaTableClass,
  }) {
    return _$ReplicaSettingsUpdate._(
      regionName: regionName,
      replicaGlobalSecondaryIndexSettingsUpdate:
          replicaGlobalSecondaryIndexSettingsUpdate == null
              ? null
              : _i6.BuiltList(replicaGlobalSecondaryIndexSettingsUpdate),
      replicaProvisionedReadCapacityAutoScalingSettingsUpdate:
          replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
      replicaProvisionedReadCapacityUnits: replicaProvisionedReadCapacityUnits,
      replicaTableClass: replicaTableClass,
    );
  }

  /// Represents the settings for a global table in a Region that will be modified.
  factory ReplicaSettingsUpdate.build(
          [void Function(ReplicaSettingsUpdateBuilder) updates]) =
      _$ReplicaSettingsUpdate;

  const ReplicaSettingsUpdate._();

  static const List<_i7.SmithySerializer> serializers = [
    ReplicaSettingsUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaSettingsUpdateBuilder b) {}

  /// The Region of the replica to be added.
  String get regionName;

  /// Represents the settings of a global secondary index for a global table that will be modified.
  _i6.BuiltList<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>?
      get replicaGlobalSecondaryIndexSettingsUpdate;

  /// Auto scaling settings for managing a global table replica's read capacity units.
  _i3.AutoScalingSettingsUpdate?
      get replicaProvisionedReadCapacityAutoScalingSettingsUpdate;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput) in the _Amazon DynamoDB Developer Guide_.
  _i4.Int64? get replicaProvisionedReadCapacityUnits;

  /// Replica-specific table class. If not specified, uses the source table's table class.
  _i5.TableClass? get replicaTableClass;
  @override
  List<Object?> get props => [
        regionName,
        replicaGlobalSecondaryIndexSettingsUpdate,
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
        replicaProvisionedReadCapacityUnits,
        replicaTableClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaSettingsUpdate');
    helper.add(
      'regionName',
      regionName,
    );
    helper.add(
      'replicaGlobalSecondaryIndexSettingsUpdate',
      replicaGlobalSecondaryIndexSettingsUpdate,
    );
    helper.add(
      'replicaProvisionedReadCapacityAutoScalingSettingsUpdate',
      replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
    );
    helper.add(
      'replicaProvisionedReadCapacityUnits',
      replicaProvisionedReadCapacityUnits,
    );
    helper.add(
      'replicaTableClass',
      replicaTableClass,
    );
    return helper.toString();
  }
}

class ReplicaSettingsUpdateAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<ReplicaSettingsUpdate> {
  const ReplicaSettingsUpdateAwsJson10Serializer()
      : super('ReplicaSettingsUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicaSettingsUpdate,
        _$ReplicaSettingsUpdate,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaSettingsUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaSettingsUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'RegionName':
          result.regionName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ReplicaGlobalSecondaryIndexSettingsUpdate':
          if (value != null) {
            result.replicaGlobalSecondaryIndexSettingsUpdate
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.ReplicaGlobalSecondaryIndexSettingsUpdate)],
              ),
            ) as _i6.BuiltList<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>));
          }
          break;
        case 'ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate':
          if (value != null) {
            result.replicaProvisionedReadCapacityAutoScalingSettingsUpdate
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingSettingsUpdate),
            ) as _i3.AutoScalingSettingsUpdate));
          }
          break;
        case 'ReplicaProvisionedReadCapacityUnits':
          if (value != null) {
            result.replicaProvisionedReadCapacityUnits =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
          }
          break;
        case 'ReplicaTableClass':
          if (value != null) {
            result.replicaTableClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.TableClass),
            ) as _i5.TableClass);
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
    final payload = (object as ReplicaSettingsUpdate);
    final result = <Object?>[
      'RegionName',
      serializers.serialize(
        payload.regionName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.replicaGlobalSecondaryIndexSettingsUpdate != null) {
      result
        ..add('ReplicaGlobalSecondaryIndexSettingsUpdate')
        ..add(serializers.serialize(
          payload.replicaGlobalSecondaryIndexSettingsUpdate!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i2.ReplicaGlobalSecondaryIndexSettingsUpdate)],
          ),
        ));
    }
    if (payload.replicaProvisionedReadCapacityAutoScalingSettingsUpdate !=
        null) {
      result
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate')
        ..add(serializers.serialize(
          payload.replicaProvisionedReadCapacityAutoScalingSettingsUpdate!,
          specifiedType: const FullType(_i3.AutoScalingSettingsUpdate),
        ));
    }
    if (payload.replicaProvisionedReadCapacityUnits != null) {
      result
        ..add('ReplicaProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          payload.replicaProvisionedReadCapacityUnits!,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (payload.replicaTableClass != null) {
      result
        ..add('ReplicaTableClass')
        ..add(serializers.serialize(
          payload.replicaTableClass!,
          specifiedType: const FullType(_i5.TableClass),
        ));
    }
    return result;
  }
}
