// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_description.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart'
    as _i5;

part 'replica_description.g.dart';

/// Contains the details of the replica.
abstract class ReplicaDescription
    with _i1.AWSEquatable<ReplicaDescription>
    implements Built<ReplicaDescription, ReplicaDescriptionBuilder> {
  /// Contains the details of the replica.
  factory ReplicaDescription({
    List<_i2.ReplicaGlobalSecondaryIndexDescription>? globalSecondaryIndexes,
    String? kmsMasterKeyId,
    _i3.ProvisionedThroughputOverride? provisionedThroughputOverride,
    String? regionName,
    DateTime? replicaInaccessibleDateTime,
    _i4.ReplicaStatus? replicaStatus,
    String? replicaStatusDescription,
    String? replicaStatusPercentProgress,
    _i5.TableClassSummary? replicaTableClassSummary,
  }) {
    return _$ReplicaDescription._(
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i6.BuiltList(globalSecondaryIndexes),
      kmsMasterKeyId: kmsMasterKeyId,
      provisionedThroughputOverride: provisionedThroughputOverride,
      regionName: regionName,
      replicaInaccessibleDateTime: replicaInaccessibleDateTime,
      replicaStatus: replicaStatus,
      replicaStatusDescription: replicaStatusDescription,
      replicaStatusPercentProgress: replicaStatusPercentProgress,
      replicaTableClassSummary: replicaTableClassSummary,
    );
  }

  /// Contains the details of the replica.
  factory ReplicaDescription.build(
          [void Function(ReplicaDescriptionBuilder) updates]) =
      _$ReplicaDescription;

  const ReplicaDescription._();

  static const List<_i7.SmithySerializer> serializers = [
    ReplicaDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaDescriptionBuilder b) {}

  /// Replica-specific global secondary index settings.
  _i6.BuiltList<_i2.ReplicaGlobalSecondaryIndexDescription>?
      get globalSecondaryIndexes;

  /// The KMS key of the replica that will be used for KMS encryption.
  String? get kmsMasterKeyId;

  /// Replica-specific provisioned throughput. If not described, uses the source table's provisioned throughput settings.
  _i3.ProvisionedThroughputOverride? get provisionedThroughputOverride;

  /// The name of the Region.
  String? get regionName;

  /// The time at which the replica was first detected as inaccessible. To determine cause of inaccessibility check the `ReplicaStatus` property.
  DateTime? get replicaInaccessibleDateTime;

  /// The current state of the replica:
  ///
  /// *   `CREATING` \- The replica is being created.
  ///
  /// *   `UPDATING` \- The replica is being updated.
  ///
  /// *   `DELETING` \- The replica is being deleted.
  ///
  /// *   `ACTIVE` \- The replica is ready for use.
  ///
  /// *   `REGION_DISABLED` \- The replica is inaccessible because the Amazon Web Services Region has been disabled.
  ///
  ///     If the Amazon Web Services Region remains inaccessible for more than 20 hours, DynamoDB will remove this replica from the replication group. The replica will not be deleted and replication will stop from and to this region.
  ///
  /// *   `INACCESSIBLE\_ENCRYPTION\_CREDENTIALS` \- The KMS key used to encrypt the table is inaccessible.
  ///
  ///     If the KMS key remains inaccessible for more than 20 hours, DynamoDB will remove this replica from the replication group. The replica will not be deleted and replication will stop from and to this region.
  _i4.ReplicaStatus? get replicaStatus;

  /// Detailed information about the replica status.
  String? get replicaStatusDescription;

  /// Specifies the progress of a Create, Update, or Delete action on the replica as a percentage.
  String? get replicaStatusPercentProgress;

  /// Contains details of the table class.
  _i5.TableClassSummary? get replicaTableClassSummary;
  @override
  List<Object?> get props => [
        globalSecondaryIndexes,
        kmsMasterKeyId,
        provisionedThroughputOverride,
        regionName,
        replicaInaccessibleDateTime,
        replicaStatus,
        replicaStatusDescription,
        replicaStatusPercentProgress,
        replicaTableClassSummary,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaDescription');
    helper.add(
      'globalSecondaryIndexes',
      globalSecondaryIndexes,
    );
    helper.add(
      'kmsMasterKeyId',
      kmsMasterKeyId,
    );
    helper.add(
      'provisionedThroughputOverride',
      provisionedThroughputOverride,
    );
    helper.add(
      'regionName',
      regionName,
    );
    helper.add(
      'replicaInaccessibleDateTime',
      replicaInaccessibleDateTime,
    );
    helper.add(
      'replicaStatus',
      replicaStatus,
    );
    helper.add(
      'replicaStatusDescription',
      replicaStatusDescription,
    );
    helper.add(
      'replicaStatusPercentProgress',
      replicaStatusPercentProgress,
    );
    helper.add(
      'replicaTableClassSummary',
      replicaTableClassSummary,
    );
    return helper.toString();
  }
}

class ReplicaDescriptionAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<ReplicaDescription> {
  const ReplicaDescriptionAwsJson10Serializer() : super('ReplicaDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaDescription,
        _$ReplicaDescription,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.ReplicaGlobalSecondaryIndexDescription)],
              ),
            ) as _i6.BuiltList<_i2.ReplicaGlobalSecondaryIndexDescription>));
          }
          break;
        case 'KMSMasterKeyId':
          if (value != null) {
            result.kmsMasterKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ProvisionedThroughputOverride':
          if (value != null) {
            result.provisionedThroughputOverride
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ProvisionedThroughputOverride),
            ) as _i3.ProvisionedThroughputOverride));
          }
          break;
        case 'RegionName':
          if (value != null) {
            result.regionName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReplicaInaccessibleDateTime':
          if (value != null) {
            result.replicaInaccessibleDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ReplicaStatus':
          if (value != null) {
            result.replicaStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReplicaStatus),
            ) as _i4.ReplicaStatus);
          }
          break;
        case 'ReplicaStatusDescription':
          if (value != null) {
            result.replicaStatusDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReplicaStatusPercentProgress':
          if (value != null) {
            result.replicaStatusPercentProgress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReplicaTableClassSummary':
          if (value != null) {
            result.replicaTableClassSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.TableClassSummary),
            ) as _i5.TableClassSummary));
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
    final payload = (object as ReplicaDescription);
    final result = <Object?>[];
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i2.ReplicaGlobalSecondaryIndexDescription)],
          ),
        ));
    }
    if (payload.kmsMasterKeyId != null) {
      result
        ..add('KMSMasterKeyId')
        ..add(serializers.serialize(
          payload.kmsMasterKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.provisionedThroughputOverride != null) {
      result
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          payload.provisionedThroughputOverride!,
          specifiedType: const FullType(_i3.ProvisionedThroughputOverride),
        ));
    }
    if (payload.regionName != null) {
      result
        ..add('RegionName')
        ..add(serializers.serialize(
          payload.regionName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.replicaInaccessibleDateTime != null) {
      result
        ..add('ReplicaInaccessibleDateTime')
        ..add(serializers.serialize(
          payload.replicaInaccessibleDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.replicaStatus != null) {
      result
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          payload.replicaStatus!,
          specifiedType: const FullType(_i4.ReplicaStatus),
        ));
    }
    if (payload.replicaStatusDescription != null) {
      result
        ..add('ReplicaStatusDescription')
        ..add(serializers.serialize(
          payload.replicaStatusDescription!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.replicaStatusPercentProgress != null) {
      result
        ..add('ReplicaStatusPercentProgress')
        ..add(serializers.serialize(
          payload.replicaStatusPercentProgress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.replicaTableClassSummary != null) {
      result
        ..add('ReplicaTableClassSummary')
        ..add(serializers.serialize(
          payload.replicaTableClassSummary!,
          specifiedType: const FullType(_i5.TableClassSummary),
        ));
    }
    return result;
  }
}
