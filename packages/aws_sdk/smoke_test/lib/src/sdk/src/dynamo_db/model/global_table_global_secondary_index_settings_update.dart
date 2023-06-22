// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.global_table_global_secondary_index_settings_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_update.dart'
    as _i3;

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
    _i2.Int64? provisionedWriteCapacityUnits,
    _i3.AutoScalingSettingsUpdate?
        provisionedWriteCapacityAutoScalingSettingsUpdate,
  }) {
    return _$GlobalTableGlobalSecondaryIndexSettingsUpdate._(
      indexName: indexName,
      provisionedWriteCapacityUnits: provisionedWriteCapacityUnits,
      provisionedWriteCapacityAutoScalingSettingsUpdate:
          provisionedWriteCapacityAutoScalingSettingsUpdate,
    );
  }

  /// Represents the settings of a global secondary index for a global table that will be modified.
  factory GlobalTableGlobalSecondaryIndexSettingsUpdate.build(
      [void Function(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder)
          updates]) = _$GlobalTableGlobalSecondaryIndexSettingsUpdate;

  const GlobalTableGlobalSecondaryIndexSettingsUpdate._();

  static const List<
          _i4.SmithySerializer<GlobalTableGlobalSecondaryIndexSettingsUpdate>>
      serializers = [
    GlobalTableGlobalSecondaryIndexSettingsUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalTableGlobalSecondaryIndexSettingsUpdateBuilder b) {}

  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  String get indexName;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException.`
  _i2.Int64? get provisionedWriteCapacityUnits;

  /// Auto scaling settings for managing a global secondary index's write capacity units.
  _i3.AutoScalingSettingsUpdate?
      get provisionedWriteCapacityAutoScalingSettingsUpdate;
  @override
  List<Object?> get props => [
        indexName,
        provisionedWriteCapacityUnits,
        provisionedWriteCapacityAutoScalingSettingsUpdate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GlobalTableGlobalSecondaryIndexSettingsUpdate')
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'provisionedWriteCapacityUnits',
        provisionedWriteCapacityUnits,
      )
      ..add(
        'provisionedWriteCapacityAutoScalingSettingsUpdate',
        provisionedWriteCapacityAutoScalingSettingsUpdate,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedWriteCapacityUnits':
          result.provisionedWriteCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'ProvisionedWriteCapacityAutoScalingSettingsUpdate':
          result.provisionedWriteCapacityAutoScalingSettingsUpdate
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
    GlobalTableGlobalSecondaryIndexSettingsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalTableGlobalSecondaryIndexSettingsUpdate(
      :indexName,
      :provisionedWriteCapacityUnits,
      :provisionedWriteCapacityAutoScalingSettingsUpdate
    ) = object;
    result$.addAll([
      'IndexName',
      serializers.serialize(
        indexName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (provisionedWriteCapacityUnits != null) {
      result$
        ..add('ProvisionedWriteCapacityUnits')
        ..add(serializers.serialize(
          provisionedWriteCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (provisionedWriteCapacityAutoScalingSettingsUpdate != null) {
      result$
        ..add('ProvisionedWriteCapacityAutoScalingSettingsUpdate')
        ..add(serializers.serialize(
          provisionedWriteCapacityAutoScalingSettingsUpdate,
          specifiedType: const FullType(_i3.AutoScalingSettingsUpdate),
        ));
    }
    return result$;
  }
}
