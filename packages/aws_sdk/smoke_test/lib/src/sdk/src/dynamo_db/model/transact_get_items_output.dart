// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.transact_get_items_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_response.dart';

part 'transact_get_items_output.g.dart';

abstract class TransactGetItemsOutput
    with _i1.AWSEquatable<TransactGetItemsOutput>
    implements Built<TransactGetItemsOutput, TransactGetItemsOutputBuilder> {
  factory TransactGetItemsOutput({
    List<ConsumedCapacity>? consumedCapacity,
    List<ItemResponse>? responses,
  }) {
    return _$TransactGetItemsOutput._(
      consumedCapacity:
          consumedCapacity == null ? null : _i2.BuiltList(consumedCapacity),
      responses: responses == null ? null : _i2.BuiltList(responses),
    );
  }

  factory TransactGetItemsOutput.build(
          [void Function(TransactGetItemsOutputBuilder) updates]) =
      _$TransactGetItemsOutput;

  const TransactGetItemsOutput._();

  /// Constructs a [TransactGetItemsOutput] from a [payload] and [response].
  factory TransactGetItemsOutput.fromResponse(
    TransactGetItemsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<TransactGetItemsOutput>> serializers =
      [TransactGetItemsOutputAwsJson10Serializer()];

  /// If the _ReturnConsumedCapacity_ value was `TOTAL`, this is an array of `ConsumedCapacity` objects, one for each table addressed by `TransactGetItem` objects in the _TransactItems_ parameter. These `ConsumedCapacity` objects report the read-capacity units consumed by the `TransactGetItems` call in that table.
  _i2.BuiltList<ConsumedCapacity>? get consumedCapacity;

  /// An ordered array of up to 100 `ItemResponse` objects, each of which corresponds to the `TransactGetItem` object in the same position in the _TransactItems_ array. Each `ItemResponse` object contains a Map of the name-value pairs that are the projected attributes of the requested item.
  ///
  /// If a requested item could not be retrieved, the corresponding `ItemResponse` object is Null, or if the requested item has no projected attributes, the corresponding `ItemResponse` object is an empty Map.
  _i2.BuiltList<ItemResponse>? get responses;
  @override
  List<Object?> get props => [
        consumedCapacity,
        responses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactGetItemsOutput')
      ..add(
        'consumedCapacity',
        consumedCapacity,
      )
      ..add(
        'responses',
        responses,
      );
    return helper.toString();
  }
}

class TransactGetItemsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<TransactGetItemsOutput> {
  const TransactGetItemsOutputAwsJson10Serializer()
      : super('TransactGetItemsOutput');

  @override
  Iterable<Type> get types => const [
        TransactGetItemsOutput,
        _$TransactGetItemsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactGetItemsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactGetItemsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConsumedCapacity)],
            ),
          ) as _i2.BuiltList<ConsumedCapacity>));
        case 'Responses':
          result.responses.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ItemResponse)],
            ),
          ) as _i2.BuiltList<ItemResponse>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransactGetItemsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TransactGetItemsOutput(:consumedCapacity, :responses) = object;
    if (consumedCapacity != null) {
      result$
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          consumedCapacity,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConsumedCapacity)],
          ),
        ));
    }
    if (responses != null) {
      result$
        ..add('Responses')
        ..add(serializers.serialize(
          responses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ItemResponse)],
          ),
        ));
    }
    return result$;
  }
}
