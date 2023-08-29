// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.replica_global_secondary_index_settings_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_status.dart';

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
    IndexStatus? indexStatus,
    _i2.Int64? provisionedReadCapacityUnits,
    AutoScalingSettingsDescription? provisionedReadCapacityAutoScalingSettings,
    _i2.Int64? provisionedWriteCapacityUnits,
    AutoScalingSettingsDescription? provisionedWriteCapacityAutoScalingSettings,
  }) {
    return _$ReplicaGlobalSecondaryIndexSettingsDescription._(
      indexName: indexName,
      indexStatus: indexStatus,
      provisionedReadCapacityUnits: provisionedReadCapacityUnits,
      provisionedReadCapacityAutoScalingSettings:
          provisionedReadCapacityAutoScalingSettings,
      provisionedWriteCapacityUnits: provisionedWriteCapacityUnits,
      provisionedWriteCapacityAutoScalingSettings:
          provisionedWriteCapacityAutoScalingSettings,
    );
  }

  /// Represents the properties of a global secondary index.
  factory ReplicaGlobalSecondaryIndexSettingsDescription.build(
      [void Function(ReplicaGlobalSecondaryIndexSettingsDescriptionBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexSettingsDescription;

  const ReplicaGlobalSecondaryIndexSettingsDescription._();

  static const List<
          _i3.SmithySerializer<ReplicaGlobalSecondaryIndexSettingsDescription>>
      serializers = [
    ReplicaGlobalSecondaryIndexSettingsDescriptionAwsJson10Serializer()
  ];

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
  IndexStatus? get indexStatus;

  /// The maximum number of strongly consistent reads consumed per second before DynamoDB returns a `ThrottlingException`.
  _i2.Int64? get provisionedReadCapacityUnits;

  /// Auto scaling settings for a global secondary index replica's read capacity units.
  AutoScalingSettingsDescription?
      get provisionedReadCapacityAutoScalingSettings;

  /// The maximum number of writes consumed per second before DynamoDB returns a `ThrottlingException`.
  _i2.Int64? get provisionedWriteCapacityUnits;

  /// Auto scaling settings for a global secondary index replica's write capacity units.
  AutoScalingSettingsDescription?
      get provisionedWriteCapacityAutoScalingSettings;
  @override
  List<Object?> get props => [
        indexName,
        indexStatus,
        provisionedReadCapacityUnits,
        provisionedReadCapacityAutoScalingSettings,
        provisionedWriteCapacityUnits,
        provisionedWriteCapacityAutoScalingSettings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplicaGlobalSecondaryIndexSettingsDescription')
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'indexStatus',
        indexStatus,
      )
      ..add(
        'provisionedReadCapacityUnits',
        provisionedReadCapacityUnits,
      )
      ..add(
        'provisionedReadCapacityAutoScalingSettings',
        provisionedReadCapacityAutoScalingSettings,
      )
      ..add(
        'provisionedWriteCapacityUnits',
        provisionedWriteCapacityUnits,
      )
      ..add(
        'provisionedWriteCapacityAutoScalingSettings',
        provisionedWriteCapacityAutoScalingSettings,
      );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexSettingsDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<
        ReplicaGlobalSecondaryIndexSettingsDescription> {
  const ReplicaGlobalSecondaryIndexSettingsDescriptionAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexSettingsDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexSettingsDescription,
        _$ReplicaGlobalSecondaryIndexSettingsDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IndexStatus':
          result.indexStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(IndexStatus),
          ) as IndexStatus);
        case 'ProvisionedReadCapacityUnits':
          result.provisionedReadCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'ProvisionedReadCapacityAutoScalingSettings':
          result.provisionedReadCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AutoScalingSettingsDescription),
          ) as AutoScalingSettingsDescription));
        case 'ProvisionedWriteCapacityUnits':
          result.provisionedWriteCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'ProvisionedWriteCapacityAutoScalingSettings':
          result.provisionedWriteCapacityAutoScalingSettings
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AutoScalingSettingsDescription),
          ) as AutoScalingSettingsDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaGlobalSecondaryIndexSettingsDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaGlobalSecondaryIndexSettingsDescription(
      :indexName,
      :indexStatus,
      :provisionedReadCapacityUnits,
      :provisionedReadCapacityAutoScalingSettings,
      :provisionedWriteCapacityUnits,
      :provisionedWriteCapacityAutoScalingSettings
    ) = object;
    result$.addAll([
      'IndexName',
      serializers.serialize(
        indexName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (indexStatus != null) {
      result$
        ..add('IndexStatus')
        ..add(serializers.serialize(
          indexStatus,
          specifiedType: const FullType(IndexStatus),
        ));
    }
    if (provisionedReadCapacityUnits != null) {
      result$
        ..add('ProvisionedReadCapacityUnits')
        ..add(serializers.serialize(
          provisionedReadCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (provisionedReadCapacityAutoScalingSettings != null) {
      result$
        ..add('ProvisionedReadCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          provisionedReadCapacityAutoScalingSettings,
          specifiedType: const FullType(AutoScalingSettingsDescription),
        ));
    }
    if (provisionedWriteCapacityUnits != null) {
      result$
        ..add('ProvisionedWriteCapacityUnits')
        ..add(serializers.serialize(
          provisionedWriteCapacityUnits,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (provisionedWriteCapacityAutoScalingSettings != null) {
      result$
        ..add('ProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          provisionedWriteCapacityAutoScalingSettings,
          specifiedType: const FullType(AutoScalingSettingsDescription),
        ));
    }
    return result$;
  }
}
