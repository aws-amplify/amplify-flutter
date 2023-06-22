// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.replica_settings_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode_summary.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_settings_description.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart'
    as _i2;
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
    _i2.ReplicaStatus? replicaStatus,
    _i3.BillingModeSummary? replicaBillingModeSummary,
    _i4.Int64? replicaProvisionedReadCapacityUnits,
    _i5.AutoScalingSettingsDescription?
        replicaProvisionedReadCapacityAutoScalingSettings,
    _i4.Int64? replicaProvisionedWriteCapacityUnits,
    _i5.AutoScalingSettingsDescription?
        replicaProvisionedWriteCapacityAutoScalingSettings,
    List<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>?
        replicaGlobalSecondaryIndexSettings,
    _i7.TableClassSummary? replicaTableClassSummary,
  }) {
    return _$ReplicaSettingsDescription._(
      regionName: regionName,
      replicaStatus: replicaStatus,
      replicaBillingModeSummary: replicaBillingModeSummary,
      replicaProvisionedReadCapacityUnits: replicaProvisionedReadCapacityUnits,
      replicaProvisionedReadCapacityAutoScalingSettings:
          replicaProvisionedReadCapacityAutoScalingSettings,
      replicaProvisionedWriteCapacityUnits:
          replicaProvisionedWriteCapacityUnits,
      replicaProvisionedWriteCapacityAutoScalingSettings:
          replicaProvisionedWriteCapacityAutoScalingSettings,
      replicaGlobalSecondaryIndexSettings:
          replicaGlobalSecondaryIndexSettings == null
              ? null
              : _i8.BuiltList(replicaGlobalSecondaryIndexSettings),
      replicaTableClassSummary: replicaTableClassSummary,
    );
  }

  /// Represents the properties of a replica.
  factory ReplicaSettingsDescription.build(
          [void Function(ReplicaSettingsDescriptionBuilder) updates]) =
      _$ReplicaSettingsDescription;

  const ReplicaSettingsDescription._();

  static const List<_i9.SmithySerializer<ReplicaSettingsDescription>>
      serializers = [ReplicaSettingsDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaSettingsDescriptionBuilder b) {}

  /// The Region name of the replica.
  String get regionName;

  /// The current state of the Region:
  ///
  /// *   `CREATING` \- The Region is being created.
  ///
  /// *   `UPDATING` \- The Region is being updated.
  ///
  /// *   `DELETING` \- The Region is being deleted.
  ///
  /// *   `ACTIVE` \- The Region is ready for use.
  _i2.ReplicaStatus? get replicaStatus;

  /// The read/write capacity mode of the replica.
  _i3.BillingModeSummary? get replicaBillingModeSummary;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput) in the _Amazon DynamoDB Developer Guide_.
  _i4.Int64? get replicaProvisionedReadCapacityUnits;

  /// Auto scaling settings for a global table replica's read capacity units.
  _i5.AutoScalingSettingsDescription?
      get replicaProvisionedReadCapacityAutoScalingSettings;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`. For more information, see [Specifying Read and Write Requirements](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput) in the _Amazon DynamoDB Developer Guide_.
  _i4.Int64? get replicaProvisionedWriteCapacityUnits;

  /// Auto scaling settings for a global table replica's write capacity units.
  _i5.AutoScalingSettingsDescription?
      get replicaProvisionedWriteCapacityAutoScalingSettings;

  /// Replica global secondary index settings for the global table.
  _i8.BuiltList<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>?
      get replicaGlobalSecondaryIndexSettings;

  /// Contains details of the table class.
  _i7.TableClassSummary? get replicaTableClassSummary;
  @override
  List<Object?> get props => [
        regionName,
        replicaStatus,
        replicaBillingModeSummary,
        replicaProvisionedReadCapacityUnits,
        replicaProvisionedReadCapacityAutoScalingSettings,
        replicaProvisionedWriteCapacityUnits,
        replicaProvisionedWriteCapacityAutoScalingSettings,
        replicaGlobalSecondaryIndexSettings,
        replicaTableClassSummary,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaSettingsDescription')
      ..add(
        'regionName',
        regionName,
      )
      ..add(
        'replicaStatus',
        replicaStatus,
      )
      ..add(
        'replicaBillingModeSummary',
        replicaBillingModeSummary,
      )
      ..add(
        'replicaProvisionedReadCapacityUnits',
        replicaProvisionedReadCapacityUnits,
      )
      ..add(
        'replicaProvisionedReadCapacityAutoScalingSettings',
        replicaProvisionedReadCapacityAutoScalingSettings,
      )
      ..add(
        'replicaProvisionedWriteCapacityUnits',
        replicaProvisionedWriteCapacityUnits,
      )
      ..add(
        'replicaProvisionedWriteCapacityAutoScalingSettings',
        replicaProvisionedWriteCapacityAutoScalingSettings,
      )
      ..add(
        'replicaGlobalSecondaryIndexSettings',
        replicaGlobalSecondaryIndexSettings,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RegionName':
          result.regionName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReplicaStatus':
          result.replicaStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ReplicaStatus),
          ) as _i2.ReplicaStatus);
        case 'ReplicaBillingModeSummary':
          result.replicaBillingModeSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.BillingModeSummary),
          ) as _i3.BillingModeSummary));
        case 'ReplicaProvisionedReadCapacityUnits':
          result.replicaProvisionedReadCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'ReplicaProvisionedReadCapacityAutoScalingSettings':
          result.replicaProvisionedReadCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AutoScalingSettingsDescription),
          ) as _i5.AutoScalingSettingsDescription));
        case 'ReplicaProvisionedWriteCapacityUnits':
          result.replicaProvisionedWriteCapacityUnits =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'ReplicaProvisionedWriteCapacityAutoScalingSettings':
          result.replicaProvisionedWriteCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AutoScalingSettingsDescription),
          ) as _i5.AutoScalingSettingsDescription));
        case 'ReplicaGlobalSecondaryIndexSettings':
          result.replicaGlobalSecondaryIndexSettings.replace((serializers
              .deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i6.ReplicaGlobalSecondaryIndexSettingsDescription)],
            ),
          ) as _i8
              .BuiltList<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>));
        case 'ReplicaTableClassSummary':
          result.replicaTableClassSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.TableClassSummary),
          ) as _i7.TableClassSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaSettingsDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaSettingsDescription(
      :regionName,
      :replicaStatus,
      :replicaBillingModeSummary,
      :replicaProvisionedReadCapacityUnits,
      :replicaProvisionedReadCapacityAutoScalingSettings,
      :replicaProvisionedWriteCapacityUnits,
      :replicaProvisionedWriteCapacityAutoScalingSettings,
      :replicaGlobalSecondaryIndexSettings,
      :replicaTableClassSummary
    ) = object;
    result$.addAll([
      'RegionName',
      serializers.serialize(
        regionName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (replicaStatus != null) {
      result$
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          replicaStatus,
          specifiedType: const FullType(_i2.ReplicaStatus),
        ));
    }
    if (replicaBillingModeSummary != null) {
      result$
        ..add('ReplicaBillingModeSummary')
        ..add(serializers.serialize(
          replicaBillingModeSummary,
          specifiedType: const FullType(_i3.BillingModeSummary),
        ));
    }
    if (replicaProvisionedReadCapacityUnits != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityUnits,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (replicaProvisionedReadCapacityAutoScalingSettings != null) {
      result$
        ..add('ReplicaProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          replicaProvisionedReadCapacityAutoScalingSettings,
          specifiedType: const FullType(_i5.AutoScalingSettingsDescription),
        ));
    }
    if (replicaProvisionedWriteCapacityUnits != null) {
      result$
        ..add('ReplicaProvisionedWriteCapacityUnits')
        ..add(serializers.serialize(
          replicaProvisionedWriteCapacityUnits,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (replicaProvisionedWriteCapacityAutoScalingSettings != null) {
      result$
        ..add('ReplicaProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          replicaProvisionedWriteCapacityAutoScalingSettings,
          specifiedType: const FullType(_i5.AutoScalingSettingsDescription),
        ));
    }
    if (replicaGlobalSecondaryIndexSettings != null) {
      result$
        ..add('ReplicaGlobalSecondaryIndexSettings')
        ..add(serializers.serialize(
          replicaGlobalSecondaryIndexSettings,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i6.ReplicaGlobalSecondaryIndexSettingsDescription)],
          ),
        ));
    }
    if (replicaTableClassSummary != null) {
      result$
        ..add('ReplicaTableClassSummary')
        ..add(serializers.serialize(
          replicaTableClassSummary,
          specifiedType: const FullType(_i7.TableClassSummary),
        ));
    }
    return result$;
  }
}
