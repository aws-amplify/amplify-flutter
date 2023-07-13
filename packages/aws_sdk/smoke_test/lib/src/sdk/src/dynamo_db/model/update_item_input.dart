// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.update_item_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value_update.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/expected_attribute_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_value.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart'
    as _i10;

part 'update_item_input.g.dart';

/// Represents the input of an `UpdateItem` operation.
abstract class UpdateItemInput
    with _i1.HttpInput<UpdateItemInput>, _i2.AWSEquatable<UpdateItemInput>
    implements Built<UpdateItemInput, UpdateItemInputBuilder> {
  /// Represents the input of an `UpdateItem` operation.
  factory UpdateItemInput({
    required String tableName,
    required Map<String, _i3.AttributeValue> key,
    Map<String, _i4.AttributeValueUpdate>? attributeUpdates,
    Map<String, _i5.ExpectedAttributeValue>? expected,
    _i6.ConditionalOperator? conditionalOperator,
    _i7.ReturnValue? returnValues,
    _i8.ReturnConsumedCapacity? returnConsumedCapacity,
    _i9.ReturnItemCollectionMetrics? returnItemCollectionMetrics,
    String? updateExpression,
    String? conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i3.AttributeValue>? expressionAttributeValues,
    _i10.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
  }) {
    return _$UpdateItemInput._(
      tableName: tableName,
      key: _i11.BuiltMap(key),
      attributeUpdates:
          attributeUpdates == null ? null : _i11.BuiltMap(attributeUpdates),
      expected: expected == null ? null : _i11.BuiltMap(expected),
      conditionalOperator: conditionalOperator,
      returnValues: returnValues,
      returnConsumedCapacity: returnConsumedCapacity,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      updateExpression: updateExpression,
      conditionExpression: conditionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i11.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i11.BuiltMap(expressionAttributeValues),
      returnValuesOnConditionCheckFailure: returnValuesOnConditionCheckFailure,
    );
  }

  /// Represents the input of an `UpdateItem` operation.
  factory UpdateItemInput.build(
      [void Function(UpdateItemInputBuilder) updates]) = _$UpdateItemInput;

  const UpdateItemInput._();

  factory UpdateItemInput.fromRequest(
    UpdateItemInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateItemInput>> serializers = [
    UpdateItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateItemInputBuilder b) {}

  /// The name of the table containing the item to update.
  String get tableName;

  /// The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.
  ///
  /// For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.
  _i11.BuiltMap<String, _i3.AttributeValue> get key;

  /// This is a legacy parameter. Use `UpdateExpression` instead. For more information, see [AttributeUpdates](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html) in the _Amazon DynamoDB Developer Guide_.
  _i11.BuiltMap<String, _i4.AttributeValueUpdate>? get attributeUpdates;

  /// This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [Expected](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html) in the _Amazon DynamoDB Developer Guide_.
  _i11.BuiltMap<String, _i5.ExpectedAttributeValue>? get expected;

  /// This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [ConditionalOperator](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the _Amazon DynamoDB Developer Guide_.
  _i6.ConditionalOperator? get conditionalOperator;

  /// Use `ReturnValues` if you want to get the item attributes as they appear before or after they are successfully updated. For `UpdateItem`, the valid values are:
  ///
  /// *   `NONE` \- If `ReturnValues` is not specified, or if its value is `NONE`, then nothing is returned. (This setting is the default for `ReturnValues`.)
  ///
  /// *   `ALL_OLD` \- Returns all of the attributes of the item, as they appeared before the UpdateItem operation.
  ///
  /// *   `UPDATED_OLD` \- Returns only the updated attributes, as they appeared before the UpdateItem operation.
  ///
  /// *   `ALL_NEW` \- Returns all of the attributes of the item, as they appear after the UpdateItem operation.
  ///
  /// *   `UPDATED_NEW` \- Returns only the updated attributes, as they appear after the UpdateItem operation.
  ///
  ///
  /// There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.
  ///
  /// The values returned are strongly consistent.
  _i7.ReturnValue? get returnValues;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i8.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.
  _i9.ReturnItemCollectionMetrics? get returnItemCollectionMetrics;

  /// An expression that defines one or more attributes to be updated, the action to be performed on them, and new values for them.
  ///
  /// The following action values are available for `UpdateExpression`.
  ///
  /// *   `SET` \- Adds one or more attributes and values to an item. If any of these attributes already exist, they are replaced by the new values. You can also use `SET` to add or subtract from an attribute that is of type Number. For example: `SET myNum = myNum + :val`
  ///
  ///     `SET` supports the following functions:
  ///
  ///     *   `if\_not\_exists (path, operand)` \- if the item does not contain an attribute at the specified path, then `if\_not\_exists` evaluates to operand; otherwise, it evaluates to path. You can use this function to avoid overwriting an attribute that may already be present in the item.
  ///
  ///     *   `list_append (operand, operand)` \- evaluates to a list with a new element added to it. You can append the new element to the start or the end of the list by reversing the order of the operands.
  ///
  ///
  ///     These function names are case-sensitive.
  ///
  /// *   `REMOVE` \- Removes one or more attributes from an item.
  ///
  /// *   `ADD` \- Adds the specified value to the item, if the attribute does not already exist. If the attribute does exist, then the behavior of `ADD` depends on the data type of the attribute:
  ///
  ///     *   If the existing attribute is a number, and if `Value` is also a number, then `Value` is mathematically added to the existing attribute. If `Value` is a negative number, then it is subtracted from the existing attribute.
  ///
  ///         If you use `ADD` to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses `0` as the initial value.
  ///
  ///         Similarly, if you use `ADD` for an existing item to increment or decrement an attribute value that doesn't exist before the update, DynamoDB uses `0` as the initial value. For example, suppose that the item you want to update doesn't have an attribute named `itemcount`, but you decide to `ADD` the number `3` to this attribute anyway. DynamoDB will create the `itemcount` attribute, set its initial value to `0`, and finally add `3` to it. The result will be a new `itemcount` attribute in the item, with a value of `3`.
  ///
  ///     *   If the existing data type is a set and if `Value` is also a set, then `Value` is added to the existing set. For example, if the attribute value is the set `\[1,2\]`, and the `ADD` action specified `\[3\]`, then the final attribute value is `\[1,2,3\]`. An error occurs if an `ADD` action is specified for a set attribute and the attribute type specified does not match the existing set type.
  ///
  ///         Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the `Value` must also be a set of strings.
  ///
  ///
  ///     The `ADD` action only supports Number and set data types. In addition, `ADD` can only be used on top-level attributes, not nested attributes.
  ///
  /// *   `DELETE` \- Deletes an element from a set.
  ///
  ///     If a set of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set `\[a,b,c\]` and the `DELETE` action specifies `\[a,c\]`, then the final attribute value is `\[b\]`. Specifying an empty set is an error.
  ///
  ///     The `DELETE` action only supports set data types. In addition, `DELETE` can only be used on top-level attributes, not nested attributes.
  ///
  ///
  /// You can have many actions in a single expression, such as the following: `SET a=:value1, b=:value2 DELETE :value3, :value4, :value5`
  ///
  /// For more information on update expressions, see [Modifying Items and Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html) in the _Amazon DynamoDB Developer Guide_.
  String? get updateExpression;

  /// A condition that must be satisfied in order for a conditional update to succeed.
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
  /// For more information about condition expressions, see [Specifying Conditions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the _Amazon DynamoDB Developer Guide_.
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
  /// The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the _Amazon DynamoDB Developer Guide_.) To work around this, you could specify the following for `ExpressionAttributeNames`:
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
  /// For more information about expression attribute names, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  _i11.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  ///
  /// Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the `ProductStatus` attribute was one of the following:
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
  _i11.BuiltMap<String, _i3.AttributeValue>? get expressionAttributeValues;

  /// An optional parameter that returns the item attributes for an `UpdateItem` operation that failed a condition check.
  ///
  /// There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.
  _i10.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;
  @override
  UpdateItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        key,
        attributeUpdates,
        expected,
        conditionalOperator,
        returnValues,
        returnConsumedCapacity,
        returnItemCollectionMetrics,
        updateExpression,
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        returnValuesOnConditionCheckFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateItemInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'attributeUpdates',
        attributeUpdates,
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
        'updateExpression',
        updateExpression,
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
      )
      ..add(
        'returnValuesOnConditionCheckFailure',
        returnValuesOnConditionCheckFailure,
      );
    return helper.toString();
  }
}

class UpdateItemInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateItemInput> {
  const UpdateItemInputAwsJson10Serializer() : super('UpdateItemInput');

  @override
  Iterable<Type> get types => const [
        UpdateItemInput,
        _$UpdateItemInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateItemInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateItemInputBuilder();
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
              _i11.BuiltMap,
              [
                FullType(String),
                FullType(_i3.AttributeValue),
              ],
            ),
          ) as _i11.BuiltMap<String, _i3.AttributeValue>));
        case 'AttributeUpdates':
          result.attributeUpdates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i11.BuiltMap,
              [
                FullType(String),
                FullType(_i4.AttributeValueUpdate),
              ],
            ),
          ) as _i11.BuiltMap<String, _i4.AttributeValueUpdate>));
        case 'Expected':
          result.expected.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i11.BuiltMap,
              [
                FullType(String),
                FullType(_i5.ExpectedAttributeValue),
              ],
            ),
          ) as _i11.BuiltMap<String, _i5.ExpectedAttributeValue>));
        case 'ConditionalOperator':
          result.conditionalOperator = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ConditionalOperator),
          ) as _i6.ConditionalOperator);
        case 'ReturnValues':
          result.returnValues = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ReturnValue),
          ) as _i7.ReturnValue);
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.ReturnConsumedCapacity),
          ) as _i8.ReturnConsumedCapacity);
        case 'ReturnItemCollectionMetrics':
          result.returnItemCollectionMetrics = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.ReturnItemCollectionMetrics),
          ) as _i9.ReturnItemCollectionMetrics);
        case 'UpdateExpression':
          result.updateExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConditionExpression':
          result.conditionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionAttributeNames':
          result.expressionAttributeNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i11.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i11.BuiltMap<String, String>));
        case 'ExpressionAttributeValues':
          result.expressionAttributeValues.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i11.BuiltMap,
              [
                FullType(String),
                FullType(_i3.AttributeValue),
              ],
            ),
          ) as _i11.BuiltMap<String, _i3.AttributeValue>));
        case 'ReturnValuesOnConditionCheckFailure':
          result.returnValuesOnConditionCheckFailure = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i10.ReturnValuesOnConditionCheckFailure),
          ) as _i10.ReturnValuesOnConditionCheckFailure);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateItemInput(
      :tableName,
      :key,
      :attributeUpdates,
      :expected,
      :conditionalOperator,
      :returnValues,
      :returnConsumedCapacity,
      :returnItemCollectionMetrics,
      :updateExpression,
      :conditionExpression,
      :expressionAttributeNames,
      :expressionAttributeValues,
      :returnValuesOnConditionCheckFailure
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
          _i11.BuiltMap,
          [
            FullType(String),
            FullType(_i3.AttributeValue),
          ],
        ),
      ),
    ]);
    if (attributeUpdates != null) {
      result$
        ..add('AttributeUpdates')
        ..add(serializers.serialize(
          attributeUpdates,
          specifiedType: const FullType(
            _i11.BuiltMap,
            [
              FullType(String),
              FullType(_i4.AttributeValueUpdate),
            ],
          ),
        ));
    }
    if (expected != null) {
      result$
        ..add('Expected')
        ..add(serializers.serialize(
          expected,
          specifiedType: const FullType(
            _i11.BuiltMap,
            [
              FullType(String),
              FullType(_i5.ExpectedAttributeValue),
            ],
          ),
        ));
    }
    if (conditionalOperator != null) {
      result$
        ..add('ConditionalOperator')
        ..add(serializers.serialize(
          conditionalOperator,
          specifiedType: const FullType(_i6.ConditionalOperator),
        ));
    }
    if (returnValues != null) {
      result$
        ..add('ReturnValues')
        ..add(serializers.serialize(
          returnValues,
          specifiedType: const FullType(_i7.ReturnValue),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i8.ReturnConsumedCapacity),
        ));
    }
    if (returnItemCollectionMetrics != null) {
      result$
        ..add('ReturnItemCollectionMetrics')
        ..add(serializers.serialize(
          returnItemCollectionMetrics,
          specifiedType: const FullType(_i9.ReturnItemCollectionMetrics),
        ));
    }
    if (updateExpression != null) {
      result$
        ..add('UpdateExpression')
        ..add(serializers.serialize(
          updateExpression,
          specifiedType: const FullType(String),
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
            _i11.BuiltMap,
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
            _i11.BuiltMap,
            [
              FullType(String),
              FullType(_i3.AttributeValue),
            ],
          ),
        ));
    }
    if (returnValuesOnConditionCheckFailure != null) {
      result$
        ..add('ReturnValuesOnConditionCheckFailure')
        ..add(serializers.serialize(
          returnValuesOnConditionCheckFailure,
          specifiedType:
              const FullType(_i10.ReturnValuesOnConditionCheckFailure),
        ));
    }
    return result$;
  }
}
