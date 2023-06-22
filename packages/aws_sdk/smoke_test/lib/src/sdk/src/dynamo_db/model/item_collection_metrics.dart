// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.item_collection_metrics; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'item_collection_metrics.g.dart';

/// Information about item collections, if any, that were affected by the operation. `ItemCollectionMetrics` is only returned if the request asked for it. If the table does not have any local secondary indexes, this information is not returned in the response.
abstract class ItemCollectionMetrics
    with _i1.AWSEquatable<ItemCollectionMetrics>
    implements Built<ItemCollectionMetrics, ItemCollectionMetricsBuilder> {
  /// Information about item collections, if any, that were affected by the operation. `ItemCollectionMetrics` is only returned if the request asked for it. If the table does not have any local secondary indexes, this information is not returned in the response.
  factory ItemCollectionMetrics({
    Map<String, _i2.AttributeValue>? itemCollectionKey,
    List<double>? sizeEstimateRangeGb,
  }) {
    return _$ItemCollectionMetrics._(
      itemCollectionKey:
          itemCollectionKey == null ? null : _i3.BuiltMap(itemCollectionKey),
      sizeEstimateRangeGb: sizeEstimateRangeGb == null
          ? null
          : _i3.BuiltList(sizeEstimateRangeGb),
    );
  }

  /// Information about item collections, if any, that were affected by the operation. `ItemCollectionMetrics` is only returned if the request asked for it. If the table does not have any local secondary indexes, this information is not returned in the response.
  factory ItemCollectionMetrics.build(
          [void Function(ItemCollectionMetricsBuilder) updates]) =
      _$ItemCollectionMetrics;

  const ItemCollectionMetrics._();

  static const List<_i4.SmithySerializer<ItemCollectionMetrics>> serializers = [
    ItemCollectionMetricsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ItemCollectionMetricsBuilder b) {}

  /// The partition key value of the item collection. This value is the same as the partition key value of the item.
  _i3.BuiltMap<String, _i2.AttributeValue>? get itemCollectionKey;

  /// An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit.
  ///
  /// The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.
  _i3.BuiltList<double>? get sizeEstimateRangeGb;
  @override
  List<Object?> get props => [
        itemCollectionKey,
        sizeEstimateRangeGb,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ItemCollectionMetrics')
      ..add(
        'itemCollectionKey',
        itemCollectionKey,
      )
      ..add(
        'sizeEstimateRangeGb',
        sizeEstimateRangeGb,
      );
    return helper.toString();
  }
}

class ItemCollectionMetricsAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ItemCollectionMetrics> {
  const ItemCollectionMetricsAwsJson10Serializer()
      : super('ItemCollectionMetrics');

  @override
  Iterable<Type> get types => const [
        ItemCollectionMetrics,
        _$ItemCollectionMetrics,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ItemCollectionMetrics deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemCollectionMetricsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ItemCollectionKey':
          result.itemCollectionKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.AttributeValue>));
        case 'SizeEstimateRangeGB':
          result.sizeEstimateRangeGb.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(double)],
            ),
          ) as _i3.BuiltList<double>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ItemCollectionMetrics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ItemCollectionMetrics(:itemCollectionKey, :sizeEstimateRangeGb) =
        object;
    if (itemCollectionKey != null) {
      result$
        ..add('ItemCollectionKey')
        ..add(serializers.serialize(
          itemCollectionKey,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (sizeEstimateRangeGb != null) {
      result$
        ..add('SizeEstimateRangeGB')
        ..add(serializers.serialize(
          sizeEstimateRangeGb,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(double)],
          ),
        ));
    }
    return result$;
  }
}
