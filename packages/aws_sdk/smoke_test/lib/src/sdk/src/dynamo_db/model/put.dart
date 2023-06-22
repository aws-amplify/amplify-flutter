// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.put; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart'
    as _i3;

part 'put.g.dart';

/// Represents a request to perform a `PutItem` operation.
abstract class Put
    with _i1.AWSEquatable<Put>
    implements Built<Put, PutBuilder> {
  /// Represents a request to perform a `PutItem` operation.
  factory Put({
    required Map<String, _i2.AttributeValue> item,
    required String tableName,
    String? conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i2.AttributeValue>? expressionAttributeValues,
    _i3.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
  }) {
    return _$Put._(
      item: _i4.BuiltMap(item),
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

  /// Represents a request to perform a `PutItem` operation.
  factory Put.build([void Function(PutBuilder) updates]) = _$Put;

  const Put._();

  static const List<_i5.SmithySerializer<Put>> serializers = [
    PutAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBuilder b) {}

  /// A map of attribute name to attribute values, representing the primary key of the item to be written by `PutItem`. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema. If any attributes are present in the item that are part of an index key schema for the table, their types must match the index key schema.
  _i4.BuiltMap<String, _i2.AttributeValue> get item;

  /// Name of the table in which to write the item.
  String get tableName;

  /// A condition that must be satisfied in order for a conditional update to succeed.
  String? get conditionExpression;

  /// One or more substitution tokens for attribute names in an expression.
  _i4.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  _i4.BuiltMap<String, _i2.AttributeValue>? get expressionAttributeValues;

  /// Use `ReturnValuesOnConditionCheckFailure` to get the item attributes if the `Put` condition fails. For `ReturnValuesOnConditionCheckFailure`, the valid values are: NONE and ALL_OLD.
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;
  @override
  List<Object?> get props => [
        item,
        tableName,
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        returnValuesOnConditionCheckFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Put')
      ..add(
        'item',
        item,
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

class PutAwsJson10Serializer extends _i5.StructuredSmithySerializer<Put> {
  const PutAwsJson10Serializer() : super('Put');

  @override
  Iterable<Type> get types => const [
        Put,
        _$Put,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Put deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Item':
          result.item.replace((serializers.deserialize(
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
    Put object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Put(
      :item,
      :tableName,
      :conditionExpression,
      :expressionAttributeNames,
      :expressionAttributeValues,
      :returnValuesOnConditionCheckFailure
    ) = object;
    result$.addAll([
      'Item',
      serializers.serialize(
        item,
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
    ]);
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
