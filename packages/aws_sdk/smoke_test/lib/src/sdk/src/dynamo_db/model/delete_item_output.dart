// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.delete_item_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_metrics.dart';

part 'delete_item_output.g.dart';

/// Represents the output of a `DeleteItem` operation.
abstract class DeleteItemOutput
    with _i1.AWSEquatable<DeleteItemOutput>
    implements Built<DeleteItemOutput, DeleteItemOutputBuilder> {
  /// Represents the output of a `DeleteItem` operation.
  factory DeleteItemOutput({
    Map<String, AttributeValue>? attributes,
    ConsumedCapacity? consumedCapacity,
    ItemCollectionMetrics? itemCollectionMetrics,
  }) {
    return _$DeleteItemOutput._(
      attributes: attributes == null ? null : _i2.BuiltMap(attributes),
      consumedCapacity: consumedCapacity,
      itemCollectionMetrics: itemCollectionMetrics,
    );
  }

  /// Represents the output of a `DeleteItem` operation.
  factory DeleteItemOutput.build(
      [void Function(DeleteItemOutputBuilder) updates]) = _$DeleteItemOutput;

  const DeleteItemOutput._();

  /// Constructs a [DeleteItemOutput] from a [payload] and [response].
  factory DeleteItemOutput.fromResponse(
    DeleteItemOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DeleteItemOutput>> serializers = [
    DeleteItemOutputAwsJson10Serializer()
  ];

  /// A map of attribute names to `AttributeValue` objects, representing the item as it appeared before the `DeleteItem` operation. This map appears in the response only if `ReturnValues` was specified as `ALL_OLD` in the request.
  _i2.BuiltMap<String, AttributeValue>? get attributes;

  /// The capacity units consumed by the `DeleteItem` operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the `ReturnConsumedCapacity` parameter was specified. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  ConsumedCapacity? get consumedCapacity;

  /// Information about item collections, if any, that were affected by the `DeleteItem` operation. `ItemCollectionMetrics` is only returned if the `ReturnItemCollectionMetrics` parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.
  ///
  /// Each `ItemCollectionMetrics` element consists of:
  ///
  /// *   `ItemCollectionKey` \- The partition key value of the item collection. This is the same as the partition key value of the item itself.
  ///
  /// *   `SizeEstimateRangeGB` \- An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.
  ///
  ///     The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.
  ItemCollectionMetrics? get itemCollectionMetrics;
  @override
  List<Object?> get props => [
        attributes,
        consumedCapacity,
        itemCollectionMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteItemOutput')
      ..add(
        'attributes',
        attributes,
      )
      ..add(
        'consumedCapacity',
        consumedCapacity,
      )
      ..add(
        'itemCollectionMetrics',
        itemCollectionMetrics,
      );
    return helper.toString();
  }
}

class DeleteItemOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DeleteItemOutput> {
  const DeleteItemOutputAwsJson10Serializer() : super('DeleteItemOutput');

  @override
  Iterable<Type> get types => const [
        DeleteItemOutput,
        _$DeleteItemOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteItemOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteItemOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Attributes':
          result.attributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(AttributeValue),
              ],
            ),
          ) as _i2.BuiltMap<String, AttributeValue>));
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConsumedCapacity),
          ) as ConsumedCapacity));
        case 'ItemCollectionMetrics':
          result.itemCollectionMetrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ItemCollectionMetrics),
          ) as ItemCollectionMetrics));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteItemOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteItemOutput(
      :attributes,
      :consumedCapacity,
      :itemCollectionMetrics
    ) = object;
    if (attributes != null) {
      result$
        ..add('Attributes')
        ..add(serializers.serialize(
          attributes,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ));
    }
    if (consumedCapacity != null) {
      result$
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          consumedCapacity,
          specifiedType: const FullType(ConsumedCapacity),
        ));
    }
    if (itemCollectionMetrics != null) {
      result$
        ..add('ItemCollectionMetrics')
        ..add(serializers.serialize(
          itemCollectionMetrics,
          specifiedType: const FullType(ItemCollectionMetrics),
        ));
    }
    return result$;
  }
}
