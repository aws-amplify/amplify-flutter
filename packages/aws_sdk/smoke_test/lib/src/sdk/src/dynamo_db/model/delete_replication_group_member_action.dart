// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.delete_replication_group_member_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_replication_group_member_action.g.dart';

/// Represents a replica to be deleted.
abstract class DeleteReplicationGroupMemberAction
    with
        _i1.AWSEquatable<DeleteReplicationGroupMemberAction>
    implements
        Built<DeleteReplicationGroupMemberAction,
            DeleteReplicationGroupMemberActionBuilder> {
  /// Represents a replica to be deleted.
  factory DeleteReplicationGroupMemberAction({required String regionName}) {
    return _$DeleteReplicationGroupMemberAction._(regionName: regionName);
  }

  /// Represents a replica to be deleted.
  factory DeleteReplicationGroupMemberAction.build(
          [void Function(DeleteReplicationGroupMemberActionBuilder) updates]) =
      _$DeleteReplicationGroupMemberAction;

  const DeleteReplicationGroupMemberAction._();

  static const List<_i2.SmithySerializer> serializers = [
    DeleteReplicationGroupMemberActionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteReplicationGroupMemberActionBuilder b) {}

  /// The Region where the replica exists.
  String get regionName;
  @override
  List<Object?> get props => [regionName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteReplicationGroupMemberAction');
    helper.add(
      'regionName',
      regionName,
    );
    return helper.toString();
  }
}

class DeleteReplicationGroupMemberActionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DeleteReplicationGroupMemberAction> {
  const DeleteReplicationGroupMemberActionAwsJson10Serializer()
      : super('DeleteReplicationGroupMemberAction');

  @override
  Iterable<Type> get types => const [
        DeleteReplicationGroupMemberAction,
        _$DeleteReplicationGroupMemberAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteReplicationGroupMemberAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteReplicationGroupMemberActionBuilder();
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
    final payload = (object as DeleteReplicationGroupMemberAction);
    final result = <Object?>[
      'RegionName',
      serializers.serialize(
        payload.regionName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
