// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_global_secondary_index_settings_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_status.dart'
    as _i2;

part 'replica_global_secondary_index_settings_description.g.dart';

/// Represents the properties of a global secondary index.
abstract class ReplicaGlobalSecondaryIndexSettingsDescription
    with
        _i1.AWSEquatable<ReplicaGlobalSecondaryIndexSettingsDescription>
    implements
        Built<ReplicaGlobalSecondaryIndexSettingsDescription,
            ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder> {
  /// Represents the properties of a global secondary index.
  factory ReplicaGlobalSecondaryIndexSettingsDescription({
    required String indexName,
    _i2.IndexStatus? indexStatus,
    _i3.AutoScalingSettingsDescription?
        provisionedReadCapacityAutoScalingSettings,
    _i4.Int64? provisionedReadCapacityUnits,
    _i3.AutoScalingSettingsDescription?
        provisionedWriteCapacityAutoScalingSettings,
    _i4.Int64? provisionedWriteCapacityUnits,
  }) {
    return _$ReplicaGlobalSecondaryIndexSettingsDescription._(
      indexName: indexName,
      indexStatus: indexStatus,
      provisionedReadCapacityAutoScalingSettings:
          provisionedReadCapacityAutoScalingSettings,
      provisionedReadCapacityUnits: provisionedReadCapacityUnits,
      provisionedWriteCapacityAutoScalingSettings:
          provisionedWriteCapacityAutoScalingSettings,
      provisionedWriteCapacityUnits: provisionedWriteCapacityUnits,
    );
  }

  /// Represents the properties of a global secondary index.
  factory ReplicaGlobalSecondaryIndexSettingsDescription.build(
      [void Function(ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexSettingsDescription;

  const ReplicaGlobalSecondaryIndexSettingsDescription._();

  static const List<_i5.SmithySerializer> serializers = [
    ReplicaGlobalSecondaryIndexSettingsDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder b) {}

  /// The name of the global secondary index. The name must be unique among all other indexes on this table.
  String get indexName;

  /// The current status of the global secondary index:
  ///
  /// *   `CREATING` \- The global secondary index is being created.
  ///
  /// *   `UPDATING` \- The global secondary index is being updated.
  ///
  /// *   `DELETING` \- The global secondary index is being deleted.
  ///
  /// *   `ACTIVE` \- The global secondary index is ready for use.
  _i2.IndexStatus? get indexStatus;

  /// Auto scaling settings for a global secondary index replica's read capacity units.
  _i3.AutoScalingSettingsDescription?
      get provisionedReadCapacityAutoScalingSettings;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`.
  _i4.Int64? get provisionedReadCapacityUnits;

  /// Auto scaling settings for a global secondary index replica's write capacity units.
  _i3.AutoScalingSettingsDescription?
      get provisionedWriteCapacityAutoScalingSettings;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`.
  _i4.Int64? get provisionedWriteCapacityUnits;
  @override
  List<Object?> get props => [
        indexName,
        indexStatus,
        provisionedReadCapacityAutoScalingSettings,
        provisionedReadCapacityUnits,
        provisionedWriteCapacityAutoScalingSettings,
        provisionedWriteCapacityUnits,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplicaGlobalSecondaryIndexSettingsDescription');
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'indexStatus',
      indexStatus,
    );
    helper.add(
      'provisionedReadCapacityAutoScalingSettings',
      provisionedReadCapacityAutoScalingSettings,
    );
    helper.add(
      'provisionedReadCapacityUnits',
      provisionedReadCapacityUnits,
    );
    helper.add(
      'provisionedWriteCapacityAutoScalingSettings',
      provisionedWriteCapacityAutoScalingSettings,
    );
    helper.add(
      'provisionedWriteCapacityUnits',
      provisionedWriteCapacityUnits,
    );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexSettingsDescriptionAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<
        ReplicaGlobalSecondaryIndexSettingsDescription> {
  const ReplicaGlobalSecondaryIndexSettingsDescriptionAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexSettingsDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexSettingsDescription,
        _$ReplicaGlobalSecondaryIndexSettingsDescription,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaGlobalSecondaryIndexSettingsDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder();
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
        case 'IndexStatus':
          if (value != null) {
            result.indexStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IndexStatus),
            ) as _i2.IndexStatus);
          }
          break;
        case 'ProvisionedReadCapacityAutoScalingSettings':
          if (value != null) {
            result.provisionedReadCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
            ) as _i3.AutoScalingSettingsDescription));
          }
          break;
        case 'ProvisionedReadCapacityUnits':
          if (value != null) {
            result.provisionedReadCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
          }
          break;
        case 'ProvisionedWriteCapacityAutoScalingSettings':
          if (value != null) {
            result.provisionedWriteCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
            ) as _i3.AutoScalingSettingsDescription));
          }
          break;
        case 'ProvisionedWriteCapacityUnits':
          if (value != null) {
            result.provisionedWriteCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Int64),
            ) as _i4.Int64);
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
    final payload = (object as ReplicaGlobalSecondaryIndexSettingsDescription);
    final result = <Object?>[
      'IndexName',
      serializers.serialize(
        payload.indexName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.indexStatus != null) {
      result
        ..add('IndexStatus')
        ..add(serializers.serialize(
          payload.indexStatus!,
          specifiedType: const FullType(_i2.IndexStatus),
        ));
    }
    if (payload.provisionedReadCapacityAutoScalingSettings != null) {
      result
        ..add('ProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.provisionedReadCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    if (payload.provisionedReadCapacityUnits != null) {
      result
        ..add('ProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          payload.provisionedReadCapacityUnits!,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (payload.provisionedWriteCapacityAutoScalingSettings != null) {
      result
        ..add('ProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.provisionedWriteCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    if (payload.provisionedWriteCapacityUnits != null) {
      result
        ..add('ProvisionedWriteCapacityUnits')
        ..add(serializers.serialize(
          payload.provisionedWriteCapacityUnits!,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    return result;
  }
}
