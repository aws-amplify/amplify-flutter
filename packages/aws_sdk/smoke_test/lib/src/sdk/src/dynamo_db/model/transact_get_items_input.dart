// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transact_get_items_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_item.dart'
    as _i4;

part 'transact_get_items_input.g.dart';

abstract class TransactGetItemsInput
    with
        _i1.HttpInput<TransactGetItemsInput>,
        _i2.AWSEquatable<TransactGetItemsInput>
    implements Built<TransactGetItemsInput, TransactGetItemsInputBuilder> {
  factory TransactGetItemsInput({
    _i3.ReturnConsumedCapacity? returnConsumedCapacity,
    required List<_i4.TransactGetItem> transactItems,
  }) {
    return _$TransactGetItemsInput._(
      returnConsumedCapacity: returnConsumedCapacity,
      transactItems: _i5.BuiltList(transactItems),
    );
  }

  factory TransactGetItemsInput.build(
          [void Function(TransactGetItemsInputBuilder) updates]) =
      _$TransactGetItemsInput;

  const TransactGetItemsInput._();

  factory TransactGetItemsInput.fromRequest(
    TransactGetItemsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    TransactGetItemsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactGetItemsInputBuilder b) {}

  /// A value of `TOTAL` causes consumed capacity information to be returned, and a value of `NONE` prevents that information from being returned. No other value is valid.
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// An ordered array of up to 100 `TransactGetItem` objects, each of which contains a `Get` structure.
  _i5.BuiltList<_i4.TransactGetItem> get transactItems;
  @override
  TransactGetItemsInput getPayload() => this;
  @override
  List<Object?> get props => [
        returnConsumedCapacity,
        transactItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactGetItemsInput');
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'transactItems',
      transactItems,
    );
    return helper.toString();
  }
}

class TransactGetItemsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<TransactGetItemsInput> {
  const TransactGetItemsInputAwsJson10Serializer()
      : super('TransactGetItemsInput');

  @override
  Iterable<Type> get types => const [
        TransactGetItemsInput,
        _$TransactGetItemsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactGetItemsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactGetItemsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ReturnConsumedCapacity),
            ) as _i3.ReturnConsumedCapacity);
          }
          break;
        case 'TransactItems':
          result.transactItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.TransactGetItem)],
            ),
          ) as _i5.BuiltList<_i4.TransactGetItem>));
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
    final payload = (object as TransactGetItemsInput);
    final result = <Object?>[
      'TransactItems',
      serializers.serialize(
        payload.transactItems,
        specifiedType: const FullType(
          _i5.BuiltList,
          [FullType(_i4.TransactGetItem)],
        ),
      ),
    ];
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i3.ReturnConsumedCapacity),
        ));
    }
    return result;
  }
}
