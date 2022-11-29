// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.delete_global_secondary_index_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_global_secondary_index_action.g.dart';

/// Represents a global secondary index to be deleted from an existing table.
abstract class DeleteGlobalSecondaryIndexAction
    with
        _i1.AWSEquatable<DeleteGlobalSecondaryIndexAction>
    implements
        Built<DeleteGlobalSecondaryIndexAction,
            DeleteGlobalSecondaryIndexActionBuilder> {
  /// Represents a global secondary index to be deleted from an existing table.
  factory DeleteGlobalSecondaryIndexAction({required String indexName}) {
    return _$DeleteGlobalSecondaryIndexAction._(indexName: indexName);
  }

  /// Represents a global secondary index to be deleted from an existing table.
  factory DeleteGlobalSecondaryIndexAction.build(
          [void Function(DeleteGlobalSecondaryIndexActionBuilder) updates]) =
      _$DeleteGlobalSecondaryIndexAction;

  const DeleteGlobalSecondaryIndexAction._();

  static const List<_i2.SmithySerializer> serializers = [
    DeleteGlobalSecondaryIndexActionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteGlobalSecondaryIndexActionBuilder b) {}

  /// The name of the global secondary index to be deleted.
  String get indexName;
  @override
  List<Object?> get props => [indexName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteGlobalSecondaryIndexAction');
    helper.add(
      'indexName',
      indexName,
    );
    return helper.toString();
  }
}

class DeleteGlobalSecondaryIndexActionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DeleteGlobalSecondaryIndexAction> {
  const DeleteGlobalSecondaryIndexActionAwsJson10Serializer()
      : super('DeleteGlobalSecondaryIndexAction');

  @override
  Iterable<Type> get types => const [
        DeleteGlobalSecondaryIndexAction,
        _$DeleteGlobalSecondaryIndexAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteGlobalSecondaryIndexAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteGlobalSecondaryIndexActionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
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
    final payload = (object as DeleteGlobalSecondaryIndexAction);
    final result = <Object?>[
      'IndexName',
      serializers.serialize(
        payload.indexName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
