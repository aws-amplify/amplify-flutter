// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replication_group_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replication_group_member_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replication_group_member_action.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_replication_group_member_action.dart'
    as _i4;

part 'replication_group_update.g.dart';

/// Represents one of the following:
///
/// *   A new replica to be added to an existing regional table or global table. This request invokes the `CreateTableReplica` action in the destination Region.
///
/// *   New parameters for an existing replica. This request invokes the `UpdateTable` action in the destination Region.
///
/// *   An existing replica to be deleted. The request invokes the `DeleteTableReplica` action in the destination Region, deleting the replica and all if its items in the destination Region.
///
///
/// When you manually remove a table or global table replica, you do not automatically remove any associated scalable targets, scaling policies, or CloudWatch alarms.
abstract class ReplicationGroupUpdate
    with _i1.AWSEquatable<ReplicationGroupUpdate>
    implements Built<ReplicationGroupUpdate, ReplicationGroupUpdateBuilder> {
  /// Represents one of the following:
  ///
  /// *   A new replica to be added to an existing regional table or global table. This request invokes the `CreateTableReplica` action in the destination Region.
  ///
  /// *   New parameters for an existing replica. This request invokes the `UpdateTable` action in the destination Region.
  ///
  /// *   An existing replica to be deleted. The request invokes the `DeleteTableReplica` action in the destination Region, deleting the replica and all if its items in the destination Region.
  ///
  ///
  /// When you manually remove a table or global table replica, you do not automatically remove any associated scalable targets, scaling policies, or CloudWatch alarms.
  factory ReplicationGroupUpdate({
    _i2.CreateReplicationGroupMemberAction? create,
    _i3.DeleteReplicationGroupMemberAction? delete,
    _i4.UpdateReplicationGroupMemberAction? update_,
  }) {
    return _$ReplicationGroupUpdate._(
      create: create,
      delete: delete,
      update_: update_,
    );
  }

  /// Represents one of the following:
  ///
  /// *   A new replica to be added to an existing regional table or global table. This request invokes the `CreateTableReplica` action in the destination Region.
  ///
  /// *   New parameters for an existing replica. This request invokes the `UpdateTable` action in the destination Region.
  ///
  /// *   An existing replica to be deleted. The request invokes the `DeleteTableReplica` action in the destination Region, deleting the replica and all if its items in the destination Region.
  ///
  ///
  /// When you manually remove a table or global table replica, you do not automatically remove any associated scalable targets, scaling policies, or CloudWatch alarms.
  factory ReplicationGroupUpdate.build(
          [void Function(ReplicationGroupUpdateBuilder) updates]) =
      _$ReplicationGroupUpdate;

  const ReplicationGroupUpdate._();

  static const List<_i5.SmithySerializer> serializers = [
    ReplicationGroupUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationGroupUpdateBuilder b) {}

  /// The parameters required for creating a replica for the table.
  _i2.CreateReplicationGroupMemberAction? get create;

  /// The parameters required for deleting a replica for the table.
  _i3.DeleteReplicationGroupMemberAction? get delete;

  /// The parameters required for updating a replica for the table.
  _i4.UpdateReplicationGroupMemberAction? get update_;
  @override
  List<Object?> get props => [
        create,
        delete,
        update_,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationGroupUpdate');
    helper.add(
      'create',
      create,
    );
    helper.add(
      'delete',
      delete,
    );
    helper.add(
      'update_',
      update_,
    );
    return helper.toString();
  }
}

class ReplicationGroupUpdateAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ReplicationGroupUpdate> {
  const ReplicationGroupUpdateAwsJson10Serializer()
      : super('ReplicationGroupUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicationGroupUpdate,
        _$ReplicationGroupUpdate,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicationGroupUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationGroupUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Create':
          if (value != null) {
            result.create.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.CreateReplicationGroupMemberAction),
            ) as _i2.CreateReplicationGroupMemberAction));
          }
          break;
        case 'Delete':
          if (value != null) {
            result.delete.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.DeleteReplicationGroupMemberAction),
            ) as _i3.DeleteReplicationGroupMemberAction));
          }
          break;
        case 'Update':
          if (value != null) {
            result.update_.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.UpdateReplicationGroupMemberAction),
            ) as _i4.UpdateReplicationGroupMemberAction));
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
    final payload = (object as ReplicationGroupUpdate);
    final result = <Object?>[];
    if (payload.create != null) {
      result
        ..add('Create')
        ..add(serializers.serialize(
          payload.create!,
          specifiedType: const FullType(_i2.CreateReplicationGroupMemberAction),
        ));
    }
    if (payload.delete != null) {
      result
        ..add('Delete')
        ..add(serializers.serialize(
          payload.delete!,
          specifiedType: const FullType(_i3.DeleteReplicationGroupMemberAction),
        ));
    }
    if (payload.update_ != null) {
      result
        ..add('Update')
        ..add(serializers.serialize(
          payload.update_!,
          specifiedType: const FullType(_i4.UpdateReplicationGroupMemberAction),
        ));
    }
    return result;
  }
}
