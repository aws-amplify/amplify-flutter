// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.global_table_global_secondary_index_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i2;

part 'global_table_global_secondary_index_settings_update.g.dart';

/// Represents the settings of a global secondary index for a global table that will be modified.
abstract class GlobalTableGlobalSecondaryIndexSettingsUpdate
    with
        _i1.AWSEquatable<GlobalTableGlobalSecondaryIndexSettingsUpdate>
    implements
        Built<GlobalTableGlobalSecondaryIndexSettingsUpdate,
            GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder> {
  /// Represents the settings of a global secondary index for a global table that will be modified.
  factory GlobalTableGlobalSecondaryIndexSettingsUpdate({
    required String indexName,
    _i2.AutoScalingSettingsUpdate?
        provisionedWriteCapacityAutoScalingSettingsUpdate,
    _i3.Int64? provisionedWriteCapacityUnits,
  }) {
    return _$GlobalTableGlobalSecondaryIndexSettingsUpdate._(
      indexName: indexName,
      provisionedWriteCapacityAutoScalingSettingsUpdate:
          provisionedWriteCapacityAutoScalingSettingsUpdate,
      provisionedWriteCapacityUnits: provisionedWriteCapacityUnits,
    );
  }

  /// Represents the settings of a global secondary index for a global table that will be modified.
  factory GlobalTableGlobalSecondaryIndexSettingsUpdate.build(
      [void Function(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder)
          updates]) = _$GlobalTableGlobalSecondaryIndexSettingsUpdate;

  const GlobalTableGlobalSecondaryIndexSettingsUpdate._();

  static const List<_i4.SmithySerializer> serializers = [
    GlobalTableGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder b) {}

  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  String get indexName;

  /// Auto scaling settings for managing a global secondary index's write capacity units.
  _i2.AutoScalingSettingsUpdate?
      get provisionedWriteCapacityAutoScalingSettingsUpdate;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException.`
  _i3.Int64? get provisionedWriteCapacityUnits;
  @override
  List<Object?> get props => [
        indexName,
        provisionedWriteCapacityAutoScalingSettingsUpdate,
        provisionedWriteCapacityUnits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GlobalTableGlobalSecondaryIndexSettingsUpdate');
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'provisionedWriteCapacityAutoScalingSettingsUpdate',
      provisionedWriteCapacityAutoScalingSettingsUpdate,
    );
    helper.add(
      'provisionedWriteCapacityUnits',
      provisionedWriteCapacityUnits,
    );
    return helper.toString();
  }
}

class GlobalTableGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<
        GlobalTableGlobalSecondaryIndexSettingsUpdate> {
  const GlobalTableGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer()
      : super('GlobalTableGlobalSecondaryIndexSettingsUpdate');

  @override
  Iterable<Type> get types => const [
        GlobalTableGlobalSecondaryIndexSettingsUpdate,
        _$GlobalTableGlobalSecondaryIndexSettingsUpdate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalTableGlobalSecondaryIndexSettingsUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder();
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
        case 'ProvisionedWriteCapacityAutoScalingSettingsUpdate':
          if (value != null) {
            result.provisionedWriteCapacityAutoScalingSettingsUpdate
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
            ) as _i2.AutoScalingSettingsUpdate));
          }
          break;
        case 'ProvisionedWriteCapacityUnits':
          if (value != null) {
            result.provisionedWriteCapacityUnits = (serializers.deserialize(
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
    final payload = (object as GlobalTableGlobalSecondaryIndexSettingsUpdate);
    final result = <Object?>[
      'IndexName',
      serializers.serialize(
        payload.indexName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.provisionedWriteCapacityAutoScalingSettingsUpdate != null) {
      result
        ..add('ProvisionedWriteCapacityAutoScalingSettingsUpdate')
        ..add(serializers.serialize(
          payload.provisionedWriteCapacityAutoScalingSettingsUpdate!,
          specifiedType: const FullType(_i2.AutoScalingSettingsUpdate),
        ));
    }
    if (payload.provisionedWriteCapacityUnits != null) {
      result
        ..add('ProvisionedWriteCapacityUnits')
        ..add(serializers.serialize(
          payload.provisionedWriteCapacityUnits!,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    return result;
  }
}
