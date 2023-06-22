// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.replica_global_secondary_index_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i3;

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
    _i2.Int64? provisionedReadCapacityUnits,
    _i3.AutoScalingSettingsUpdate?
        provisionedReadCapacityAutoScalingSettingsUpdate,
  }) {
    return _$ReplicaGlobalSecondaryIndexSettingsUpdate._(
      indexName: indexName,
      provisionedReadCapacityUnits: provisionedReadCapacityUnits,
      provisionedReadCapacityAutoScalingSettingsUpdate:
          provisionedReadCapacityAutoScalingSettingsUpdate,
    );
  }

  /// Represents the settings of a global secondary index for a global table that will be modified.
  factory ReplicaGlobalSecondaryIndexSettingsUpdate.build(
      [void Function(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexSettingsUpdate;

  const ReplicaGlobalSecondaryIndexSettingsUpdate._();

  static const List<
          _i4.SmithySerializer<ReplicaGlobalSecondaryIndexSettingsUpdate>>
      serializers = [
    ReplicaGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaGlobalSecondaryIndexSettingsUpdateBuilder b) {}

  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  String get indexName;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`.
  _i2.Int64? get provisionedReadCapacityUnits;

  /// Auto scaling settings for managing a global secondary index replica's read capacity units.
  _i3.AutoScalingSettingsUpdate?
      get provisionedReadCapacityAutoScalingSettingsUpdate;
  @override
  List<Object?> get props => [
        indexName,
        provisionedReadCapacityUnits,
        provisionedReadCapacityAutoScalingSettingsUpdate,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplicaGlobalSecondaryIndexSettingsUpdate')
          ..add(
            'indexName',
            indexName,
          )
          ..add(
            'provisionedReadCapacityUnits',
            provisionedReadCapacityUnits,
          )
          ..add(
            'provisionedReadCapacityAutoScalingSettingsUpdate',
            provisionedReadCapacityAutoScalingSettingsUpdate,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedReadCapacityUnits':
          result.provisionedReadCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'ProvisionedReadCapacityAutoScalingSettingsUpdate':
          result.provisionedReadCapacityAutoScalingSettingsUpdate
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
    ReplicaGlobalSecondaryIndexSettingsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaGlobalSecondaryIndexSettingsUpdate(
      :indexName,
      :provisionedReadCapacityUnits,
      :provisionedReadCapacityAutoScalingSettingsUpdate
    ) = object;
    result$.addAll([
      'IndexName',
      serializers.serialize(
        indexName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (provisionedReadCapacityUnits != null) {
      result$
        ..add('ProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          provisionedReadCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (provisionedReadCapacityAutoScalingSettingsUpdate != null) {
      result$
        ..add('ProvisionedReadCapacityAutoScalingSettingsUpdate')
        ..add(serializers.serialize(
          provisionedReadCapacityAutoScalingSettingsUpdate,
          specifiedType: const FullType(_i3.AutoScalingSettingsUpdate),
        ));
    }
    return result$;
  }
}
