// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.delete_replica_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_replica_action.g.dart';

/// Represents a replica to be removed.
abstract class DeleteReplicaAction
    with _i1.AWSEquatable<DeleteReplicaAction>
    implements Built<DeleteReplicaAction, DeleteReplicaActionBuilder> {
  /// Represents a replica to be removed.
  factory DeleteReplicaAction({required String regionName}) {
    return _$DeleteReplicaAction._(regionName: regionName);
  }

  /// Represents a replica to be removed.
  factory DeleteReplicaAction.build(
          [void Function(DeleteReplicaActionBuilder) updates]) =
      _$DeleteReplicaAction;

  const DeleteReplicaAction._();

  static const List<_i2.SmithySerializer> serializers = [
    DeleteReplicaActionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteReplicaActionBuilder b) {}

  /// The Region of the replica to be removed.
  String get regionName;
  @override
  List<Object?> get props => [regionName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteReplicaAction');
    helper.add(
      'regionName',
      regionName,
    );
    return helper.toString();
  }
}

class DeleteReplicaActionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DeleteReplicaAction> {
  const DeleteReplicaActionAwsJson10Serializer() : super('DeleteReplicaAction');

  @override
  Iterable<Type> get types => const [
        DeleteReplicaAction,
        _$DeleteReplicaAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteReplicaAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteReplicaActionBuilder();
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
    final payload = (object as DeleteReplicaAction);
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
