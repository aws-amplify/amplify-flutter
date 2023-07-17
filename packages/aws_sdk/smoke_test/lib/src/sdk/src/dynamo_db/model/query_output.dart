// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.query_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i3;

part 'query_output.g.dart';

/// Represents the output of a `Query` operation.
abstract class QueryOutput
    with _i1.AWSEquatable<QueryOutput>
    implements Built<QueryOutput, QueryOutputBuilder> {
  /// Represents the output of a `Query` operation.
  factory QueryOutput({
    List<Map<String, _i2.AttributeValue>>? items,
    int? count,
    int? scannedCount,
    Map<String, _i2.AttributeValue>? lastEvaluatedKey,
    _i3.ConsumedCapacity? consumedCapacity,
  }) {
    count ??= 0;
    scannedCount ??= 0;
    return _$QueryOutput._(
      items: items == null
          ? null
          : _i4.BuiltList(items.map((el) => _i4.BuiltMap(el))),
      count: count,
      scannedCount: scannedCount,
      lastEvaluatedKey:
          lastEvaluatedKey == null ? null : _i4.BuiltMap(lastEvaluatedKey),
      consumedCapacity: consumedCapacity,
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

  static const List<_i5.SmithySerializer<QueryOutput>> serializers = [
    QueryOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryOutputBuilder b) {
    b
      ..count = 0
      ..scannedCount = 0;
  }

  /// An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.
  _i4.BuiltList<_i4.BuiltMap<String, _i2.AttributeValue>>? get items;

  /// The number of items in the response.
  ///
  /// If you used a `QueryFilter` in the request, then `Count` is the number of items returned after the filter was applied, and `ScannedCount` is the number of matching items before the filter was applied.
  ///
  /// If you did not use a filter in the request, then `Count` and `ScannedCount` are the same.
  int get count;

  /// The number of items evaluated, before any `QueryFilter` is applied. A high `ScannedCount` value with few, or no, `Count` results indicates an inefficient `Query` operation. For more information, see [Count and ScannedCount](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// If you did not use a filter in the request, then `ScannedCount` is the same as `Count`.
  int get scannedCount;

  /// The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.
  ///
  /// If `LastEvaluatedKey` is empty, then the "last page" of results has been processed and there is no more data to be retrieved.
  ///
  /// If `LastEvaluatedKey` is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when `LastEvaluatedKey` is empty.
  _i4.BuiltMap<String, _i2.AttributeValue>? get lastEvaluatedKey;

  /// The capacity units consumed by the `Query` operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the `ReturnConsumedCapacity` parameter was specified. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.ConsumedCapacity? get consumedCapacity;
  @override
  List<Object?> get props => [
        items,
        count,
        scannedCount,
        lastEvaluatedKey,
        consumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryOutput')
      ..add(
        'items',
        items,
      )
      ..add(
        'count',
        count,
      )
      ..add(
        'scannedCount',
        scannedCount,
      )
      ..add(
        'lastEvaluatedKey',
        lastEvaluatedKey,
      )
      ..add(
        'consumedCapacity',
        consumedCapacity,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Items':
          result.items.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [
                FullType(
                  _i4.BuiltMap,
                  [
                    FullType(String),
                    FullType(_i2.AttributeValue),
                  ],
                )
              ],
            ),
          ) as _i4.BuiltList<_i4.BuiltMap<String, _i2.AttributeValue>>));
        case 'Count':
          result.count = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ScannedCount':
          result.scannedCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'LastEvaluatedKey':
          result.lastEvaluatedKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i4.BuiltMap<String, _i2.AttributeValue>));
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConsumedCapacity),
          ) as _i3.ConsumedCapacity));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QueryOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final QueryOutput(
      :items,
      :count,
      :scannedCount,
      :lastEvaluatedKey,
      :consumedCapacity
    ) = object;
    result$.addAll([
      'Count',
      serializers.serialize(
        count,
        specifiedType: const FullType(int),
      ),
      'ScannedCount',
      serializers.serialize(
        scannedCount,
        specifiedType: const FullType(int),
      ),
    ]);
    if (items != null) {
      result$
        ..add('Items')
        ..add(serializers.serialize(
          items,
          specifiedType: const FullType(
            _i4.BuiltList,
            [
              FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.AttributeValue),
                ],
              )
            ],
          ),
        ));
    }
    if (lastEvaluatedKey != null) {
      result$
        ..add('LastEvaluatedKey')
        ..add(serializers.serialize(
          lastEvaluatedKey,
          specifiedType: const FullType(
            _i4.BuiltMap,
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
    return result$;
  }
}
