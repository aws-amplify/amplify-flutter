// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_write_item_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/write_request.dart'
    as _i3;

part 'batch_write_item_input.g.dart';

/// Represents the input of a `BatchWriteItem` operation.
abstract class BatchWriteItemInput
    with
        _i1.HttpInput<BatchWriteItemInput>,
        _i2.AWSEquatable<BatchWriteItemInput>
    implements Built<BatchWriteItemInput, BatchWriteItemInputBuilder> {
  /// Represents the input of a `BatchWriteItem` operation.
  factory BatchWriteItemInput({
    required Map<String, List<_i3.WriteRequest>> requestItems,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
    _i5.ReturnItemCollectionMetrics? returnItemCollectionMetrics,
  }) {
    return _$BatchWriteItemInput._(
      requestItems: _i6.BuiltListMultimap(requestItems),
      returnConsumedCapacity: returnConsumedCapacity,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
    );
  }

  /// Represents the input of a `BatchWriteItem` operation.
  factory BatchWriteItemInput.build(
          [void Function(BatchWriteItemInputBuilder) updates]) =
      _$BatchWriteItemInput;

  const BatchWriteItemInput._();

  factory BatchWriteItemInput.fromRequest(
    BatchWriteItemInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    BatchWriteItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchWriteItemInputBuilder b) {}

  /// A map of one or more table names and, for each table, a list of operations to be performed (`DeleteRequest` or `PutRequest`). Each element in the map consists of the following:
  ///
  /// *   `DeleteRequest` \- Perform a `DeleteItem` operation on the specified item. The item to be deleted is identified by a `Key` subelement:
  ///
  ///     *   `Key` \- A map of primary key attribute values that uniquely identify the item. Each entry in this map consists of an attribute name and an attribute value. For each primary key, you must provide _all_ of the key attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for _both_ the partition key and the sort key.
  ///
  /// *   `PutRequest` \- Perform a `PutItem` operation on the specified item. The item to be put is identified by an `Item` subelement:
  ///
  ///     *   `Item` \- A map of attributes and their values. Each entry in this map consists of an attribute name and an attribute value. Attribute values must not be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests that contain empty values are rejected with a `ValidationException` exception.
  ///
  ///         If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.
  _i6.BuiltListMultimap<String, _i3.WriteRequest> get requestItems;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.
  _i5.ReturnItemCollectionMetrics? get returnItemCollectionMetrics;
  @override
  BatchWriteItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        requestItems,
        returnConsumedCapacity,
        returnItemCollectionMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchWriteItemInput');
    helper.add(
      'requestItems',
      requestItems,
    );
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'returnItemCollectionMetrics',
      returnItemCollectionMetrics,
    );
    return helper.toString();
  }
}

class BatchWriteItemInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<BatchWriteItemInput> {
  const BatchWriteItemInputAwsJson10Serializer() : super('BatchWriteItemInput');

  @override
  Iterable<Type> get types => const [
        BatchWriteItemInput,
        _$BatchWriteItemInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchWriteItemInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchWriteItemInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'RequestItems':
          result.requestItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltListMultimap,
              [
                FullType(String),
                FullType(_i3.WriteRequest),
              ],
            ),
          ) as _i6.BuiltListMultimap<String, _i3.WriteRequest>));
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReturnConsumedCapacity),
            ) as _i4.ReturnConsumedCapacity);
          }
          break;
        case 'ReturnItemCollectionMetrics':
          if (value != null) {
            result.returnItemCollectionMetrics = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ReturnItemCollectionMetrics),
            ) as _i5.ReturnItemCollectionMetrics);
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
    final payload = (object as BatchWriteItemInput);
    final result = <Object?>[
      'RequestItems',
      serializers.serialize(
        payload.requestItems,
        specifiedType: const FullType(
          _i6.BuiltListMultimap,
          [
            FullType(String),
            FullType(_i3.WriteRequest),
          ],
        ),
      ),
    ];
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i4.ReturnConsumedCapacity),
        ));
    }
    if (payload.returnItemCollectionMetrics != null) {
      result
        ..add('ReturnItemCollectionMetrics')
        ..add(serializers.serialize(
          payload.returnItemCollectionMetrics!,
          specifiedType: const FullType(_i5.ReturnItemCollectionMetrics),
        ));
    }
    return result;
  }
}
