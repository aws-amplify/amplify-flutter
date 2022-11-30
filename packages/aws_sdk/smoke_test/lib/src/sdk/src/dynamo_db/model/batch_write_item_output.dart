// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_write_item_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_metrics.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/write_request.dart'
    as _i4;

part 'batch_write_item_output.g.dart';

/// Represents the output of a `BatchWriteItem` operation.
abstract class BatchWriteItemOutput
    with _i1.AWSEquatable<BatchWriteItemOutput>
    implements Built<BatchWriteItemOutput, BatchWriteItemOutputBuilder> {
  /// Represents the output of a `BatchWriteItem` operation.
  factory BatchWriteItemOutput({
    List<_i2.ConsumedCapacity>? consumedCapacity,
    Map<String, List<_i3.ItemCollectionMetrics>>? itemCollectionMetrics,
    Map<String, List<_i4.WriteRequest>>? unprocessedItems,
  }) {
    return _$BatchWriteItemOutput._(
      consumedCapacity:
          consumedCapacity == null ? null : _i5.BuiltList(consumedCapacity),
      itemCollectionMetrics: itemCollectionMetrics == null
          ? null
          : _i5.BuiltListMultimap(itemCollectionMetrics),
      unprocessedItems: unprocessedItems == null
          ? null
          : _i5.BuiltListMultimap(unprocessedItems),
    );
  }

  /// Represents the output of a `BatchWriteItem` operation.
  factory BatchWriteItemOutput.build(
          [void Function(BatchWriteItemOutputBuilder) updates]) =
      _$BatchWriteItemOutput;

  const BatchWriteItemOutput._();

  /// Constructs a [BatchWriteItemOutput] from a [payload] and [response].
  factory BatchWriteItemOutput.fromResponse(
    BatchWriteItemOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    BatchWriteItemOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchWriteItemOutputBuilder b) {}

  /// The capacity units consumed by the entire `BatchWriteItem` operation.
  ///
  /// Each element consists of:
  ///
  /// *   `TableName` \- The table that consumed the provisioned throughput.
  ///
  /// *   `CapacityUnits` \- The total number of capacity units consumed.
  _i5.BuiltList<_i2.ConsumedCapacity>? get consumedCapacity;

  /// A list of tables that were processed by `BatchWriteItem` and, for each table, information about any item collections that were affected by individual `DeleteItem` or `PutItem` operations.
  ///
  /// Each entry consists of the following subelements:
  ///
  /// *   `ItemCollectionKey` \- The partition key value of the item collection. This is the same as the partition key value of the item.
  ///
  /// *   `SizeEstimateRangeGB` \- An estimate of item collection size, expressed in GB. This is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on the table. Use this estimate to measure whether a local secondary index is approaching its size limit.
  ///
  ///     The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.
  _i5.BuiltListMultimap<String, _i3.ItemCollectionMetrics>?
      get itemCollectionMetrics;

  /// A map of tables and requests against those tables that were not processed. The `UnprocessedItems` value is in the same form as `RequestItems`, so you can provide this value directly to a subsequent `BatchGetItem` operation. For more information, see `RequestItems` in the Request Parameters section.
  ///
  /// Each `UnprocessedItems` entry consists of a table name and, for that table, a list of operations to perform (`DeleteRequest` or `PutRequest`).
  ///
  /// *   `DeleteRequest` \- Perform a `DeleteItem` operation on the specified item. The item to be deleted is identified by a `Key` subelement:
  ///
  ///     *   `Key` \- A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value.
  ///
  /// *   `PutRequest` \- Perform a `PutItem` operation on the specified item. The item to be put is identified by an `Item` subelement:
  ///
  ///     *   `Item` \- A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values will be rejected with a `ValidationException` exception.
  ///
  ///         If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.
  ///
  ///
  /// If there are no unprocessed items remaining, the response contains an empty `UnprocessedItems` map.
  _i5.BuiltListMultimap<String, _i4.WriteRequest>? get unprocessedItems;
  @override
  List<Object?> get props => [
        consumedCapacity,
        itemCollectionMetrics,
        unprocessedItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchWriteItemOutput');
    helper.add(
      'consumedCapacity',
      consumedCapacity,
    );
    helper.add(
      'itemCollectionMetrics',
      itemCollectionMetrics,
    );
    helper.add(
      'unprocessedItems',
      unprocessedItems,
    );
    return helper.toString();
  }
}

class BatchWriteItemOutputAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<BatchWriteItemOutput> {
  const BatchWriteItemOutputAwsJson10Serializer()
      : super('BatchWriteItemOutput');

  @override
  Iterable<Type> get types => const [
        BatchWriteItemOutput,
        _$BatchWriteItemOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchWriteItemOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchWriteItemOutputBuilder();
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
                _i5.BuiltList,
                [FullType(_i2.ConsumedCapacity)],
              ),
            ) as _i5.BuiltList<_i2.ConsumedCapacity>));
          }
          break;
        case 'ItemCollectionMetrics':
          if (value != null) {
            result.itemCollectionMetrics.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(_i3.ItemCollectionMetrics),
                ],
              ),
            ) as _i5.BuiltListMultimap<String, _i3.ItemCollectionMetrics>));
          }
          break;
        case 'UnprocessedItems':
          if (value != null) {
            result.unprocessedItems.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(_i4.WriteRequest),
                ],
              ),
            ) as _i5.BuiltListMultimap<String, _i4.WriteRequest>));
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
    final payload = (object as BatchWriteItemOutput);
    final result = <Object?>[];
    if (payload.consumedCapacity != null) {
      result
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          payload.consumedCapacity!,
          specifiedType: const FullType(
            _i5.BuiltList,
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
            _i5.BuiltListMultimap,
            [
              FullType(String),
              FullType(_i3.ItemCollectionMetrics),
            ],
          ),
        ));
    }
    if (payload.unprocessedItems != null) {
      result
        ..add('UnprocessedItems')
        ..add(serializers.serialize(
          payload.unprocessedItems!,
          specifiedType: const FullType(
            _i5.BuiltListMultimap,
            [
              FullType(String),
              FullType(_i4.WriteRequest),
            ],
          ),
        ));
    }
    return result;
  }
}
