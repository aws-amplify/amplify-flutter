// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.delete_item_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/expected_attribute_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_value.dart'
    as _i6;

part 'delete_item_input.g.dart';

/// Represents the input of a `DeleteItem` operation.
abstract class DeleteItemInput
    with _i1.HttpInput<DeleteItemInput>, _i2.AWSEquatable<DeleteItemInput>
    implements Built<DeleteItemInput, DeleteItemInputBuilder> {
  /// Represents the input of a `DeleteItem` operation.
  factory DeleteItemInput({
    required String tableName,
    required Map<String, _i3.AttributeValue> key,
    Map<String, _i4.ExpectedAttributeValue>? expected,
    _i5.ConditionalOperator? conditionalOperator,
    _i6.ReturnValue? returnValues,
    _i7.ReturnConsumedCapacity? returnConsumedCapacity,
    _i8.ReturnItemCollectionMetrics? returnItemCollectionMetrics,
    String? conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i3.AttributeValue>? expressionAttributeValues,
  }) {
    return _$DeleteItemInput._(
      tableName: tableName,
      key: _i9.BuiltMap(key),
      expected: expected == null ? null : _i9.BuiltMap(expected),
      conditionalOperator: conditionalOperator,
      returnValues: returnValues,
      returnConsumedCapacity: returnConsumedCapacity,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      conditionExpression: conditionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i9.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i9.BuiltMap(expressionAttributeValues),
    );
  }

  /// Represents the input of a `DeleteItem` operation.
  factory DeleteItemInput.build(
      [void Function(DeleteItemInputBuilder) updates]) = _$DeleteItemInput;

  const DeleteItemInput._();

  factory DeleteItemInput.fromRequest(
    DeleteItemInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteItemInput>> serializers = [
    DeleteItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteItemInputBuilder b) {}

  /// The name of the table from which to delete the item.
  String get tableName;

  /// A map of attribute names to `AttributeValue` objects, representing the primary key of the item to delete.
  ///
  /// For the primary key, you must provide all of the key attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.
  _i9.BuiltMap<String, _i3.AttributeValue> get key;

  /// This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [Expected](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html) in the _Amazon DynamoDB Developer Guide_.
  _i9.BuiltMap<String, _i4.ExpectedAttributeValue>? get expected;

  /// This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [ConditionalOperator](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.ConditionalOperator? get conditionalOperator;

  /// Use `ReturnValues` if you want to get the item attributes as they appeared before they were deleted. For `DeleteItem`, the valid values are:
  ///
  /// *   `NONE` \- If `ReturnValues` is not specified, or if its value is `NONE`, then nothing is returned. (This setting is the default for `ReturnValues`.)
  ///
  /// *   `ALL_OLD` \- The content of the old item is returned.
  ///
  ///
  /// There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.
  ///
  /// The `ReturnValues` parameter is used by several DynamoDB operations; however, `DeleteItem` does not recognize any values other than `NONE` or `ALL_OLD`.
  _i6.ReturnValue? get returnValues;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i7.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.
  _i8.ReturnItemCollectionMetrics? get returnItemCollectionMetrics;

  /// A condition that must be satisfied in order for a conditional `DeleteItem` to succeed.
  ///
  /// An expression can contain any of the following:
  ///
  /// *   Functions: `attribute\_exists | attribute\_not\_exists | attribute\_type | contains | begins_with | size`
  ///
  ///     These function names are case-sensitive.
  ///
  /// *   Comparison operators: `= | <> | < | \> | <= | >= | BETWEEN | IN`
  ///
  /// *   Logical operators: `AND | OR | NOT`
  ///
  ///
  /// For more information about condition expressions, see [Condition Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the _Amazon DynamoDB Developer Guide_.
  String? get conditionExpression;

  /// One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:
  ///
  /// *   To access an attribute whose name conflicts with a DynamoDB reserved word.
  ///
  /// *   To create a placeholder for repeating occurrences of an attribute name in an expression.
  ///
  /// *   To prevent special characters in an attribute name from being misinterpreted in an expression.
  ///
  ///
  /// Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:
  ///
  /// *   `Percentile`
  ///
  ///
  /// The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the _Amazon DynamoDB Developer Guide_). To work around this, you could specify the following for `ExpressionAttributeNames`:
  ///
  /// *   `{"#P":"Percentile"}`
  ///
  ///
  /// You could then use this substitution in an expression, as in this example:
  ///
  /// *   `#P = :val`
  ///
  ///
  /// Tokens that begin with the **:** character are _expression attribute values_, which are placeholders for the actual value at runtime.
  ///
  /// For more information on expression attribute names, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  _i9.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  ///
  /// Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the _ProductStatus_ attribute was one of the following:
  ///
  /// `Available | Backordered | Discontinued`
  ///
  /// You would first need to specify `ExpressionAttributeValues` as follows:
  ///
  /// `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`
  ///
  /// You could then use these values in an expression, such as this:
  ///
  /// `ProductStatus IN (:avail, :back, :disc)`
  ///
  /// For more information on expression attribute values, see [Condition Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the _Amazon DynamoDB Developer Guide_.
  _i9.BuiltMap<String, _i3.AttributeValue>? get expressionAttributeValues;
  @override
  DeleteItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        key,
        expected,
        conditionalOperator,
        returnValues,
        returnConsumedCapacity,
        returnItemCollectionMetrics,
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteItemInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'expected',
        expected,
      )
      ..add(
        'conditionalOperator',
        conditionalOperator,
      )
      ..add(
        'returnValues',
        returnValues,
      )
      ..add(
        'returnConsumedCapacity',
        returnConsumedCapacity,
      )
      ..add(
        'returnItemCollectionMetrics',
        returnItemCollectionMetrics,
      )
      ..add(
        'conditionExpression',
        conditionExpression,
      )
      ..add(
        'expressionAttributeNames',
        expressionAttributeNames,
      )
      ..add(
        'expressionAttributeValues',
        expressionAttributeValues,
      );
    return helper.toString();
  }
}

class DeleteItemInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DeleteItemInput> {
  const DeleteItemInputAwsJson10Serializer() : super('DeleteItemInput');

  @override
  Iterable<Type> get types => const [
        DeleteItemInput,
        _$DeleteItemInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DeleteItemInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteItemInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i9.BuiltMap,
              [
                FullType(String),
                FullType(_i3.AttributeValue),
              ],
            ),
          ) as _i9.BuiltMap<String, _i3.AttributeValue>));
        case 'Expected':
          result.expected.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i9.BuiltMap,
              [
                FullType(String),
                FullType(_i4.ExpectedAttributeValue),
              ],
            ),
          ) as _i9.BuiltMap<String, _i4.ExpectedAttributeValue>));
        case 'ConditionalOperator':
          result.conditionalOperator = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ConditionalOperator),
          ) as _i5.ConditionalOperator);
        case 'ReturnValues':
          result.returnValues = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ReturnValue),
          ) as _i6.ReturnValue);
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ReturnConsumedCapacity),
          ) as _i7.ReturnConsumedCapacity);
        case 'ReturnItemCollectionMetrics':
          result.returnItemCollectionMetrics = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.ReturnItemCollectionMetrics),
          ) as _i8.ReturnItemCollectionMetrics);
        case 'ConditionExpression':
          result.conditionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionAttributeNames':
          result.expressionAttributeNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i9.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i9.BuiltMap<String, String>));
        case 'ExpressionAttributeValues':
          result.expressionAttributeValues.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i9.BuiltMap,
              [
                FullType(String),
                FullType(_i3.AttributeValue),
              ],
            ),
          ) as _i9.BuiltMap<String, _i3.AttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteItemInput(
      :tableName,
      :key,
      :expected,
      :conditionalOperator,
      :returnValues,
      :returnConsumedCapacity,
      :returnItemCollectionMetrics,
      :conditionExpression,
      :expressionAttributeNames,
      :expressionAttributeValues
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'Key',
      serializers.serialize(
        key,
        specifiedType: const FullType(
          _i9.BuiltMap,
          [
            FullType(String),
            FullType(_i3.AttributeValue),
          ],
        ),
      ),
    ]);
    if (expected != null) {
      result$
        ..add('Expected')
        ..add(serializers.serialize(
          expected,
          specifiedType: const FullType(
            _i9.BuiltMap,
            [
              FullType(String),
              FullType(_i4.ExpectedAttributeValue),
            ],
          ),
        ));
    }
    if (conditionalOperator != null) {
      result$
        ..add('ConditionalOperator')
        ..add(serializers.serialize(
          conditionalOperator,
          specifiedType: const FullType(_i5.ConditionalOperator),
        ));
    }
    if (returnValues != null) {
      result$
        ..add('ReturnValues')
        ..add(serializers.serialize(
          returnValues,
          specifiedType: const FullType(_i6.ReturnValue),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i7.ReturnConsumedCapacity),
        ));
    }
    if (returnItemCollectionMetrics != null) {
      result$
        ..add('ReturnItemCollectionMetrics')
        ..add(serializers.serialize(
          returnItemCollectionMetrics,
          specifiedType: const FullType(_i8.ReturnItemCollectionMetrics),
        ));
    }
    if (conditionExpression != null) {
      result$
        ..add('ConditionExpression')
        ..add(serializers.serialize(
          conditionExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (expressionAttributeNames != null) {
      result$
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          expressionAttributeNames,
          specifiedType: const FullType(
            _i9.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (expressionAttributeValues != null) {
      result$
        ..add('ExpressionAttributeValues')
        ..add(serializers.serialize(
          expressionAttributeValues,
          specifiedType: const FullType(
            _i9.BuiltMap,
            [
              FullType(String),
              FullType(_i3.AttributeValue),
            ],
          ),
        ));
    }
    return result$;
  }
}
