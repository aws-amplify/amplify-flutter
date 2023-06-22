// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required Map<String, _i2.AttributeValue> key,
    required String updateExpression,
    required String tableName,
    String? conditionExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i2.AttributeValue>? expressionAttributeValues,
    _i3.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
  }) {
    return _$Update._(
      key: _i4.BuiltMap(key),
      updateExpression: updateExpression,
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

  /// Represents a request to perform an `UpdateItem` operation.
  factory Update.build([void Function(UpdateBuilder) updates]) = _$Update;

  const Update._();

  static const List<_i5.SmithySerializer<Update>> serializers = [
    UpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateBuilder b) {}

  /// The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.
  _i4.BuiltMap<String, _i2.AttributeValue> get key;

  /// An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.
  String get updateExpression;

  /// Name of the table for the `UpdateItem` request.
  String get tableName;

  /// A condition that must be satisfied in order for a conditional update to succeed.
  String? get conditionExpression;

  /// One or more substitution tokens for attribute names in an expression.
  _i4.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  _i4.BuiltMap<String, _i2.AttributeValue>? get expressionAttributeValues;

  /// Use `ReturnValuesOnConditionCheckFailure` to get the item attributes if the `Update` condition fails. For `ReturnValuesOnConditionCheckFailure`, the valid values are: NONE, ALL\_OLD, UPDATED\_OLD, ALL\_NEW, UPDATED\_NEW.
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;
  @override
  List<Object?> get props => [
        key,
        updateExpression,
        tableName,
        conditionExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        returnValuesOnConditionCheckFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Update')
      ..add(
        'key',
        key,
      )
      ..add(
        'updateExpression',
        updateExpression,
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
        case 'UpdateExpression':
          result.updateExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    Update object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Update(
      :key,
      :updateExpression,
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
      'UpdateExpression',
      serializers.serialize(
        updateExpression,
        specifiedType: const FullType(String),
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
