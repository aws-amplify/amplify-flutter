// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.transact_get_items_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_get_item.dart'
    as _i3;

part 'transact_get_items_input.g.dart';

abstract class TransactGetItemsInput
    with
        _i1.HttpInput<TransactGetItemsInput>,
        _i2.AWSEquatable<TransactGetItemsInput>
    implements Built<TransactGetItemsInput, TransactGetItemsInputBuilder> {
  factory TransactGetItemsInput({
    required List<_i3.TransactGetItem> transactItems,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
  }) {
    return _$TransactGetItemsInput._(
      transactItems: _i5.BuiltList(transactItems),
      returnConsumedCapacity: returnConsumedCapacity,
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

  static const List<_i1.SmithySerializer<TransactGetItemsInput>> serializers = [
    TransactGetItemsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactGetItemsInputBuilder b) {}

  /// An ordered array of up to 100 `TransactGetItem` objects, each of which contains a `Get` structure.
  _i5.BuiltList<_i3.TransactGetItem> get transactItems;

  /// A value of `TOTAL` causes consumed capacity information to be returned, and a value of `NONE` prevents that information from being returned. No other value is valid.
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity;
  @override
  TransactGetItemsInput getPayload() => this;
  @override
  List<Object?> get props => [
        transactItems,
        returnConsumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactGetItemsInput')
      ..add(
        'transactItems',
        transactItems,
      )
      ..add(
        'returnConsumedCapacity',
        returnConsumedCapacity,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransactItems':
          result.transactItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.TransactGetItem)],
            ),
          ) as _i5.BuiltList<_i3.TransactGetItem>));
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ReturnConsumedCapacity),
          ) as _i4.ReturnConsumedCapacity);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransactGetItemsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TransactGetItemsInput(:transactItems, :returnConsumedCapacity) =
        object;
    result$.addAll([
      'TransactItems',
      serializers.serialize(
        transactItems,
        specifiedType: const FullType(
          _i5.BuiltList,
          [FullType(_i3.TransactGetItem)],
        ),
      ),
    ]);
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i4.ReturnConsumedCapacity),
        ));
    }
    return result$;
  }
}
