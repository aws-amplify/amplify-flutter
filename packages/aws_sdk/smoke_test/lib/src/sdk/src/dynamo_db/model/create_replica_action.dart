// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.create_replica_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_replica_action.g.dart';

/// Represents a replica to be added.
abstract class CreateReplicaAction
    with _i1.AWSEquatable<CreateReplicaAction>
    implements Built<CreateReplicaAction, CreateReplicaActionBuilder> {
  /// Represents a replica to be added.
  factory CreateReplicaAction({required String regionName}) {
    return _$CreateReplicaAction._(regionName: regionName);
  }

  /// Represents a replica to be added.
  factory CreateReplicaAction.build(
          [void Function(CreateReplicaActionBuilder) updates]) =
      _$CreateReplicaAction;

  const CreateReplicaAction._();

  static const List<_i2.SmithySerializer> serializers = [
    CreateReplicaActionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateReplicaActionBuilder b) {}

  /// The Region of the replica to be added.
  String get regionName;
  @override
  List<Object?> get props => [regionName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateReplicaAction');
    helper.add(
      'regionName',
      regionName,
    );
    return helper.toString();
  }
}

class CreateReplicaActionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<CreateReplicaAction> {
  const CreateReplicaActionAwsJson10Serializer() : super('CreateReplicaAction');

  @override
  Iterable<Type> get types => const [
        CreateReplicaAction,
        _$CreateReplicaAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateReplicaAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReplicaActionBuilder();
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
    final payload = (object as CreateReplicaAction);
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
