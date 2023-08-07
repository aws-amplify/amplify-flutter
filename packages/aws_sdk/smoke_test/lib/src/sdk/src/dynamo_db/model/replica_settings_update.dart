// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.replica_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart';

part 'replica_settings_update.g.dart';

/// Represents the settings for a global table in a Region that will be modified.
abstract class ReplicaSettingsUpdate
    with _i1.AWSEquatable<ReplicaSettingsUpdate>
    implements Built<ReplicaSettingsUpdate, ReplicaSettingsUpdateBuilder> {
  /// Represents the settings for a global table in a Region that will be modified.
  factory ReplicaSettingsUpdate({
    required String regionName,
    _i2.Int64? replicaProvisionedReadCapacityUnits,
    AutoScalingSettingsUpdate?
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
    List<ReplicaGlobalSecondaryIndexSettingsUpdate>?
        replicaGlobalSecondaryIndexSettingsUpdate,
    TableClass? replicaTableClass,
  }) {
    return _$ReplicaSettingsUpdate._(
      regionName: regionName,
      replicaProvisionedReadCapacityUnits: replicaProvisionedReadCapacityUnits,
      replicaProvisionedReadCapacityAutoScalingSettingsUpdate:
          replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
      replicaGlobalSecondaryIndexSettingsUpdate:
          replicaGlobalSecondaryIndexSettingsUpdate == null
              ? null
              : _i3.BuiltList(replicaGlobalSecondaryIndexSettingsUpdate),
      replicaTableClass: replicaTableClass,
    );
  }

  /// Represents the settings for a global table in a Region that will be modified.
  factory ReplicaSettingsUpdate.build(
          [void Function(ReplicaSettingsUpdateBuilder) updates]) =
      _$ReplicaSettingsUpdate;

  const ReplicaSettingsUpdate._();

  static const List<_i4.SmithySerializer<ReplicaSettingsUpdate>> serializers = [
    ReplicaSettingsUpdateAwsJson10Serializer()
  ];

  /// The Region of the replica to be added.
  String get regionName;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput) in the _Amazon DynamoDB Developer Guide_.
  _i2.Int64? get replicaProvisionedReadCapacityUnits;

  /// Auto scaling settings for managing a global table replica's read capacity units.
  AutoScalingSettingsUpdate?
      get replicaProvisionedReadCapacityAutoScalingSettingsUpdate;

  /// Represents the settings of a global secondary index for a global table that will be modified.
  _i3.BuiltList<ReplicaGlobalSecondaryIndexSettingsUpdate>?
      get replicaGlobalSecondaryIndexSettingsUpdate;

  /// Replica-specific table class. If not specified, uses the source table's table class.
  TableClass? get replicaTableClass;
  @override
  List<Object?> get props => [
        regionName,
        replicaProvisionedReadCapacityUnits,
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
        replicaGlobalSecondaryIndexSettingsUpdate,
        replicaTableClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaSettingsUpdate')
      ..add(
        'regionName',
        regionName,
      )
      ..add(
        'replicaProvisionedReadCapacityUnits',
        replicaProvisionedReadCapacityUnits,
      )
      ..add(
        'replicaProvisionedReadCapacityAutoScalingSettingsUpdate',
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
      )
      ..add(
        'replicaGlobalSecondaryIndexSettingsUpdate',
        replicaGlobalSecondaryIndexSettingsUpdate,
      )
      ..add(
        'replicaTableClass',
        replicaTableClass,
      );
    return helper.toString();
  }
}

class ReplicaSettingsUpdateAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ReplicaSettingsUpdate> {
  const ReplicaSettingsUpdateAwsJson10Serializer()
      : super('ReplicaSettingsUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicaSettingsUpdate,
        _$ReplicaSettingsUpdate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RegionName':
          result.regionName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReplicaProvisionedReadCapacityUnits':
          result.replicaProvisionedReadCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate':
          result.replicaProvisionedReadCapacityAutoScalingSettingsUpdate
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AutoScalingSettingsUpdate),
          ) as AutoScalingSettingsUpdate));
        case 'ReplicaGlobalSecondaryIndexSettingsUpdate':
          result.replicaGlobalSecondaryIndexSettingsUpdate
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ReplicaGlobalSecondaryIndexSettingsUpdate)],
            ),
          ) as _i3.BuiltList<ReplicaGlobalSecondaryIndexSettingsUpdate>));
        case 'ReplicaTableClass':
          result.replicaTableClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(TableClass),
          ) as TableClass);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaSettingsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaSettingsUpdate(
      :regionName,
      :replicaProvisionedReadCapacityUnits,
      :replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
      :replicaGlobalSecondaryIndexSettingsUpdate,
      :replicaTableClass
    ) = object;
    result$.addAll([
      'RegionName',
      serializers.serialize(
        regionName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (replicaProvisionedReadCapacityUnits != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (replicaProvisionedReadCapacityAutoScalingSettingsUpdate != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
          specifiedType: const FullType(AutoScalingSettingsUpdate),
        ));
    }
    if (replicaGlobalSecondaryIndexSettingsUpdate != null) {
      result$
        ..add('ReplicaGlobalSecondaryIndexSettingsUpdate')
        ..add(serializers.serialize(
          replicaGlobalSecondaryIndexSettingsUpdate,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ReplicaGlobalSecondaryIndexSettingsUpdate)],
          ),
        ));
    }
    if (replicaTableClass != null) {
      result$
        ..add('ReplicaTableClass')
        ..add(serializers.serialize(
          replicaTableClass,
          specifiedType: const FullType(TableClass),
        ));
    }
    return result$;
  }
}
