// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.create_replication_group_member_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_global_secondary_index.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart' as _i4;

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
    List<_i2.ReplicaGlobalSecondaryIndex>? globalSecondaryIndexes,
    String? kmsMasterKeyId,
    _i3.ProvisionedThroughputOverride? provisionedThroughputOverride,
    required String regionName,
    _i4.TableClass? tableClassOverride,
  }) {
    return _$CreateReplicationGroupMemberAction._(
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i5.BuiltList(globalSecondaryIndexes),
      kmsMasterKeyId: kmsMasterKeyId,
      provisionedThroughputOverride: provisionedThroughputOverride,
      regionName: regionName,
      tableClassOverride: tableClassOverride,
    );
  }

  /// Represents a replica to be created.
  factory CreateReplicationGroupMemberAction.build(
          [void Function(CreateReplicationGroupMemberActionBuilder) updates]) =
      _$CreateReplicationGroupMemberAction;

  const CreateReplicationGroupMemberAction._();

  static const List<_i6.SmithySerializer> serializers = [
    CreateReplicationGroupMemberActionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateReplicationGroupMemberActionBuilder b) {}

  /// Replica-specific global secondary index settings.
  _i5.BuiltList<_i2.ReplicaGlobalSecondaryIndex>? get globalSecondaryIndexes;

  /// The KMS key that should be used for KMS encryption in the new replica. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter if the key is different from the default DynamoDB KMS key `alias/aws/dynamodb`.
  String? get kmsMasterKeyId;

  /// Replica-specific provisioned throughput. If not specified, uses the source table's provisioned throughput settings.
  _i3.ProvisionedThroughputOverride? get provisionedThroughputOverride;

  /// The Region where the new replica will be created.
  String get regionName;

  /// Replica-specific table class. If not specified, uses the source table's table class.
  _i4.TableClass? get tableClassOverride;
  @override
  List<Object?> get props => [
        globalSecondaryIndexes,
        kmsMasterKeyId,
        provisionedThroughputOverride,
        regionName,
        tableClassOverride,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReplicationGroupMemberAction');
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
      'tableClassOverride',
      tableClassOverride,
    );
    return helper.toString();
  }
}

class CreateReplicationGroupMemberActionAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<CreateReplicationGroupMemberAction> {
  const CreateReplicationGroupMemberActionAwsJson10Serializer()
      : super('CreateReplicationGroupMemberAction');

  @override
  Iterable<Type> get types => const [
        CreateReplicationGroupMemberAction,
        _$CreateReplicationGroupMemberAction,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
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
      switch (key) {
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.ReplicaGlobalSecondaryIndex)],
              ),
            ) as _i5.BuiltList<_i2.ReplicaGlobalSecondaryIndex>));
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
          result.regionName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TableClassOverride':
          if (value != null) {
            result.tableClassOverride = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.TableClass),
            ) as _i4.TableClass);
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
    final payload = (object as CreateReplicationGroupMemberAction);
    final result = <Object?>[
      'RegionName',
      serializers.serialize(
        payload.regionName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i2.ReplicaGlobalSecondaryIndex)],
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
    if (payload.tableClassOverride != null) {
      result
        ..add('TableClassOverride')
        ..add(serializers.serialize(
          payload.tableClassOverride!,
          specifiedType: const FullType(_i4.TableClass),
        ));
    }
    return result;
  }
}
