// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart'
    as _i3;

part 'update.g.dart';

/// Represents a request to perform an `UpdateItem` operation.
abstract class Update
    with _i1.AWSEquatable<Update>
    implements Built<Update, UpdateBuilder> {
  /// Represents a request to perform an `UpdateItem` operation.
  factory Update({
    String? conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i2.AttributeValue>? expressionAttributeValues,
    required Map<String, _i2.AttributeValue> key,
    _i3.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
    required String tableName,
    required String updateExpression,
  }) {
    return _$Update._(
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
      updateExpression: updateExpression,
    );
  }

  /// Represents a request to perform an `UpdateItem` operation.
  factory Update.build([void Function(UpdateBuilder) updates]) = _$Update;

  const Update._();

  static const List<_i5.SmithySerializer> serializers = [
    UpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateBuilder b) {}

  /// A condition that must be satisfied in order for a conditional update to succeed.
  String? get conditionExpression;

  /// One or more substitution tokens for attribute names in an expression.
  _i4.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  _i4.BuiltMap<String, _i2.AttributeValue>? get expressionAttributeValues;

  /// The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.
  _i4.BuiltMap<String, _i2.AttributeValue> get key;

  /// Use `ReturnValuesOnConditionCheckFailure` to get the item attributes if the `Update` condition fails. For `ReturnValuesOnConditionCheckFailure`, the valid values are: NONE, ALL\_OLD, UPDATED\_OLD, ALL\_NEW, UPDATED\_NEW.
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;

  /// Name of the table for the `UpdateItem` request.
  String get tableName;

  /// An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.
  String get updateExpression;
  @override
  List<Object?> get props => [
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        key,
        returnValuesOnConditionCheckFailure,
        tableName,
        updateExpression,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Update');
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
    helper.add(
      'updateExpression',
      updateExpression,
    );
    return helper.toString();
  }
}

class UpdateAwsJson10Serializer extends _i5.StructuredSmithySerializer<Update> {
  const UpdateAwsJson10Serializer() : super('Update');

  @override
  Iterable<Type> get types => const [
        Update,
        _$Update,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Update deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConditionExpression':
          if (value != null) {
            result.conditionExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
        case 'UpdateExpression':
          result.updateExpression = (serializers.deserialize(
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
    final payload = (object as Update);
    final result = <Object?>[
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
      'UpdateExpression',
      serializers.serialize(
        payload.updateExpression,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.conditionExpression != null) {
      result
        ..add('ConditionExpression')
        ..add(serializers.serialize(
          payload.conditionExpression!,
          specifiedType: const FullType(String),
        ));
    }
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
