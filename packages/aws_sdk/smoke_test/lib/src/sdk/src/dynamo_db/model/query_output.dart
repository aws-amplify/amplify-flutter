// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.query_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i2;

part 'query_output.g.dart';

/// Represents the output of a `Query` operation.
abstract class QueryOutput
    with _i1.AWSEquatable<QueryOutput>
    implements Built<QueryOutput, QueryOutputBuilder> {
  /// Represents the output of a `Query` operation.
  factory QueryOutput({
    _i2.ConsumedCapacity? consumedCapacity,
    int? count,
    List<Map<String, _i3.AttributeValue>>? items,
    Map<String, _i3.AttributeValue>? lastEvaluatedKey,
    int? scannedCount,
  }) {
    return _$QueryOutput._(
      consumedCapacity: consumedCapacity,
      count: count,
      items: items == null
          ? null
          : _i4.BuiltList(items.map((el) => _i4.BuiltMap(el))),
      lastEvaluatedKey:
          lastEvaluatedKey == null ? null : _i4.BuiltMap(lastEvaluatedKey),
      scannedCount: scannedCount,
    );
  }

  /// Represents the output of a `Query` operation.
  factory QueryOutput.build([void Function(QueryOutputBuilder) updates]) =
      _$QueryOutput;

  const QueryOutput._();

  /// Constructs a [QueryOutput] from a [payload] and [response].
  factory QueryOutput.fromResponse(
    QueryOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    QueryOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryOutputBuilder b) {}

  /// The capacity units consumed by the `Query` operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the `ReturnConsumedCapacity` parameter was specified. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  _i2.ConsumedCapacity? get consumedCapacity;

  /// The number of items in the response.
  ///
  /// If you used a `QueryFilter` in the request, then `Count` is the number of items returned after the filter was applied, and `ScannedCount` is the number of matching items before the filter was applied.
  ///
  /// If you did not use a filter in the request, then `Count` and `ScannedCount` are the same.
  int? get count;

  /// An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.
  _i4.BuiltList<_i4.BuiltMap<String, _i3.AttributeValue>>? get items;

  /// The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.
  ///
  /// If `LastEvaluatedKey` is empty, then the "last page" of results has been processed and there is no more data to be retrieved.
  ///
  /// If `LastEvaluatedKey` is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when `LastEvaluatedKey` is empty.
  _i4.BuiltMap<String, _i3.AttributeValue>? get lastEvaluatedKey;

  /// The number of items evaluated, before any `QueryFilter` is applied. A high `ScannedCount` value with few, or no, `Count` results indicates an inefficient `Query` operation. For more information, see [Count and ScannedCount](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// If you did not use a filter in the request, then `ScannedCount` is the same as `Count`.
  int? get scannedCount;
  @override
  List<Object?> get props => [
        consumedCapacity,
        count,
        items,
        lastEvaluatedKey,
        scannedCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryOutput');
    helper.add(
      'consumedCapacity',
      consumedCapacity,
    );
    helper.add(
      'count',
      count,
    );
    helper.add(
      'items',
      items,
    );
    helper.add(
      'lastEvaluatedKey',
      lastEvaluatedKey,
    );
    helper.add(
      'scannedCount',
      scannedCount,
    );
    return helper.toString();
  }
}

class QueryOutputAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<QueryOutput> {
  const QueryOutputAwsJson10Serializer() : super('QueryOutput');

  @override
  Iterable<Type> get types => const [
        QueryOutput,
        _$QueryOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  QueryOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryOutputBuilder();
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
              specifiedType: const FullType(_i2.ConsumedCapacity),
            ) as _i2.ConsumedCapacity));
          }
          break;
        case 'Count':
          if (value != null) {
            result.count = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Items':
          if (value != null) {
            result.items.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [
                  FullType(
                    _i4.BuiltMap,
                    [
                      FullType(String),
                      FullType(_i3.AttributeValue),
                    ],
                  )
                ],
              ),
            ) as _i4.BuiltList<_i4.BuiltMap<String, _i3.AttributeValue>>));
          }
          break;
        case 'LastEvaluatedKey':
          if (value != null) {
            result.lastEvaluatedKey.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.AttributeValue),
                ],
              ),
            ) as _i4.BuiltMap<String, _i3.AttributeValue>));
          }
          break;
        case 'ScannedCount':
          if (value != null) {
            result.scannedCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as QueryOutput);
    final result = <Object?>[];
    if (payload.consumedCapacity != null) {
      result
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          payload.consumedCapacity!,
          specifiedType: const FullType(_i2.ConsumedCapacity),
        ));
    }
    if (payload.count != null) {
      result
        ..add('Count')
        ..add(serializers.serialize(
          payload.count!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.items != null) {
      result
        ..add('Items')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [
              FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.AttributeValue),
                ],
              )
            ],
          ),
        ));
    }
    if (payload.lastEvaluatedKey != null) {
      result
        ..add('LastEvaluatedKey')
        ..add(serializers.serialize(
          payload.lastEvaluatedKey!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.scannedCount != null) {
      result
        ..add('ScannedCount')
        ..add(serializers.serialize(
          payload.scannedCount!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
