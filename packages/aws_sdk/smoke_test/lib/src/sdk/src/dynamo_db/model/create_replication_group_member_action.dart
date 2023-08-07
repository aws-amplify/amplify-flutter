// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.create_replication_group_member_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart';

part 'create_replication_group_member_action.g.dart';

/// Represents a replica to be created.
abstract class CreateReplicationGroupMemberAction
    with
        _i1.AWSEquatable<CreateReplicationGroupMemberAction>
    implements
        Built<CreateReplicationGroupMemberAction,
            CreateReplicationGroupMemberActionBuilder> {
  /// Represents a replica to be created.
  factory CreateReplicationGroupMemberAction({
    required String regionName,
    String? kmsMasterKeyId,
    ProvisionedThroughputOverride? provisionedThroughputOverride,
    List<ReplicaGlobalSecondaryIndex>? globalSecondaryIndexes,
    TableClass? tableClassOverride,
  }) {
    return _$CreateReplicationGroupMemberAction._(
      regionName: regionName,
      kmsMasterKeyId: kmsMasterKeyId,
      provisionedThroughputOverride: provisionedThroughputOverride,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i2.BuiltList(globalSecondaryIndexes),
      tableClassOverride: tableClassOverride,
    );
  }

  /// Represents a replica to be created.
  factory CreateReplicationGroupMemberAction.build(
          [void Function(CreateReplicationGroupMemberActionBuilder) updates]) =
      _$CreateReplicationGroupMemberAction;

  const CreateReplicationGroupMemberAction._();

  static const List<_i3.SmithySerializer<CreateReplicationGroupMemberAction>>
      serializers = [CreateReplicationGroupMemberActionAwsJson10Serializer()];

  /// The Region where the new replica will be created.
  String get regionName;

  /// The KMS key that should be used for KMS encryption in the new replica. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB KMS key `alias/aws/dynamodb`.
  String? get kmsMasterKeyId;

  /// Replica-specific provisioned throughput. If not specified, uses the source table's provisioned throughput settings.
  ProvisionedThroughputOverride? get provisionedThroughputOverride;

  /// Replica-specific global secondary index settings.
  _i2.BuiltList<ReplicaGlobalSecondaryIndex>? get globalSecondaryIndexes;

  /// Replica-specific table class. If not specified, uses the source table's table class.
  TableClass? get tableClassOverride;
  @override
  List<Object?> get props => [
        regionName,
        kmsMasterKeyId,
        provisionedThroughputOverride,
        globalSecondaryIndexes,
        tableClassOverride,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReplicationGroupMemberAction')
          ..add(
            'regionName',
            regionName,
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
            'tableClassOverride',
            tableClassOverride,
          );
    return helper.toString();
  }
}

class CreateReplicationGroupMemberActionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<CreateReplicationGroupMemberAction> {
  const CreateReplicationGroupMemberActionAwsJson10Serializer()
      : super('CreateReplicationGroupMemberAction');

  @override
  Iterable<Type> get types => const [
        CreateReplicationGroupMemberAction,
        _$CreateReplicationGroupMemberAction,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateReplicationGroupMemberAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReplicationGroupMemberActionBuilder();
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
        case 'KMSMasterKeyId':
          result.kmsMasterKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedThroughputOverride':
          result.provisionedThroughputOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ProvisionedThroughputOverride),
          ) as ProvisionedThroughputOverride));
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReplicaGlobalSecondaryIndex)],
            ),
          ) as _i2.BuiltList<ReplicaGlobalSecondaryIndex>));
        case 'TableClassOverride':
          result.tableClassOverride = (serializers.deserialize(
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
    CreateReplicationGroupMemberAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateReplicationGroupMemberAction(
      :regionName,
      :kmsMasterKeyId,
      :provisionedThroughputOverride,
      :globalSecondaryIndexes,
      :tableClassOverride
    ) = object;
    result$.addAll([
      'RegionName',
      serializers.serialize(
        regionName,
        specifiedType: const FullType(String),
      ),
    ]);
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
          specifiedType: const FullType(ProvisionedThroughputOverride),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ReplicaGlobalSecondaryIndex)],
          ),
        ));
    }
    if (tableClassOverride != null) {
      result$
        ..add('TableClassOverride')
        ..add(serializers.serialize(
          tableClassOverride,
          specifiedType: const FullType(TableClass),
        ));
    }
    return result$;
  }
}
