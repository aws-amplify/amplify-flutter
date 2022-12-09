// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.expected_attribute_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/comparison_operator.dart'
    as _i3;

part 'expected_attribute_value.g.dart';

/// Represents a condition to be compared with an attribute value. This condition can be used with `DeleteItem`, `PutItem`, or `UpdateItem` operations; if the comparison evaluates to true, the operation succeeds; if not, the operation fails. You can use `ExpectedAttributeValue` in one of two different ways:
///
/// *   Use `AttributeValueList` to specify one or more values to compare against an attribute. Use `ComparisonOperator` to specify how you want to perform the comparison. If the comparison evaluates to true, then the conditional operation succeeds.
///
/// *   Use `Value` to specify a value that DynamoDB will compare against an attribute. If the values match, then `ExpectedAttributeValue` evaluates to true and the conditional operation succeeds. Optionally, you can also set `Exists` to false, indicating that you _do not_ expect to find the attribute value in the table. In this case, the conditional operation succeeds only if the comparison evaluates to false.
///
///
/// `Value` and `Exists` are incompatible with `AttributeValueList` and `ComparisonOperator`. Note that if you use both sets of parameters at once, DynamoDB will return a `ValidationException` exception.
abstract class ExpectedAttributeValue
    with _i1.AWSEquatable<ExpectedAttributeValue>
    implements Built<ExpectedAttributeValue, ExpectedAttributeValueBuilder> {
  /// Represents a condition to be compared with an attribute value. This condition can be used with `DeleteItem`, `PutItem`, or `UpdateItem` operations; if the comparison evaluates to true, the operation succeeds; if not, the operation fails. You can use `ExpectedAttributeValue` in one of two different ways:
  ///
  /// *   Use `AttributeValueList` to specify one or more values to compare against an attribute. Use `ComparisonOperator` to specify how you want to perform the comparison. If the comparison evaluates to true, then the conditional operation succeeds.
  ///
  /// *   Use `Value` to specify a value that DynamoDB will compare against an attribute. If the values match, then `ExpectedAttributeValue` evaluates to true and the conditional operation succeeds. Optionally, you can also set `Exists` to false, indicating that you _do not_ expect to find the attribute value in the table. In this case, the conditional operation succeeds only if the comparison evaluates to false.
  ///
  ///
  /// `Value` and `Exists` are incompatible with `AttributeValueList` and `ComparisonOperator`. Note that if you use both sets of parameters at once, DynamoDB will return a `ValidationException` exception.
  factory ExpectedAttributeValue({
    List<_i2.AttributeValue>? attributeValueList,
    _i3.ComparisonOperator? comparisonOperator,
    bool? exists,
    _i2.AttributeValue? value,
  }) {
    return _$ExpectedAttributeValue._(
      attributeValueList:
          attributeValueList == null ? null : _i4.BuiltList(attributeValueList),
      comparisonOperator: comparisonOperator,
      exists: exists,
      value: value,
    );
  }

  /// Represents a condition to be compared with an attribute value. This condition can be used with `DeleteItem`, `PutItem`, or `UpdateItem` operations; if the comparison evaluates to true, the operation succeeds; if not, the operation fails. You can use `ExpectedAttributeValue` in one of two different ways:
  ///
  /// *   Use `AttributeValueList` to specify one or more values to compare against an attribute. Use `ComparisonOperator` to specify how you want to perform the comparison. If the comparison evaluates to true, then the conditional operation succeeds.
  ///
  /// *   Use `Value` to specify a value that DynamoDB will compare against an attribute. If the values match, then `ExpectedAttributeValue` evaluates to true and the conditional operation succeeds. Optionally, you can also set `Exists` to false, indicating that you _do not_ expect to find the attribute value in the table. In this case, the conditional operation succeeds only if the comparison evaluates to false.
  ///
  ///
  /// `Value` and `Exists` are incompatible with `AttributeValueList` and `ComparisonOperator`. Note that if you use both sets of parameters at once, DynamoDB will return a `ValidationException` exception.
  factory ExpectedAttributeValue.build(
          [void Function(ExpectedAttributeValueBuilder) updates]) =
      _$ExpectedAttributeValue;

  const ExpectedAttributeValue._();

  static const List<_i5.SmithySerializer> serializers = [
    ExpectedAttributeValueAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExpectedAttributeValueBuilder b) {}

  /// One or more values to evaluate against the supplied attribute. The number of values in the list depends on the `ComparisonOperator` being used.
  ///
  /// For type Number, value comparisons are numeric.
  ///
  /// String value comparisons for greater than, equals, or less than are based on ASCII character code values. For example, `a` is greater than `A`, and `a` is greater than `B`. For a list of code values, see [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters](http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters).
  ///
  /// For Binary, DynamoDB treats each byte of the binary data as unsigned when it compares binary values.
  ///
  /// For information on specifying data types in JSON, see [JSON Data Format](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html) in the _Amazon DynamoDB Developer Guide_.
  _i4.BuiltList<_i2.AttributeValue>? get attributeValueList;

  /// A comparator for evaluating attributes in the `AttributeValueList`. For example, equals, greater than, less than, etc.
  ///
  /// The following comparison operators are available:
  ///
  /// `EQ | NE | LE | LT | GE | GT | NOT\_NULL | NULL | CONTAINS | NOT\_CONTAINS | BEGINS_WITH | IN | BETWEEN`
  ///
  /// The following are descriptions of each comparison operator.
  ///
  /// *   `EQ` : Equal. `EQ` is supported for all data types, including lists and maps.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` element of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an `AttributeValue` element of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not equal `{"N":"6"}`. Also, `{"N":"6"}` does not equal `{"NS":\["6", "2", "1"\]}`.
  ///
  /// *   `NE` : Not equal. `NE` is supported for all data types, including lists and maps.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` of type String, Number, Binary, String Set, Number Set, or Binary Set. If an item contains an `AttributeValue` of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not equal `{"N":"6"}`. Also, `{"N":"6"}` does not equal `{"NS":\["6", "2", "1"\]}`.
  ///
  /// *   `LE` : Less than or equal.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` element of type String, Number, or Binary (not a set type). If an item contains an `AttributeValue` element of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not equal `{"N":"6"}`. Also, `{"N":"6"}` does not compare to `{"NS":\["6", "2", "1"\]}`.
  ///
  /// *   `LT` : Less than.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` of type String, Number, or Binary (not a set type). If an item contains an `AttributeValue` element of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not equal `{"N":"6"}`. Also, `{"N":"6"}` does not compare to `{"NS":\["6", "2", "1"\]}`.
  ///
  /// *   `GE` : Greater than or equal.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` element of type String, Number, or Binary (not a set type). If an item contains an `AttributeValue` element of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not equal `{"N":"6"}`. Also, `{"N":"6"}` does not compare to `{"NS":\["6", "2", "1"\]}`.
  ///
  /// *   `GT` : Greater than.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` element of type String, Number, or Binary (not a set type). If an item contains an `AttributeValue` element of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not equal `{"N":"6"}`. Also, `{"N":"6"}` does not compare to `{"NS":\["6", "2", "1"\]}`.
  ///
  /// *   `NOT_NULL` : The attribute exists. `NOT_NULL` is supported for all data types, including lists and maps.
  ///
  ///     This operator tests for the existence of an attribute, not its data type. If the data type of attribute "`a`" is null, and you evaluate it using `NOT_NULL`, the result is a Boolean `true`. This result is because the attribute "`a`" exists; its data type is not relevant to the `NOT_NULL` comparison operator.
  ///
  /// *   `NULL` : The attribute does not exist. `NULL` is supported for all data types, including lists and maps.
  ///
  ///     This operator tests for the nonexistence of an attribute, not its data type. If the data type of attribute "`a`" is null, and you evaluate it using `NULL`, the result is a Boolean `false`. This is because the attribute "`a`" exists; its data type is not relevant to the `NULL` comparison operator.
  ///
  /// *   `CONTAINS` : Checks for a subsequence, or value in a set.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is of type String, then the operator checks for a substring match. If the target attribute of the comparison is of type Binary, then the operator looks for a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("`SS`", "`NS`", or "`BS`"), then the operator evaluates to true if it finds an exact match with any member of the set.
  ///
  ///     CONTAINS is supported for lists: When evaluating "`a CONTAINS b`", "`a`" can be a list; however, "`b`" cannot be a set, a map, or a list.
  ///
  /// *   `NOT_CONTAINS` : Checks for absence of a subsequence, or absence of a value in a set.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` element of type String, Number, or Binary (not a set type). If the target attribute of the comparison is a String, then the operator checks for the absence of a substring match. If the target attribute of the comparison is Binary, then the operator checks for the absence of a subsequence of the target that matches the input. If the target attribute of the comparison is a set ("`SS`", "`NS`", or "`BS`"), then the operator evaluates to true if it _does not_ find an exact match with any member of the set.
  ///
  ///     NOT_CONTAINS is supported for lists: When evaluating "`a NOT CONTAINS b`", "`a`" can be a list; however, "`b`" cannot be a set, a map, or a list.
  ///
  /// *   `BEGINS_WITH` : Checks for a prefix.
  ///
  ///     `AttributeValueList` can contain only one `AttributeValue` of type String or Binary (not a Number or a set type). The target attribute of the comparison must be of type String or Binary (not a Number or a set type).
  ///
  /// *   `IN` : Checks for matching elements in a list.
  ///
  ///     `AttributeValueList` can contain one or more `AttributeValue` elements of type String, Number, or Binary. These attributes are compared against an existing attribute of an item. If any elements of the input are equal to the item attribute, the expression evaluates to true.
  ///
  /// *   `BETWEEN` : Greater than or equal to the first value, and less than or equal to the second value.
  ///
  ///     `AttributeValueList` must contain two `AttributeValue` elements of the same type, either String, Number, or Binary (not a set type). A target attribute matches if the target value is greater than, or equal to, the first element and less than, or equal to, the second element. If an item contains an `AttributeValue` element of a different type than the one provided in the request, the value does not match. For example, `{"S":"6"}` does not compare to `{"N":"6"}`. Also, `{"N":"6"}` does not compare to `{"NS":\["6", "2", "1"\]}`
  _i3.ComparisonOperator? get comparisonOperator;

  /// Causes DynamoDB to evaluate the value before attempting a conditional operation:
  ///
  /// *   If `Exists` is `true`, DynamoDB will check to see if that attribute value already exists in the table. If it is found, then the operation succeeds. If it is not found, the operation fails with a `ConditionCheckFailedException`.
  ///
  /// *   If `Exists` is `false`, DynamoDB assumes that the attribute value does not exist in the table. If in fact the value does not exist, then the assumption is valid and the operation succeeds. If the value is found, despite the assumption that it does not exist, the operation fails with a `ConditionCheckFailedException`.
  ///
  ///
  /// The default setting for `Exists` is `true`. If you supply a `Value` all by itself, DynamoDB assumes the attribute exists: You don't have to set `Exists` to `true`, because it is implied.
  ///
  /// DynamoDB returns a `ValidationException` if:
  ///
  /// *   `Exists` is `true` but there is no `Value` to check. (You expect a value to exist, but don't specify what that value is.)
  ///
  /// *   `Exists` is `false` but you also provide a `Value`. (You cannot expect an attribute to have a value, while also expecting it not to exist.)
  bool? get exists;

  /// Represents the data for the expected attribute.
  ///
  /// Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.
  ///
  /// For more information, see [Data Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes) in the _Amazon DynamoDB Developer Guide_.
  _i2.AttributeValue? get value;
  @override
  List<Object?> get props => [
        attributeValueList,
        comparisonOperator,
        exists,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExpectedAttributeValue');
    helper.add(
      'attributeValueList',
      attributeValueList,
    );
    helper.add(
      'comparisonOperator',
      comparisonOperator,
    );
    helper.add(
      'exists',
      exists,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class ExpectedAttributeValueAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ExpectedAttributeValue> {
  const ExpectedAttributeValueAwsJson10Serializer()
      : super('ExpectedAttributeValue');

  @override
  Iterable<Type> get types => const [
        ExpectedAttributeValue,
        _$ExpectedAttributeValue,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExpectedAttributeValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpectedAttributeValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeValueList':
          if (value != null) {
            result.attributeValueList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.AttributeValue)],
              ),
            ) as _i4.BuiltList<_i2.AttributeValue>));
          }
          break;
        case 'ComparisonOperator':
          if (value != null) {
            result.comparisonOperator = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ComparisonOperator),
            ) as _i3.ComparisonOperator);
          }
          break;
        case 'Exists':
          if (value != null) {
            result.exists = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttributeValue),
            ) as _i2.AttributeValue);
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
    final payload = (object as ExpectedAttributeValue);
    final result = <Object?>[];
    if (payload.attributeValueList != null) {
      result
        ..add('AttributeValueList')
        ..add(serializers.serialize(
          payload.attributeValueList!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.AttributeValue)],
          ),
        ));
    }
    if (payload.comparisonOperator != null) {
      result
        ..add('ComparisonOperator')
        ..add(serializers.serialize(
          payload.comparisonOperator!,
          specifiedType: const FullType(_i3.ComparisonOperator),
        ));
    }
    if (payload.exists != null) {
      result
        ..add('Exists')
        ..add(serializers.serialize(
          payload.exists!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(_i2.AttributeValue),
        ));
    }
    return result;
  }
}
