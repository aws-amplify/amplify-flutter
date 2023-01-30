// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_settings_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode_summary.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_description.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart'
    as _i7;

part 'replica_settings_description.g.dart';

/// Represents the properties of a replica.
abstract class ReplicaSettingsDescription
    with _i1.AWSEquatable<ReplicaSettingsDescription>
    implements
        Built<ReplicaSettingsDescription, ReplicaSettingsDescriptionBuilder> {
  /// Represents the properties of a replica.
  factory ReplicaSettingsDescription({
    required String regionName,
    _i2.BillingModeSummary? replicaBillingModeSummary,
    List<_i3.ReplicaGlobalSecondaryIndexSettingsDescription>?
        replicaGlobalSecondaryIndexSettings,
    _i4.AutoScalingSettingsDescription?
        replicaProvisionedReadCapacityAutoScalingSettings,
    _i5.Int64? replicaProvisionedReadCapacityUnits,
    _i4.AutoScalingSettingsDescription?
        replicaProvisionedWriteCapacityAutoScalingSettings,
    _i5.Int64? replicaProvisionedWriteCapacityUnits,
    _i6.ReplicaStatus? replicaStatus,
    _i7.TableClassSummary? replicaTableClassSummary,
  }) {
    return _$ReplicaSettingsDescription._(
      regionName: regionName,
      replicaBillingModeSummary: replicaBillingModeSummary,
      replicaGlobalSecondaryIndexSettings:
          replicaGlobalSecondaryIndexSettings == null
              ? null
              : _i8.BuiltList(replicaGlobalSecondaryIndexSettings),
      replicaProvisionedReadCapacityAutoScalingSettings:
          replicaProvisionedReadCapacityAutoScalingSettings,
      replicaProvisionedReadCapacityUnits: replicaProvisionedReadCapacityUnits,
      replicaProvisionedWriteCapacityAutoScalingSettings:
          replicaProvisionedWriteCapacityAutoScalingSettings,
      replicaProvisionedWriteCapacityUnits:
          replicaProvisionedWriteCapacityUnits,
      replicaStatus: replicaStatus,
      replicaTableClassSummary: replicaTableClassSummary,
    );
  }

  /// Represents the properties of a replica.
  factory ReplicaSettingsDescription.build(
          [void Function(ReplicaSettingsDescriptionBuilder) updates]) =
      _$ReplicaSettingsDescription;

  const ReplicaSettingsDescription._();

  static const List<_i9.SmithySerializer> serializers = [
    ReplicaSettingsDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaSettingsDescriptionBuilder b) {}

  /// The Region name of the replica.
  String get regionName;

  /// The read/write capacity mode of the replica.
  _i2.BillingModeSummary? get replicaBillingModeSummary;

  /// Replica global secondary index settings for the global table.
  _i8.BuiltList<_i3.ReplicaGlobalSecondaryIndexSettingsDescription>?
      get replicaGlobalSecondaryIndexSettings;

  /// Auto scaling settings for a global table replica's read capacity units.
  _i4.AutoScalingSettingsDescription?
      get replicaProvisionedReadCapacityAutoScalingSettings;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput) in the _Amazon DynamoDB Developer Guide_.
  _i5.Int64? get replicaProvisionedReadCapacityUnits;

  /// Auto scaling settings for a global table replica's write capacity units.
  _i4.AutoScalingSettingsDescription?
      get replicaProvisionedWriteCapacityAutoScalingSettings;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput) in the _Amazon DynamoDB Developer Guide_.
  _i5.Int64? get replicaProvisionedWriteCapacityUnits;

  /// The current state of the Region:
  ///
  /// *   `CREATING` \- The Region is being created.
  ///
  /// *   `UPDATING` \- The Region is being updated.
  ///
  /// *   `DELETING` \- The Region is being deleted.
  ///
  /// *   `ACTIVE` \- The Region is ready for use.
  _i6.ReplicaStatus? get replicaStatus;

  /// Contains details of the table class.
  _i7.TableClassSummary? get replicaTableClassSummary;
  @override
  List<Object?> get props => [
        regionName,
        replicaBillingModeSummary,
        replicaGlobalSecondaryIndexSettings,
        replicaProvisionedReadCapacityAutoScalingSettings,
        replicaProvisionedReadCapacityUnits,
        replicaProvisionedWriteCapacityAutoScalingSettings,
        replicaProvisionedWriteCapacityUnits,
        replicaStatus,
        replicaTableClassSummary,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaSettingsDescription');
    helper.add(
      'regionName',
      regionName,
    );
    helper.add(
      'replicaBillingModeSummary',
      replicaBillingModeSummary,
    );
    helper.add(
      'replicaGlobalSecondaryIndexSettings',
      replicaGlobalSecondaryIndexSettings,
    );
    helper.add(
      'replicaProvisionedReadCapacityAutoScalingSettings',
      replicaProvisionedReadCapacityAutoScalingSettings,
    );
    helper.add(
      'replicaProvisionedReadCapacityUnits',
      replicaProvisionedReadCapacityUnits,
    );
    helper.add(
      'replicaProvisionedWriteCapacityAutoScalingSettings',
      replicaProvisionedWriteCapacityAutoScalingSettings,
    );
    helper.add(
      'replicaProvisionedWriteCapacityUnits',
      replicaProvisionedWriteCapacityUnits,
    );
    helper.add(
      'replicaStatus',
      replicaStatus,
    );
    helper.add(
      'replicaTableClassSummary',
      replicaTableClassSummary,
    );
    return helper.toString();
  }
}

class ReplicaSettingsDescriptionAwsJson10Serializer
    extends _i9.StructuredSmithySerializer<ReplicaSettingsDescription> {
  const ReplicaSettingsDescriptionAwsJson10Serializer()
      : super('ReplicaSettingsDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaSettingsDescription,
        _$ReplicaSettingsDescription,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaSettingsDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaSettingsDescriptionBuilder();
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
        case 'ReplicaBillingModeSummary':
          if (value != null) {
            result.replicaBillingModeSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BillingModeSummary),
            ) as _i2.BillingModeSummary));
          }
          break;
        case 'ReplicaGlobalSecondaryIndexSettings':
          if (value != null) {
            result.replicaGlobalSecondaryIndexSettings.replace(
                (serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i3.ReplicaGlobalSecondaryIndexSettingsDescription)],
              ),
            ) as _i8.BuiltList<
                    _i3.ReplicaGlobalSecondaryIndexSettingsDescription>));
          }
          break;
        case 'ReplicaProvisionedReadCapacityAutoScalingSettings':
          if (value != null) {
            result.replicaProvisionedReadCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AutoScalingSettingsDescription),
            ) as _i4.AutoScalingSettingsDescription));
          }
          break;
        case 'ReplicaProvisionedReadCapacityUnits':
          if (value != null) {
            result.replicaProvisionedReadCapacityUnits =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Int64),
            ) as _i5.Int64);
          }
          break;
        case 'ReplicaProvisionedWriteCapacityAutoScalingSettings':
          if (value != null) {
            result.replicaProvisionedWriteCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AutoScalingSettingsDescription),
            ) as _i4.AutoScalingSettingsDescription));
          }
          break;
        case 'ReplicaProvisionedWriteCapacityUnits':
          if (value != null) {
            result.replicaProvisionedWriteCapacityUnits =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Int64),
            ) as _i5.Int64);
          }
          break;
        case 'ReplicaStatus':
          if (value != null) {
            result.replicaStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.ReplicaStatus),
            ) as _i6.ReplicaStatus);
          }
          break;
        case 'ReplicaTableClassSummary':
          if (value != null) {
            result.replicaTableClassSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.TableClassSummary),
            ) as _i7.TableClassSummary));
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
    final payload = (object as ReplicaSettingsDescription);
    final result = <Object?>[
      'RegionName',
      serializers.serialize(
        payload.regionName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.replicaBillingModeSummary != null) {
      result
        ..add('ReplicaBillingModeSummary')
        ..add(serializers.serialize(
          payload.replicaBillingModeSummary!,
          specifiedType: const FullType(_i2.BillingModeSummary),
        ));
    }
    if (payload.replicaGlobalSecondaryIndexSettings != null) {
      result
        ..add('ReplicaGlobalSecondaryIndexSettings')
        ..add(serializers.serialize(
          payload.replicaGlobalSecondaryIndexSettings!,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i3.ReplicaGlobalSecondaryIndexSettingsDescription)],
          ),
        ));
    }
    if (payload.replicaProvisionedReadCapacityAutoScalingSettings != null) {
      result
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.replicaProvisionedReadCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i4.AutoScalingSettingsDescription),
        ));
    }
    if (payload.replicaProvisionedReadCapacityUnits != null) {
      result
        ..add('ReplicaProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          payload.replicaProvisionedReadCapacityUnits!,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    if (payload.replicaProvisionedWriteCapacityAutoScalingSettings != null) {
      result
        ..add('ReplicaProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.replicaProvisionedWriteCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i4.AutoScalingSettingsDescription),
        ));
    }
    if (payload.replicaProvisionedWriteCapacityUnits != null) {
      result
        ..add('ReplicaProvisionedWriteCapacityUnits')
        ..add(serializers.serialize(
          payload.replicaProvisionedWriteCapacityUnits!,
          specifiedType: const FullType(_i5.Int64),
        ));
    }
    if (payload.replicaStatus != null) {
      result
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          payload.replicaStatus!,
          specifiedType: const FullType(_i6.ReplicaStatus),
        ));
    }
    if (payload.replicaTableClassSummary != null) {
      result
        ..add('ReplicaTableClassSummary')
        ..add(serializers.serialize(
          payload.replicaTableClassSummary!,
          specifiedType: const FullType(_i7.TableClassSummary),
        ));
    }
    return result;
  }
}
