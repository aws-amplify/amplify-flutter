// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_get_item_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/keys_and_attributes.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;

part 'batch_get_item_input.g.dart';

/// Represents the input of a `BatchGetItem` operation.
abstract class BatchGetItemInput
    with _i1.HttpInput<BatchGetItemInput>, _i2.AWSEquatable<BatchGetItemInput>
    implements Built<BatchGetItemInput, BatchGetItemInputBuilder> {
  /// Represents the input of a `BatchGetItem` operation.
  factory BatchGetItemInput({
    required Map<String, _i3.KeysAndAttributes> requestItems,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
  }) {
    return _$BatchGetItemInput._(
      requestItems: _i5.BuiltMap(requestItems),
      returnConsumedCapacity: returnConsumedCapacity,
    );
  }

  /// Represents the input of a `BatchGetItem` operation.
  factory BatchGetItemInput.build(
      [void Function(BatchGetItemInputBuilder) updates]) = _$BatchGetItemInput;

  const BatchGetItemInput._();

  factory BatchGetItemInput.fromRequest(
    BatchGetItemInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    BatchGetItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchGetItemInputBuilder b) {}

  /// A map of one or more table names and, for each table, a map that describes one or more items to retrieve from that table. Each table name can be used only once per `BatchGetItem` request.
  ///
  /// Each element in the map of items to retrieve consists of the following:
  ///
  /// *   `ConsistentRead` \- If `true`, a strongly consistent read is used; if `false` (the default), an eventually consistent read is used.
  ///
  /// *   `ExpressionAttributeNames` \- One or more substitution tokens for attribute names in the `ProjectionExpression` parameter. The following are some use cases for using `ExpressionAttributeNames`:
  ///
  ///     *   To access an attribute whose name conflicts with a DynamoDB reserved word.
  ///
  ///     *   To create a placeholder for repeating occurrences of an attribute name in an expression.
  ///
  ///     *   To prevent special characters in an attribute name from being misinterpreted in an expression.
  ///
  ///
  ///     Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:
  ///
  ///     *   `Percentile`
  ///
  ///
  ///     The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the _Amazon DynamoDB Developer Guide_). To work around this, you could specify the following for `ExpressionAttributeNames`:
  ///
  ///     *   `{"#P":"Percentile"}`
  ///
  ///
  ///     You could then use this substitution in an expression, as in this example:
  ///
  ///     *   `#P = :val`
  ///
  ///
  ///     Tokens that begin with the **:** character are _expression attribute values_, which are placeholders for the actual value at runtime.
  ///
  ///     For more information about expression attribute names, see [Accessing Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// *   `Keys` \- An array of primary key attribute values that define specific items in the table. For each primary key, you must provide _all_ of the key attributes. For example, with a simple primary key, you only need to provide the partition key value. For a composite key, you must provide _both_ the partition key value and the sort key value.
  ///
  /// *   `ProjectionExpression` \- A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  ///
  ///     If no attribute names are specified, then all attributes are returned. If any of the requested attributes are not found, they do not appear in the result.
  ///
  ///     For more information, see [Accessing Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// *   `AttributesToGet` \- This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.BuiltMap<String, _i3.KeysAndAttributes> get requestItems;

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
  @override
  BatchGetItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        requestItems,
        returnConsumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchGetItemInput');
    helper.add(
      'requestItems',
      requestItems,
    );
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    return helper.toString();
  }
}

class BatchGetItemInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<BatchGetItemInput> {
  const BatchGetItemInputAwsJson10Serializer() : super('BatchGetItemInput');

  @override
  Iterable<Type> get types => const [
        BatchGetItemInput,
        _$BatchGetItemInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchGetItemInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchGetItemInputBuilder();
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
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(_i3.KeysAndAttributes),
              ],
            ),
          ) as _i5.BuiltMap<String, _i3.KeysAndAttributes>));
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReturnConsumedCapacity),
            ) as _i4.ReturnConsumedCapacity);
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
    final payload = (object as BatchGetItemInput);
    final result = <Object?>[
      'RequestItems',
      serializers.serialize(
        payload.requestItems,
        specifiedType: const FullType(
          _i5.BuiltMap,
          [
            FullType(String),
            FullType(_i3.KeysAndAttributes),
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
    return result;
  }
}
