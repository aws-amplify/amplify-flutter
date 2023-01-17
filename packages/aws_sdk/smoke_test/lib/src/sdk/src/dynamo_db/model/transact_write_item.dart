// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transact_write_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition_check.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update.dart' as _i5;

part 'transact_write_item.g.dart';

/// A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
abstract class TransactWriteItem
    with _i1.AWSEquatable<TransactWriteItem>
    implements Built<TransactWriteItem, TransactWriteItemBuilder> {
  /// A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
  factory TransactWriteItem({
    _i2.ConditionCheck? conditionCheck,
    _i3.Delete? delete,
    _i4.Put? put,
    _i5.Update? update_,
  }) {
    return _$TransactWriteItem._(
      conditionCheck: conditionCheck,
      delete: delete,
      put: put,
      update_: update_,
    );
  }

  /// A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
  factory TransactWriteItem.build(
      [void Function(TransactWriteItemBuilder) updates]) = _$TransactWriteItem;

  const TransactWriteItem._();

  static const List<_i6.SmithySerializer> serializers = [
    TransactWriteItemAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactWriteItemBuilder b) {}

  /// A request to perform a check item operation.
  _i2.ConditionCheck? get conditionCheck;

  /// A request to perform a `DeleteItem` operation.
  _i3.Delete? get delete;

  /// A request to perform a `PutItem` operation.
  _i4.Put? get put;

  /// A request to perform an `UpdateItem` operation.
  _i5.Update? get update_;
  @override
  List<Object?> get props => [
        conditionCheck,
        delete,
        put,
        update_,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactWriteItem');
    helper.add(
      'conditionCheck',
      conditionCheck,
    );
    helper.add(
      'delete',
      delete,
    );
    helper.add(
      'put',
      put,
    );
    helper.add(
      'update_',
      update_,
    );
    return helper.toString();
  }
}

class TransactWriteItemAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<TransactWriteItem> {
  const TransactWriteItemAwsJson10Serializer() : super('TransactWriteItem');

  @override
  Iterable<Type> get types => const [
        TransactWriteItem,
        _$TransactWriteItem,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactWriteItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactWriteItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConditionCheck':
          if (value != null) {
            result.conditionCheck.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConditionCheck),
            ) as _i2.ConditionCheck));
          }
          break;
        case 'Delete':
          if (value != null) {
            result.delete.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Delete),
            ) as _i3.Delete));
          }
          break;
        case 'Put':
          if (value != null) {
            result.put.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Put),
            ) as _i4.Put));
          }
          break;
        case 'Update':
          if (value != null) {
            result.update_.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Update),
            ) as _i5.Update));
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
    final payload = (object as TransactWriteItem);
    final result = <Object?>[];
    if (payload.conditionCheck != null) {
      result
        ..add('ConditionCheck')
        ..add(serializers.serialize(
          payload.conditionCheck!,
          specifiedType: const FullType(_i2.ConditionCheck),
        ));
    }
    if (payload.delete != null) {
      result
        ..add('Delete')
        ..add(serializers.serialize(
          payload.delete!,
          specifiedType: const FullType(_i3.Delete),
        ));
    }
    if (payload.put != null) {
      result
        ..add('Put')
        ..add(serializers.serialize(
          payload.put!,
          specifiedType: const FullType(_i4.Put),
        ));
    }
    if (payload.update_ != null) {
      result
        ..add('Update')
        ..add(serializers.serialize(
          payload.update_!,
          specifiedType: const FullType(_i5.Update),
        ));
    }
    return result;
  }
}
