// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.replica_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart'
    as _i5;

part 'replica_description.g.dart';

/// Contains the details of the replica.
abstract class ReplicaDescription
    with _i1.AWSEquatable<ReplicaDescription>
    implements Built<ReplicaDescription, ReplicaDescriptionBuilder> {
  /// Contains the details of the replica.
  factory ReplicaDescription({
    String? regionName,
    _i2.ReplicaStatus? replicaStatus,
    String? replicaStatusDescription,
    String? replicaStatusPercentProgress,
    String? kmsMasterKeyId,
    _i3.ProvisionedThroughputOverride? provisionedThroughputOverride,
    List<_i4.ReplicaGlobalSecondaryIndexDescription>? globalSecondaryIndexes,
    DateTime? replicaInaccessibleDateTime,
    _i5.TableClassSummary? replicaTableClassSummary,
  }) {
    return _$ReplicaDescription._(
      regionName: regionName,
      replicaStatus: replicaStatus,
      replicaStatusDescription: replicaStatusDescription,
      replicaStatusPercentProgress: replicaStatusPercentProgress,
      kmsMasterKeyId: kmsMasterKeyId,
      provisionedThroughputOverride: provisionedThroughputOverride,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i6.BuiltList(globalSecondaryIndexes),
      replicaInaccessibleDateTime: replicaInaccessibleDateTime,
      replicaTableClassSummary: replicaTableClassSummary,
    );
  }

  /// Contains the details of the replica.
  factory ReplicaDescription.build(
          [void Function(ReplicaDescriptionBuilder) updates]) =
      _$ReplicaDescription;

  const ReplicaDescription._();

  static const List<_i7.SmithySerializer<ReplicaDescription>> serializers = [
    ReplicaDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaDescriptionBuilder b) {}

  /// The name of the Region.
  String? get regionName;

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
  _i2.ReplicaStatus? get replicaStatus;

  /// Detailed information about the replica status.
  String? get replicaStatusDescription;

  /// Specifies the progress of a Create, Update, or Delete action on the replica as a percentage.
  String? get replicaStatusPercentProgress;

  /// The KMS key of the replica that will be used for KMS encryption.
  String? get kmsMasterKeyId;

  /// Replica-specific provisioned throughput. If not described, uses the source table's provisioned throughput settings.
  _i3.ProvisionedThroughputOverride? get provisionedThroughputOverride;

  /// Replica-specific global secondary index settings.
  _i6.BuiltList<_i4.ReplicaGlobalSecondaryIndexDescription>?
      get globalSecondaryIndexes;

  /// The time at which the replica was first detected as inaccessible. To determine cause of inaccessibility check the `ReplicaStatus` property.
  DateTime? get replicaInaccessibleDateTime;

  /// Contains details of the table class.
  _i5.TableClassSummary? get replicaTableClassSummary;
  @override
  List<Object?> get props => [
        regionName,
        replicaStatus,
        replicaStatusDescription,
        replicaStatusPercentProgress,
        kmsMasterKeyId,
        provisionedThroughputOverride,
        globalSecondaryIndexes,
        replicaInaccessibleDateTime,
        replicaTableClassSummary,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaDescription')
      ..add(
        'regionName',
        regionName,
      )
      ..add(
        'replicaStatus',
        replicaStatus,
      )
      ..add(
        'replicaStatusDescription',
        replicaStatusDescription,
      )
      ..add(
        'replicaStatusPercentProgress',
        replicaStatusPercentProgress,
      )
      ..add(
        'kmsMasterKeyId',
        kmsMasterKeyId,
      )
      ..add(
        'provisionedThroughputOverride',
        provisionedThroughputOverride,
      )
      ..add(
        'globalSecondaryIndexes',
        globalSecondaryIndexes,
      )
      ..add(
        'replicaInaccessibleDateTime',
        replicaInaccessibleDateTime,
      )
      ..add(
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
        case 'ReplicaStatusDescription':
          result.replicaStatusDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReplicaStatusPercentProgress':
          result.replicaStatusPercentProgress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KMSMasterKeyId':
          result.kmsMasterKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedThroughputOverride':
          result.provisionedThroughputOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ProvisionedThroughputOverride),
          ) as _i3.ProvisionedThroughputOverride));
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.ReplicaGlobalSecondaryIndexDescription)],
            ),
          ) as _i6.BuiltList<_i4.ReplicaGlobalSecondaryIndexDescription>));
        case 'ReplicaInaccessibleDateTime':
          result.replicaInaccessibleDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ReplicaTableClassSummary':
          result.replicaTableClassSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.TableClassSummary),
          ) as _i5.TableClassSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaDescription(
      :regionName,
      :replicaStatus,
      :replicaStatusDescription,
      :replicaStatusPercentProgress,
      :kmsMasterKeyId,
      :provisionedThroughputOverride,
      :globalSecondaryIndexes,
      :replicaInaccessibleDateTime,
      :replicaTableClassSummary
    ) = object;
    if (regionName != null) {
      result$
        ..add('RegionName')
        ..add(serializers.serialize(
          regionName,
          specifiedType: const FullType(String),
        ));
    }
    if (replicaStatus != null) {
      result$
        ..add('ReplicaStatus')
        ..add(serializers.serialize(
          replicaStatus,
          specifiedType: const FullType(_i2.ReplicaStatus),
        ));
    }
    if (replicaStatusDescription != null) {
      result$
        ..add('ReplicaStatusDescription')
        ..add(serializers.serialize(
          replicaStatusDescription,
          specifiedType: const FullType(String),
        ));
    }
    if (replicaStatusPercentProgress != null) {
      result$
        ..add('ReplicaStatusPercentProgress')
        ..add(serializers.serialize(
          replicaStatusPercentProgress,
          specifiedType: const FullType(String),
        ));
    }
    if (kmsMasterKeyId != null) {
      result$
        ..add('KMSMasterKeyId')
        ..add(serializers.serialize(
          kmsMasterKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (provisionedThroughputOverride != null) {
      result$
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          provisionedThroughputOverride,
          specifiedType: const FullType(_i3.ProvisionedThroughputOverride),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i4.ReplicaGlobalSecondaryIndexDescription)],
          ),
        ));
    }
    if (replicaInaccessibleDateTime != null) {
      result$
        ..add('ReplicaInaccessibleDateTime')
        ..add(serializers.serialize(
          replicaInaccessibleDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (replicaTableClassSummary != null) {
      result$
        ..add('ReplicaTableClassSummary')
        ..add(serializers.serialize(
          replicaTableClassSummary,
          specifiedType: const FullType(_i5.TableClassSummary),
        ));
    }
    return result$;
  }
}
