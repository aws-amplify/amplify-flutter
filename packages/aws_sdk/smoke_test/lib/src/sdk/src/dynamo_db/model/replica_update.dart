// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/create_replica_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_replica_action.dart'
    as _i3;

part 'replica_update.g.dart';

/// Represents one of the following:
///
/// *   A new replica to be added to an existing global table.
///
/// *   New parameters for an existing replica.
///
/// *   An existing replica to be removed from an existing global table.
abstract class ReplicaUpdate
    with _i1.AWSEquatable<ReplicaUpdate>
    implements Built<ReplicaUpdate, ReplicaUpdateBuilder> {
  /// Represents one of the following:
  ///
  /// *   A new replica to be added to an existing global table.
  ///
  /// *   New parameters for an existing replica.
  ///
  /// *   An existing replica to be removed from an existing global table.
  factory ReplicaUpdate({
    _i2.CreateReplicaAction? create,
    _i3.DeleteReplicaAction? delete,
  }) {
    return _$ReplicaUpdate._(
      create: create,
      delete: delete,
    );
  }

  /// Represents one of the following:
  ///
  /// *   A new replica to be added to an existing global table.
  ///
  /// *   New parameters for an existing replica.
  ///
  /// *   An existing replica to be removed from an existing global table.
  factory ReplicaUpdate.build([void Function(ReplicaUpdateBuilder) updates]) =
      _$ReplicaUpdate;

  const ReplicaUpdate._();

  static const List<_i4.SmithySerializer> serializers = [
    ReplicaUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaUpdateBuilder b) {}

  /// The parameters required for creating a replica on an existing global table.
  _i2.CreateReplicaAction? get create;

  /// The name of the existing replica to be removed.
  _i3.DeleteReplicaAction? get delete;
  @override
  List<Object?> get props => [
        create,
        delete,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaUpdate');
    helper.add(
      'create',
      create,
    );
    helper.add(
      'delete',
      delete,
    );
    return helper.toString();
  }
}

class ReplicaUpdateAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ReplicaUpdate> {
  const ReplicaUpdateAwsJson10Serializer() : super('ReplicaUpdate');

  @override
  Iterable<Type> get types => const [
        ReplicaUpdate,
        _$ReplicaUpdate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaUpdateBuilder();
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
              specifiedType: const FullType(_i2.CreateReplicaAction),
            ) as _i2.CreateReplicaAction));
          }
          break;
        case 'Delete':
          if (value != null) {
            result.delete.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DeleteReplicaAction),
            ) as _i3.DeleteReplicaAction));
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
    final payload = (object as ReplicaUpdate);
    final result = <Object?>[];
    if (payload.create != null) {
      result
        ..add('Create')
        ..add(serializers.serialize(
          payload.create!,
          specifiedType: const FullType(_i2.CreateReplicaAction),
        ));
    }
    if (payload.delete != null) {
      result
        ..add('Delete')
        ..add(serializers.serialize(
          payload.delete!,
          specifiedType: const FullType(_i3.DeleteReplicaAction),
        ));
    }
    return result;
  }
}
