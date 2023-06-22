// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.replication_group_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replication_group_member_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replication_group_member_action.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update_replication_group_member_action.dart'
    as _i3;

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
    _i3.UpdateReplicationGroupMemberAction? update_,
    _i4.DeleteReplicationGroupMemberAction? delete,
  }) {
    return _$ReplicationGroupUpdate._(
      create: create,
      update_: update_,
      delete: delete,
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

  static const List<_i5.SmithySerializer<ReplicationGroupUpdate>> serializers =
      [ReplicationGroupUpdateAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicationGroupUpdateBuilder b) {}

  /// The parameters required for creating a replica for the table.
  _i2.CreateReplicationGroupMemberAction? get create;

  /// The parameters required for updating a replica for the table.
  _i3.UpdateReplicationGroupMemberAction? get update_;

  /// The parameters required for deleting a replica for the table.
  _i4.DeleteReplicationGroupMemberAction? get delete;
  @override
  List<Object?> get props => [
        create,
        update_,
        delete,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicationGroupUpdate')
      ..add(
        'create',
        create,
      )
      ..add(
        'update_',
        update_,
      )
      ..add(
        'delete',
        delete,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Create':
          result.create.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.CreateReplicationGroupMemberAction),
          ) as _i2.CreateReplicationGroupMemberAction));
        case 'Update':
          result.update_.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.UpdateReplicationGroupMemberAction),
          ) as _i3.UpdateReplicationGroupMemberAction));
        case 'Delete':
          result.delete.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i4.DeleteReplicationGroupMemberAction),
          ) as _i4.DeleteReplicationGroupMemberAction));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicationGroupUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicationGroupUpdate(:create, :update_, :delete) = object;
    if (create != null) {
      result$
        ..add('Create')
        ..add(serializers.serialize(
          create,
          specifiedType: const FullType(_i2.CreateReplicationGroupMemberAction),
        ));
    }
    if (update_ != null) {
      result$
        ..add('Update')
        ..add(serializers.serialize(
          update_,
          specifiedType: const FullType(_i3.UpdateReplicationGroupMemberAction),
        ));
    }
    if (delete != null) {
      result$
        ..add('Delete')
        ..add(serializers.serialize(
          delete,
          specifiedType: const FullType(_i4.DeleteReplicationGroupMemberAction),
        ));
    }
    return result$;
  }
}
