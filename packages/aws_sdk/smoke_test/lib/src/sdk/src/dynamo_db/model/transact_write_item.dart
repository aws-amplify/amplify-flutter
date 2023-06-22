// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.transact_write_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition_check.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/update.dart' as _i5;

part 'transact_write_item.g.dart';

/// A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
abstract class TransactWriteItem
    with _i1.AWSEquatable<TransactWriteItem>
    implements Built<TransactWriteItem, TransactWriteItemBuilder> {
  /// A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
  factory TransactWriteItem({
    _i2.ConditionCheck? conditionCheck,
    _i3.Put? put,
    _i4.Delete? delete,
    _i5.Update? update_,
  }) {
    return _$TransactWriteItem._(
      conditionCheck: conditionCheck,
      put: put,
      delete: delete,
      update_: update_,
    );
  }

  /// A list of requests that can perform update, put, delete, or check operations on multiple items in one or more tables atomically.
  factory TransactWriteItem.build(
      [void Function(TransactWriteItemBuilder) updates]) = _$TransactWriteItem;

  const TransactWriteItem._();

  static const List<_i6.SmithySerializer<TransactWriteItem>> serializers = [
    TransactWriteItemAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactWriteItemBuilder b) {}

  /// A request to perform a check item operation.
  _i2.ConditionCheck? get conditionCheck;

  /// A request to perform a `PutItem` operation.
  _i3.Put? get put;

  /// A request to perform a `DeleteItem` operation.
  _i4.Delete? get delete;

  /// A request to perform an `UpdateItem` operation.
  _i5.Update? get update_;
  @override
  List<Object?> get props => [
        conditionCheck,
        put,
        delete,
        update_,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactWriteItem')
      ..add(
        'conditionCheck',
        conditionCheck,
      )
      ..add(
        'put',
        put,
      )
      ..add(
        'delete',
        delete,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConditionCheck':
          result.conditionCheck.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ConditionCheck),
          ) as _i2.ConditionCheck));
        case 'Put':
          result.put.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Put),
          ) as _i3.Put));
        case 'Delete':
          result.delete.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Delete),
          ) as _i4.Delete));
        case 'Update':
          result.update_.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Update),
          ) as _i5.Update));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransactWriteItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TransactWriteItem(:conditionCheck, :put, :delete, :update_) = object;
    if (conditionCheck != null) {
      result$
        ..add('ConditionCheck')
        ..add(serializers.serialize(
          conditionCheck,
          specifiedType: const FullType(_i2.ConditionCheck),
        ));
    }
    if (put != null) {
      result$
        ..add('Put')
        ..add(serializers.serialize(
          put,
          specifiedType: const FullType(_i3.Put),
        ));
    }
    if (delete != null) {
      result$
        ..add('Delete')
        ..add(serializers.serialize(
          delete,
          specifiedType: const FullType(_i4.Delete),
        ));
    }
    if (update_ != null) {
      result$
        ..add('Update')
        ..add(serializers.serialize(
          update_,
          specifiedType: const FullType(_i5.Update),
        ));
    }
    return result$;
  }
}
