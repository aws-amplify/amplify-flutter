// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_item_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_collection_metrics.dart'
    as _i4;

part 'update_item_output.g.dart';

/// Represents the output of an `UpdateItem` operation.
abstract class UpdateItemOutput
    with _i1.AWSEquatable<UpdateItemOutput>
    implements Built<UpdateItemOutput, UpdateItemOutputBuilder> {
  /// Represents the output of an `UpdateItem` operation.
  factory UpdateItemOutput({
    Map<String, _i2.AttributeValue>? attributes,
    _i3.ConsumedCapacity? consumedCapacity,
    _i4.ItemCollectionMetrics? itemCollectionMetrics,
  }) {
    return _$UpdateItemOutput._(
      attributes: attributes == null ? null : _i5.BuiltMap(attributes),
      consumedCapacity: consumedCapacity,
      itemCollectionMetrics: itemCollectionMetrics,
    );
  }

  /// Represents the output of an `UpdateItem` operation.
  factory UpdateItemOutput.build(
      [void Function(UpdateItemOutputBuilder) updates]) = _$UpdateItemOutput;

  const UpdateItemOutput._();

  /// Constructs a [UpdateItemOutput] from a [payload] and [response].
  factory UpdateItemOutput.fromResponse(
    UpdateItemOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    UpdateItemOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateItemOutputBuilder b) {}

  /// A map of attribute values as they appear before or after the `UpdateItem` operation, as determined by the `ReturnValues` parameter.
  ///
  /// The `Attributes` map is only present if `ReturnValues` was specified as something other than `NONE` in the request. Each element represents one attribute.
  _i5.BuiltMap<String, _i2.AttributeValue>? get attributes;

  /// The capacity units consumed by the `UpdateItem` operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the `ReturnConsumedCapacity` parameter was specified. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.ConsumedCapacity? get consumedCapacity;

  /// Information about item collections, if any, that were affected by the `UpdateItem` operation. `ItemCollectionMetrics` is only returned if the `ReturnItemCollectionMetrics` parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.
  ///
  /// Each `ItemCollectionMetrics` element consists of:
  ///
  /// *   `ItemCollectionKey` \- The partition key value of the item collection. This is the same as the partition key value of the item itself.
  ///
  /// *   `SizeEstimateRangeGB` \- An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.
  ///
  ///     The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.
  _i4.ItemCollectionMetrics? get itemCollectionMetrics;
  @override
  List<Object?> get props => [
        attributes,
        consumedCapacity,
        itemCollectionMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateItemOutput');
    helper.add(
      'attributes',
      attributes,
    );
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

class UpdateItemOutputAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<UpdateItemOutput> {
  const UpdateItemOutputAwsJson10Serializer() : super('UpdateItemOutput');

  @override
  Iterable<Type> get types => const [
        UpdateItemOutput,
        _$UpdateItemOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateItemOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Attributes':
          if (value != null) {
            result.attributes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.AttributeValue),
                ],
              ),
            ) as _i5.BuiltMap<String, _i2.AttributeValue>));
          }
          break;
        case 'ConsumedCapacity':
          if (value != null) {
            result.consumedCapacity.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ConsumedCapacity),
            ) as _i3.ConsumedCapacity));
          }
          break;
        case 'ItemCollectionMetrics':
          if (value != null) {
            result.itemCollectionMetrics.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ItemCollectionMetrics),
            ) as _i4.ItemCollectionMetrics));
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
    final payload = (object as UpdateItemOutput);
    final result = <Object?>[];
    if (payload.attributes != null) {
      result
        ..add('Attributes')
        ..add(serializers.serialize(
          payload.attributes!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.consumedCapacity != null) {
      result
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          payload.consumedCapacity!,
          specifiedType: const FullType(_i3.ConsumedCapacity),
        ));
    }
    if (payload.itemCollectionMetrics != null) {
      result
        ..add('ItemCollectionMetrics')
        ..add(serializers.serialize(
          payload.itemCollectionMetrics!,
          specifiedType: const FullType(_i4.ItemCollectionMetrics),
        ));
    }
    return result;
  }
}
