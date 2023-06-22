// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.put_item_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/expected_attribute_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_value.dart'
    as _i5;

part 'put_item_input.g.dart';

/// Represents the input of a `PutItem` operation.
abstract class PutItemInput
    with _i1.HttpInput<PutItemInput>, _i2.AWSEquatable<PutItemInput>
    implements Built<PutItemInput, PutItemInputBuilder> {
  /// Represents the input of a `PutItem` operation.
  factory PutItemInput({
    required String tableName,
    required Map<String, _i3.AttributeValue> item,
    Map<String, _i4.ExpectedAttributeValue>? expected,
    _i5.ReturnValue? returnValues,
    _i6.ReturnConsumedCapacity? returnConsumedCapacity,
    _i7.ReturnItemCollectionMetrics? returnItemCollectionMetrics,
    _i8.ConditionalOperator? conditionalOperator,
    String? conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i3.AttributeValue>? expressionAttributeValues,
  }) {
    return _$PutItemInput._(
      tableName: tableName,
      item: _i9.BuiltMap(item),
      expected: expected == null ? null : _i9.BuiltMap(expected),
      returnValues: returnValues,
      returnConsumedCapacity: returnConsumedCapacity,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      conditionalOperator: conditionalOperator,
      conditionExpression: conditionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i9.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i9.BuiltMap(expressionAttributeValues),
    );
  }

  /// Represents the input of a `PutItem` operation.
  factory PutItemInput.build([void Function(PutItemInputBuilder) updates]) =
      _$PutItemInput;

  const PutItemInput._();

  factory PutItemInput.fromRequest(
    PutItemInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutItemInput>> serializers = [
    PutItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutItemInputBuilder b) {}

  /// The name of the table to contain the item.
  String get tableName;

  /// A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item.
  ///
  /// You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key.
  ///
  /// If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition.
  ///
  /// Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index.
  ///
  /// For more information about primary keys, see [Primary Key](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// Each element in the `Item` map is an `AttributeValue` object.
  _i9.BuiltMap<String, _i3.AttributeValue> get item;

  /// This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [Expected](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html) in the _Amazon DynamoDB Developer Guide_.
  _i9.BuiltMap<String, _i4.ExpectedAttributeValue>? get expected;

  /// Use `ReturnValues` if you want to get the item attributes as they appeared before they were updated with the `PutItem` request. For `PutItem`, the valid values are:
  ///
  /// *   `NONE` \- If `ReturnValues` is not specified, or if its value is `NONE`, then nothing is returned. (This setting is the default for `ReturnValues`.)
  ///
  /// *   `ALL_OLD` \- If `PutItem` overwrote an attribute name-value pair, then the content of the old item is returned.
  ///
  ///
  /// The values returned are strongly consistent.
  ///
  /// There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.
  ///
  /// The `ReturnValues` parameter is used by several DynamoDB operations; however, `PutItem` does not recognize any values other than `NONE` or `ALL_OLD`.
  _i5.ReturnValue? get returnValues;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i6.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to `NONE` (the default), no statistics are returned.
  _i7.ReturnItemCollectionMetrics? get returnItemCollectionMetrics;

  /// This is a legacy parameter. Use `ConditionExpression` instead. For more information, see [ConditionalOperator](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.ConditionalOperator? get conditionalOperator;

  /// A condition that must be satisfied in order for a conditional `PutItem` operation to succeed.
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
  /// For more information on condition expressions, see [Condition Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the _Amazon DynamoDB Developer Guide_.
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
  PutItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        item,
        expected,
        returnValues,
        returnConsumedCapacity,
        returnItemCollectionMetrics,
        conditionalOperator,
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutItemInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'item',
        item,
      )
      ..add(
        'expected',
        expected,
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
        'conditionalOperator',
        conditionalOperator,
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

class PutItemInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<PutItemInput> {
  const PutItemInputAwsJson10Serializer() : super('PutItemInput');

  @override
  Iterable<Type> get types => const [
        PutItemInput,
        _$PutItemInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  PutItemInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutItemInputBuilder();
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
        case 'Item':
          result.item.replace((serializers.deserialize(
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
        case 'ReturnValues':
          result.returnValues = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ReturnValue),
          ) as _i5.ReturnValue);
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ReturnConsumedCapacity),
          ) as _i6.ReturnConsumedCapacity);
        case 'ReturnItemCollectionMetrics':
          result.returnItemCollectionMetrics = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ReturnItemCollectionMetrics),
          ) as _i7.ReturnItemCollectionMetrics);
        case 'ConditionalOperator':
          result.conditionalOperator = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.ConditionalOperator),
          ) as _i8.ConditionalOperator);
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
    PutItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutItemInput(
      :tableName,
      :item,
      :expected,
      :returnValues,
      :returnConsumedCapacity,
      :returnItemCollectionMetrics,
      :conditionalOperator,
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
      'Item',
      serializers.serialize(
        item,
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
    if (returnValues != null) {
      result$
        ..add('ReturnValues')
        ..add(serializers.serialize(
          returnValues,
          specifiedType: const FullType(_i5.ReturnValue),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i6.ReturnConsumedCapacity),
        ));
    }
    if (returnItemCollectionMetrics != null) {
      result$
        ..add('ReturnItemCollectionMetrics')
        ..add(serializers.serialize(
          returnItemCollectionMetrics,
          specifiedType: const FullType(_i7.ReturnItemCollectionMetrics),
        ));
    }
    if (conditionalOperator != null) {
      result$
        ..add('ConditionalOperator')
        ..add(serializers.serialize(
          conditionalOperator,
          specifiedType: const FullType(_i8.ConditionalOperator),
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
