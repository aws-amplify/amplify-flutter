// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_global_secondary_index_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i2;

part 'replica_global_secondary_index_settings_update.g.dart';

/// Represents the settings of a global secondary index for a global table that will be modified.
abstract class ReplicaGlobalSecondaryIndexSettingsUpdate
    with
        _i1.AWSEquatable<ReplicaGlobalSecondaryIndexSettingsUpdate>
    implements
        Built<ReplicaGlobalSecondaryIndexSettingsUpdate,
            ReplicaGlobalSecondaryIndexSettingsUpdateBuilder> {
  /// Represents the settings of a global secondary index for a global table that will be modified.
  factory ReplicaGlobalSecondaryIndexSettingsUpdate({
    required String indexName,
    _i2.AutoScalingSettingsUpdate?
        provisionedReadCapacityAutoScalingSettingsUpdate,
    _i3.Int64? provisionedReadCapacityUnits,
  }) {
    return _$ReplicaGlobalSecondaryIndexSettingsUpdate._(
      indexName: indexName,
      provisionedReadCapacityAutoScalingSettingsUpdate:
          provisionedReadCapacityAutoScalingSettingsUpdate,
      provisionedReadCapacityUnits: provisionedReadCapacityUnits,
    );
  }

  /// Represents the settings of a global secondary index for a global table that will be modified.
  factory ReplicaGlobalSecondaryIndexSettingsUpdate.build(
      [void Function(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexSettingsUpdate;

  const ReplicaGlobalSecondaryIndexSettingsUpdate._();

  static const List<_i4.SmithySerializer> serializers = [
    ReplicaGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder b) {}

  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  String get indexName;

  /// Auto scaling settings for managing a global secondary index replica's read capacity units.
  _i2.AutoScalingSettingsUpdate?
      get provisionedReadCapacityAutoScalingSettingsUpdate;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`.
  _i3.Int64? get provisionedReadCapacityUnits;
  @override
  List<Object?> get props => [
        indexName,
        provisionedReadCapacityAutoScalingSettingsUpdate,
        provisionedReadCapacityUnits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplicaGlobalSecondaryIndexSettingsUpdate');
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'provisionedReadCapacityAutoScalingSettingsUpdate',
      provisionedReadCapacityAutoScalingSettingsUpdate,
    );
    helper.add(
      'provisionedReadCapacityUnits',
      provisionedReadCapacityUnits,
    );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer extends _i4
    .StructuredSmithySerializer<ReplicaGlobalSecondaryIndexSettingsUpdate> {
  const ReplicaGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexSettingsUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexSettingsUpdate,
        _$ReplicaGlobalSecondaryIndexSettingsUpdate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaGlobalSecondaryIndexSettingsUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaGlobalSecondaryIndexSettingsUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ProvisionedReadCapacityAutoScalingSettingsUpdate':
          if (value != null) {
            result.provisionedReadCapacityAutoScalingSettingsUpdate
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
            ) as _i2.AutoScalingSettingsUpdate));
          }
          break;
        case 'ProvisionedReadCapacityUnits':
          if (value != null) {
            result.provisionedReadCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
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
    final payload = (object as ReplicaGlobalSecondaryIndexSettingsUpdate);
    final result = <Object?>[
      'IndexName',
      serializers.serialize(
        payload.indexName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.provisionedReadCapacityAutoScalingSettingsUpdate != null) {
      result
        ..add('ProvisionedReadCapacityAutoScalingSettingsUpdate')
        ..add(serializers.serialize(
          payload.provisionedReadCapacityAutoScalingSettingsUpdate!,
          specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
        ));
    }
    if (payload.provisionedReadCapacityUnits != null) {
      result
        ..add('ProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          payload.provisionedReadCapacityUnits!,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    return result;
  }
}
