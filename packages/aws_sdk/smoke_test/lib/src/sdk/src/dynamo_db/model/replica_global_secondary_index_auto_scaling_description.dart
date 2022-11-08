// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_global_secondary_index_auto_scaling_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/auto_scaling_settings_description.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_status.dart'
    as _i2;

part 'replica_global_secondary_index_auto_scaling_description.g.dart';

/// Represents the auto scaling configuration for a replica global secondary index.
abstract class ReplicaGlobalSecondaryIndexAutoScalingDescription
    with
        _i1.AWSEquatable<ReplicaGlobalSecondaryIndexAutoScalingDescription>
    implements
        Built<ReplicaGlobalSecondaryIndexAutoScalingDescription,
            ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder> {
  /// Represents the auto scaling configuration for a replica global secondary index.
  factory ReplicaGlobalSecondaryIndexAutoScalingDescription({
    String? indexName,
    _i2.IndexStatus? indexStatus,
    _i3.AutoScalingSettingsDescription?
        provisionedReadCapacityAutoScalingSettings,
    _i3.AutoScalingSettingsDescription?
        provisionedWriteCapacityAutoScalingSettings,
  }) {
    return _$ReplicaGlobalSecondaryIndexAutoScalingDescription._(
      indexName: indexName,
      indexStatus: indexStatus,
      provisionedReadCapacityAutoScalingSettings:
          provisionedReadCapacityAutoScalingSettings,
      provisionedWriteCapacityAutoScalingSettings:
          provisionedWriteCapacityAutoScalingSettings,
    );
  }

  /// Represents the auto scaling configuration for a replica global secondary index.
  factory ReplicaGlobalSecondaryIndexAutoScalingDescription.build(
      [void Function(ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexAutoScalingDescription;

  const ReplicaGlobalSecondaryIndexAutoScalingDescription._();

  static const List<_i4.SmithySerializer> serializers = [
    ReplicaGlobalSecondaryIndexAutoScalingDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder b) {}

  /// The name of the global secondary index.
  String? get indexName;

  /// The current state of the replica global secondary index:
  ///
  /// *   `CREATING` \- The index is being created.
  ///
  /// *   `UPDATING` \- The index is being updated.
  ///
  /// *   `DELETING` \- The index is being deleted.
  ///
  /// *   `ACTIVE` \- The index is ready for use.
  _i2.IndexStatus? get indexStatus;

  /// Represents the auto scaling settings for a global table or global secondary index.
  _i3.AutoScalingSettingsDescription?
      get provisionedReadCapacityAutoScalingSettings;

  /// Represents the auto scaling settings for a global table or global secondary index.
  _i3.AutoScalingSettingsDescription?
      get provisionedWriteCapacityAutoScalingSettings;
  @override
  List<Object?> get props => [
        indexName,
        indexStatus,
        provisionedReadCapacityAutoScalingSettings,
        provisionedWriteCapacityAutoScalingSettings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ReplicaGlobalSecondaryIndexAutoScalingDescription');
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
      'provisionedWriteCapacityAutoScalingSettings',
      provisionedWriteCapacityAutoScalingSettings,
    );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexAutoScalingDescriptionAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<
        ReplicaGlobalSecondaryIndexAutoScalingDescription> {
  const ReplicaGlobalSecondaryIndexAutoScalingDescriptionAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexAutoScalingDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexAutoScalingDescription,
        _$ReplicaGlobalSecondaryIndexAutoScalingDescription,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaGlobalSecondaryIndexAutoScalingDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
        case 'ProvisionedWriteCapacityAutoScalingSettings':
          if (value != null) {
            result.provisionedWriteCapacityAutoScalingSettings
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
            ) as _i3.AutoScalingSettingsDescription));
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
    final payload =
        (object as ReplicaGlobalSecondaryIndexAutoScalingDescription);
    final result = <Object?>[];
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
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
    if (payload.provisionedWriteCapacityAutoScalingSettings != null) {
      result
        ..add('ProvisionedWriteCapacityAutoScalingSettings')
        ..add(serializers.serialize(
          payload.provisionedWriteCapacityAutoScalingSettings!,
          specifiedType: const FullType(_i3.AutoScalingSettingsDescription),
        ));
    }
    return result;
  }
}
