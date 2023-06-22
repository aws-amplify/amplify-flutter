// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.condition_check; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart'
    as _i3;

part 'condition_check.g.dart';

/// Represents a request to perform a check that an item exists or to check the condition of specific attributes of the item.
abstract class ConditionCheck
    with _i1.AWSEquatable<ConditionCheck>
    implements Built<ConditionCheck, ConditionCheckBuilder> {
  /// Represents a request to perform a check that an item exists or to check the condition of specific attributes of the item.
  factory ConditionCheck({
    required Map<String, _i2.AttributeValue> key,
    required String tableName,
    required String conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i2.AttributeValue>? expressionAttributeValues,
    _i3.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
  }) {
    return _$ConditionCheck._(
      key: _i4.BuiltMap(key),
      tableName: tableName,
      conditionExpression: conditionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i4.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i4.BuiltMap(expressionAttributeValues),
      returnValuesOnConditionCheckFailure: returnValuesOnConditionCheckFailure,
    );
  }

  /// Represents a request to perform a check that an item exists or to check the condition of specific attributes of the item.
  factory ConditionCheck.build([void Function(ConditionCheckBuilder) updates]) =
      _$ConditionCheck;

  const ConditionCheck._();

  static const List<_i5.SmithySerializer<ConditionCheck>> serializers = [
    ConditionCheckAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConditionCheckBuilder b) {}

  /// The primary key of the item to be checked. Each element consists of an attribute name and a value for that attribute.
  _i4.BuiltMap<String, _i2.AttributeValue> get key;

  /// Name of the table for the check item request.
  String get tableName;

  /// A condition that must be satisfied in order for a conditional update to succeed. For more information, see [Condition expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html) in the _Amazon DynamoDB Developer Guide_.
  String get conditionExpression;

  /// One or more substitution tokens for attribute names in an expression. For more information, see [Expression attribute names](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ExpressionAttributeNames.html) in the _Amazon DynamoDB Developer Guide_.
  _i4.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression. For more information, see [Condition expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html) in the _Amazon DynamoDB Developer Guide_.
  _i4.BuiltMap<String, _i2.AttributeValue>? get expressionAttributeValues;

  /// Use `ReturnValuesOnConditionCheckFailure` to get the item attributes if the `ConditionCheck` condition fails. For `ReturnValuesOnConditionCheckFailure`, the valid values are: NONE and ALL_OLD.
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;
  @override
  List<Object?> get props => [
        key,
        tableName,
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        returnValuesOnConditionCheckFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConditionCheck')
      ..add(
        'key',
        key,
      )
      ..add(
        'tableName',
        tableName,
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

class ConditionCheckAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ConditionCheck> {
  const ConditionCheckAwsJson10Serializer() : super('ConditionCheck');

  @override
  Iterable<Type> get types => const [
        ConditionCheck,
        _$ConditionCheck,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ConditionCheck deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConditionCheckBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Key':
          result.key.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i4.BuiltMap<String, _i2.AttributeValue>));
        case 'TableName':
          result.tableName = (serializers.deserialize(
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
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'ExpressionAttributeValues':
          result.expressionAttributeValues.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i4.BuiltMap<String, _i2.AttributeValue>));
        case 'ReturnValuesOnConditionCheckFailure':
          result.returnValuesOnConditionCheckFailure = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.ReturnValuesOnConditionCheckFailure),
          ) as _i3.ReturnValuesOnConditionCheckFailure);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConditionCheck object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConditionCheck(
      :key,
      :tableName,
      :conditionExpression,
      :expressionAttributeNames,
      :expressionAttributeValues,
      :returnValuesOnConditionCheckFailure
    ) = object;
    result$.addAll([
      'Key',
      serializers.serialize(
        key,
        specifiedType: const FullType(
          _i4.BuiltMap,
          [
            FullType(String),
            FullType(_i2.AttributeValue),
          ],
        ),
      ),
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'ConditionExpression',
      serializers.serialize(
        conditionExpression,
        specifiedType: const FullType(String),
      ),
    ]);
    if (expressionAttributeNames != null) {
      result$
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          expressionAttributeNames,
          specifiedType: const FullType(
            _i4.BuiltMap,
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
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
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
              const FullType(_i3.ReturnValuesOnConditionCheckFailure),
        ));
    }
    return result$;
  }
}
