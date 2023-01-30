// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_get_item_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/keys_and_attributes.dart'
    as _i4;

part 'batch_get_item_output.g.dart';

/// Represents the output of a `BatchGetItem` operation.
abstract class BatchGetItemOutput
    with _i1.AWSEquatable<BatchGetItemOutput>
    implements Built<BatchGetItemOutput, BatchGetItemOutputBuilder> {
  /// Represents the output of a `BatchGetItem` operation.
  factory BatchGetItemOutput({
    List<_i2.ConsumedCapacity>? consumedCapacity,
    Map<String, List<Map<String, _i3.AttributeValue>>>? responses,
    Map<String, _i4.KeysAndAttributes>? unprocessedKeys,
  }) {
    return _$BatchGetItemOutput._(
      consumedCapacity:
          consumedCapacity == null ? null : _i5.BuiltList(consumedCapacity),
      responses: responses == null
          ? null
          : _i5.BuiltListMultimap(responses.map((
              key,
              value,
            ) =>
              MapEntry(
                key,
                value.map((el) => _i5.BuiltMap(el)),
              ))),
      unprocessedKeys:
          unprocessedKeys == null ? null : _i5.BuiltMap(unprocessedKeys),
    );
  }

  /// Represents the output of a `BatchGetItem` operation.
  factory BatchGetItemOutput.build(
          [void Function(BatchGetItemOutputBuilder) updates]) =
      _$BatchGetItemOutput;

  const BatchGetItemOutput._();

  /// Constructs a [BatchGetItemOutput] from a [payload] and [response].
  factory BatchGetItemOutput.fromResponse(
    BatchGetItemOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    BatchGetItemOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchGetItemOutputBuilder b) {}

  /// The read capacity units consumed by the entire `BatchGetItem` operation.
  ///
  /// Each element consists of:
  ///
  /// *   `TableName` \- The table that consumed the provisioned throughput.
  ///
  /// *   `CapacityUnits` \- The total number of capacity units consumed.
  _i5.BuiltList<_i2.ConsumedCapacity>? get consumedCapacity;

  /// A map of table name to a list of items. Each object in `Responses` consists of a table name, along with a map of attribute data consisting of the data type and attribute value.
  _i5.BuiltListMultimap<String, _i5.BuiltMap<String, _i3.AttributeValue>>?
      get responses;

  /// A map of tables and their respective keys that were not processed with the current response. The `UnprocessedKeys` value is in the same form as `RequestItems`, so the value can be provided directly to a subsequent `BatchGetItem` operation. For more information, see `RequestItems` in the Request Parameters section.
  ///
  /// Each element consists of:
  ///
  /// *   `Keys` \- An array of primary key attribute values that define specific items in the table.
  ///
  /// *   `ProjectionExpression` \- One or more attributes to be retrieved from the table or index. By default, all attributes are returned. If a requested attribute is not found, it does not appear in the result.
  ///
  /// *   `ConsistentRead` \- The consistency of a read operation. If set to `true`, then a strongly consistent read is used; otherwise, an eventually consistent read is used.
  ///
  ///
  /// If there are no unprocessed keys remaining, the response contains an empty `UnprocessedKeys` map.
  _i5.BuiltMap<String, _i4.KeysAndAttributes>? get unprocessedKeys;
  @override
  List<Object?> get props => [
        consumedCapacity,
        responses,
        unprocessedKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchGetItemOutput');
    helper.add(
      'consumedCapacity',
      consumedCapacity,
    );
    helper.add(
      'responses',
      responses,
    );
    helper.add(
      'unprocessedKeys',
      unprocessedKeys,
    );
    return helper.toString();
  }
}

class BatchGetItemOutputAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<BatchGetItemOutput> {
  const BatchGetItemOutputAwsJson10Serializer() : super('BatchGetItemOutput');

  @override
  Iterable<Type> get types => const [
        BatchGetItemOutput,
        _$BatchGetItemOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchGetItemOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchGetItemOutputBuilder();
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
        case 'Responses':
          if (value != null) {
            result.responses.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(
                    _i5.BuiltMap,
                    [
                      FullType(String),
                      FullType(_i3.AttributeValue),
                    ],
                  ),
                ],
              ),
            ) as _i5.BuiltListMultimap<String,
                _i5.BuiltMap<String, _i3.AttributeValue>>));
          }
          break;
        case 'UnprocessedKeys':
          if (value != null) {
            result.unprocessedKeys.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i4.KeysAndAttributes),
                ],
              ),
            ) as _i5.BuiltMap<String, _i4.KeysAndAttributes>));
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
    final payload = (object as BatchGetItemOutput);
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
    if (payload.responses != null) {
      result
        ..add('Responses')
        ..add(serializers.serialize(
          payload.responses!,
          specifiedType: const FullType(
            _i5.BuiltListMultimap,
            [
              FullType(String),
              FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.AttributeValue),
                ],
              ),
            ],
          ),
        ));
    }
    if (payload.unprocessedKeys != null) {
      result
        ..add('UnprocessedKeys')
        ..add(serializers.serialize(
          payload.unprocessedKeys!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i4.KeysAndAttributes),
            ],
          ),
        ));
    }
    return result;
  }
}
