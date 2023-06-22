// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.execute_statement_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i3;

part 'execute_statement_output.g.dart';

abstract class ExecuteStatementOutput
    with _i1.AWSEquatable<ExecuteStatementOutput>
    implements Built<ExecuteStatementOutput, ExecuteStatementOutputBuilder> {
  factory ExecuteStatementOutput({
    List<Map<String, _i2.AttributeValue>>? items,
    String? nextToken,
    _i3.ConsumedCapacity? consumedCapacity,
    Map<String, _i2.AttributeValue>? lastEvaluatedKey,
  }) {
    return _$ExecuteStatementOutput._(
      items: items == null
          ? null
          : _i4.BuiltList(items.map((el) => _i4.BuiltMap(el))),
      nextToken: nextToken,
      consumedCapacity: consumedCapacity,
      lastEvaluatedKey:
          lastEvaluatedKey == null ? null : _i4.BuiltMap(lastEvaluatedKey),
    );
  }

  factory ExecuteStatementOutput.build(
          [void Function(ExecuteStatementOutputBuilder) updates]) =
      _$ExecuteStatementOutput;

  const ExecuteStatementOutput._();

  /// Constructs a [ExecuteStatementOutput] from a [payload] and [response].
  factory ExecuteStatementOutput.fromResponse(
    ExecuteStatementOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<ExecuteStatementOutput>> serializers =
      [ExecuteStatementOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecuteStatementOutputBuilder b) {}

  /// If a read operation was used, this property will contain the result of the read operation; a map of attribute names and their values. For the write operations this value will be empty.
  _i4.BuiltList<_i4.BuiltMap<String, _i2.AttributeValue>>? get items;

  /// If the response of a read request exceeds the response payload limit DynamoDB will set this value in the response. If set, you can use that this value in the subsequent request to get the remaining results.
  String? get nextToken;

  /// The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the request asked for it. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.ConsumedCapacity? get consumedCapacity;

  /// The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If `LastEvaluatedKey` is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If `LastEvaluatedKey` is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when `LastEvaluatedKey` is empty.
  _i4.BuiltMap<String, _i2.AttributeValue>? get lastEvaluatedKey;
  @override
  List<Object?> get props => [
        items,
        nextToken,
        consumedCapacity,
        lastEvaluatedKey,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteStatementOutput')
      ..add(
        'items',
        items,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'consumedCapacity',
        consumedCapacity,
      )
      ..add(
        'lastEvaluatedKey',
        lastEvaluatedKey,
      );
    return helper.toString();
  }
}

class ExecuteStatementOutputAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ExecuteStatementOutput> {
  const ExecuteStatementOutputAwsJson10Serializer()
      : super('ExecuteStatementOutput');

  @override
  Iterable<Type> get types => const [
        ExecuteStatementOutput,
        _$ExecuteStatementOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExecuteStatementOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExecuteStatementOutputBuilder();
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ConsumedCapacity),
          ) as _i3.ConsumedCapacity));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExecuteStatementOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExecuteStatementOutput(
      :items,
      :nextToken,
      :consumedCapacity,
      :lastEvaluatedKey
    ) = object;
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
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
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
    return result$;
  }
}
