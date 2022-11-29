// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transact_write_items_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_metrics.dart'
    as _i3;

part 'transact_write_items_output.g.dart';

abstract class TransactWriteItemsOutput
    with _i1.AWSEquatable<TransactWriteItemsOutput>
    implements
        Built<TransactWriteItemsOutput, TransactWriteItemsOutputBuilder> {
  factory TransactWriteItemsOutput({
    List<_i2.ConsumedCapacity>? consumedCapacity,
    Map<String, List<_i3.ItemCollectionMetrics>>? itemCollectionMetrics,
  }) {
    return _$TransactWriteItemsOutput._(
      consumedCapacity:
          consumedCapacity == null ? null : _i4.BuiltList(consumedCapacity),
      itemCollectionMetrics: itemCollectionMetrics == null
          ? null
          : _i4.BuiltListMultimap(itemCollectionMetrics),
    );
  }

  factory TransactWriteItemsOutput.build(
          [void Function(TransactWriteItemsOutputBuilder) updates]) =
      _$TransactWriteItemsOutput;

  const TransactWriteItemsOutput._();

  /// Constructs a [TransactWriteItemsOutput] from a [payload] and [response].
  factory TransactWriteItemsOutput.fromResponse(
    TransactWriteItemsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    TransactWriteItemsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactWriteItemsOutputBuilder b) {}

  /// The capacity units consumed by the entire `TransactWriteItems` operation. The values of the list are ordered according to the ordering of the `TransactItems` request parameter.
  _i4.BuiltList<_i2.ConsumedCapacity>? get consumedCapacity;

  /// A list of tables that were processed by `TransactWriteItems` and, for each table, information about any item collections that were affected by individual `UpdateItem`, `PutItem`, or `DeleteItem` operations.
  _i4.BuiltListMultimap<String, _i3.ItemCollectionMetrics>?
      get itemCollectionMetrics;
  @override
  List<Object?> get props => [
        consumedCapacity,
        itemCollectionMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactWriteItemsOutput');
    helper.add(
      'consumedCapacity',
      consumedCapacity,
    );
    helper.add(
      'itemCollectionMetrics',
      itemCollectionMetrics,
    );
    return helper.toString();
  }
}

class TransactWriteItemsOutputAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<TransactWriteItemsOutput> {
  const TransactWriteItemsOutputAwsJson10Serializer()
      : super('TransactWriteItemsOutput');

  @override
  Iterable<Type> get types => const [
        TransactWriteItemsOutput,
        _$TransactWriteItemsOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactWriteItemsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactWriteItemsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConsumedCapacity':
          if (value != null) {
            result.consumedCapacity.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.ConsumedCapacity)],
              ),
            ) as _i4.BuiltList<_i2.ConsumedCapacity>));
          }
          break;
        case 'ItemCollectionMetrics':
          if (value != null) {
            result.itemCollectionMetrics.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(_i3.ItemCollectionMetrics),
                ],
              ),
            ) as _i4.BuiltListMultimap<String, _i3.ItemCollectionMetrics>));
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
    final payload = (object as TransactWriteItemsOutput);
    final result = <Object?>[];
    if (payload.consumedCapacity != null) {
      result
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          payload.consumedCapacity!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.ConsumedCapacity)],
          ),
        ));
    }
    if (payload.itemCollectionMetrics != null) {
      result
        ..add('ItemCollectionMetrics')
        ..add(serializers.serialize(
          payload.itemCollectionMetrics!,
          specifiedType: const FullType(
            _i4.BuiltListMultimap,
            [
              FullType(String),
              FullType(_i3.ItemCollectionMetrics),
            ],
          ),
        ));
    }
    return result;
  }
}
