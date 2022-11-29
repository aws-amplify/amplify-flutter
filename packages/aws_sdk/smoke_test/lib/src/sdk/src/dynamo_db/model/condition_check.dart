// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    required String conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i2.AttributeValue>? expressionAttributeValues,
    required Map<String, _i2.AttributeValue> key,
    _i3.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
    required String tableName,
  }) {
    return _$ConditionCheck._(
      conditionExpression: conditionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i4.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i4.BuiltMap(expressionAttributeValues),
      key: _i4.BuiltMap(key),
      returnValuesOnConditionCheckFailure: returnValuesOnConditionCheckFailure,
      tableName: tableName,
    );
  }

  /// Represents a request to perform a check that an item exists or to check the condition of specific attributes of the item.
  factory ConditionCheck.build([void Function(ConditionCheckBuilder) updates]) =
      _$ConditionCheck;

  const ConditionCheck._();

  static const List<_i5.SmithySerializer> serializers = [
    ConditionCheckAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConditionCheckBuilder b) {}

  /// A condition that must be satisfied in order for a conditional update to succeed.
  String get conditionExpression;

  /// One or more substitution tokens for attribute names in an expression.
  _i4.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  _i4.BuiltMap<String, _i2.AttributeValue>? get expressionAttributeValues;

  /// The primary key of the item to be checked. Each element consists of an attribute name and a value for that attribute.
  _i4.BuiltMap<String, _i2.AttributeValue> get key;

  /// Use `ReturnValuesOnConditionCheckFailure` to get the item attributes if the `ConditionCheck` condition fails. For `ReturnValuesOnConditionCheckFailure`, the valid values are: NONE and ALL_OLD.
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;

  /// Name of the table for the check item request.
  String get tableName;
  @override
  List<Object?> get props => [
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        key,
        returnValuesOnConditionCheckFailure,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConditionCheck');
    helper.add(
      'conditionExpression',
      conditionExpression,
    );
    helper.add(
      'expressionAttributeNames',
      expressionAttributeNames,
    );
    helper.add(
      'expressionAttributeValues',
      expressionAttributeValues,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'returnValuesOnConditionCheckFailure',
      returnValuesOnConditionCheckFailure,
    );
    helper.add(
      'tableName',
      tableName,
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
      switch (key) {
        case 'ConditionExpression':
          result.conditionExpression = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ExpressionAttributeNames':
          if (value != null) {
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
          }
          break;
        case 'ExpressionAttributeValues':
          if (value != null) {
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
          }
          break;
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
          break;
        case 'ReturnValuesOnConditionCheckFailure':
          if (value != null) {
            result.returnValuesOnConditionCheckFailure =
                (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.ReturnValuesOnConditionCheckFailure),
            ) as _i3.ReturnValuesOnConditionCheckFailure);
          }
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ConditionCheck);
    final result = <Object?>[
      'ConditionExpression',
      serializers.serialize(
        payload.conditionExpression,
        specifiedType: const FullType(String),
      ),
      'Key',
      serializers.serialize(
        payload.key,
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
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.expressionAttributeNames != null) {
      result
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          payload.expressionAttributeNames!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.expressionAttributeValues != null) {
      result
        ..add('ExpressionAttributeValues')
        ..add(serializers.serialize(
          payload.expressionAttributeValues!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.returnValuesOnConditionCheckFailure != null) {
      result
        ..add('ReturnValuesOnConditionCheckFailure')
        ..add(serializers.serialize(
          payload.returnValuesOnConditionCheckFailure!,
          specifiedType:
              const FullType(_i3.ReturnValuesOnConditionCheckFailure),
        ));
    }
    return result;
  }
}
