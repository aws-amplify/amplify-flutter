// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.put_item_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

part 'put_item_output.g.dart';

/// Represents the output of a `PutItem` operation.
abstract class PutItemOutput
    with _i1.AWSEquatable<PutItemOutput>
    implements Built<PutItemOutput, PutItemOutputBuilder> {
  /// Represents the output of a `PutItem` operation.
  factory PutItemOutput({
    Map<String, _i2.AttributeValue>? attributes,
    _i3.ConsumedCapacity? consumedCapacity,
    _i4.ItemCollectionMetrics? itemCollectionMetrics,
  }) {
    return _$PutItemOutput._(
      attributes: attributes == null ? null : _i5.BuiltMap(attributes),
      consumedCapacity: consumedCapacity,
      itemCollectionMetrics: itemCollectionMetrics,
    );
  }

  /// Represents the output of a `PutItem` operation.
  factory PutItemOutput.build([void Function(PutItemOutputBuilder) updates]) =
      _$PutItemOutput;

  const PutItemOutput._();

  /// Constructs a [PutItemOutput] from a [payload] and [response].
  factory PutItemOutput.fromResponse(
    PutItemOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer<PutItemOutput>> serializers = [
    PutItemOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutItemOutputBuilder b) {}

  /// The attribute values as they appeared before the `PutItem` operation, but only if `ReturnValues` is specified as `ALL_OLD` in the request. Each element consists of an attribute name and an attribute value.
  _i5.BuiltMap<String, _i2.AttributeValue>? get attributes;

  /// The capacity units consumed by the `PutItem` operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the `ReturnConsumedCapacity` parameter was specified. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.ConsumedCapacity? get consumedCapacity;

  /// Information about item collections, if any, that were affected by the `PutItem` operation. `ItemCollectionMetrics` is only returned if the `ReturnItemCollectionMetrics` parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response.
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
    final helper = newBuiltValueToStringHelper('PutItemOutput')
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

class PutItemOutputAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<PutItemOutput> {
  const PutItemOutputAwsJson10Serializer() : super('PutItemOutput');

  @override
  Iterable<Type> get types => const [
        PutItemOutput,
        _$PutItemOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PutItemOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutItemOutputBuilder();
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
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i5.BuiltMap<String, _i2.AttributeValue>));
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConsumedCapacity),
          ) as _i3.ConsumedCapacity));
        case 'ItemCollectionMetrics':
          result.itemCollectionMetrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ItemCollectionMetrics),
          ) as _i4.ItemCollectionMetrics));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutItemOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutItemOutput(
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
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (consumedCapacity != null) {
      result$
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          consumedCapacity,
          specifiedType: const FullType(_i3.ConsumedCapacity),
        ));
    }
    if (itemCollectionMetrics != null) {
      result$
        ..add('ItemCollectionMetrics')
        ..add(serializers.serialize(
          itemCollectionMetrics,
          specifiedType: const FullType(_i4.ItemCollectionMetrics),
        ));
    }
    return result$;
  }
}
