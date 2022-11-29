// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.get; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'get.g.dart';

/// Specifies an item and related attribute values to retrieve in a `TransactGetItem` object.
abstract class Get
    with _i1.AWSEquatable<Get>
    implements Built<Get, GetBuilder> {
  /// Specifies an item and related attribute values to retrieve in a `TransactGetItem` object.
  factory Get({
    Map<String, String>? expressionAttributeNames,
    required Map<String, _i2.AttributeValue> key,
    String? projectionExpression,
    required String tableName,
  }) {
    return _$Get._(
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i3.BuiltMap(expressionAttributeNames),
      key: _i3.BuiltMap(key),
      projectionExpression: projectionExpression,
      tableName: tableName,
    );
  }

  /// Specifies an item and related attribute values to retrieve in a `TransactGetItem` object.
  factory Get.build([void Function(GetBuilder) updates]) = _$Get;

  const Get._();

  static const List<_i4.SmithySerializer> serializers = [
    GetAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBuilder b) {}

  /// One or more substitution tokens for attribute names in the ProjectionExpression parameter.
  _i3.BuiltMap<String, String>? get expressionAttributeNames;

  /// A map of attribute names to `AttributeValue` objects that specifies the primary key of the item to retrieve.
  _i3.BuiltMap<String, _i2.AttributeValue> get key;

  /// A string that identifies one or more attributes of the specified item to retrieve from the table. The attributes in the expression must be separated by commas. If no attribute names are specified, then all attributes of the specified item are returned. If any of the requested attributes are not found, they do not appear in the result.
  String? get projectionExpression;

  /// The name of the table from which to retrieve the specified item.
  String get tableName;
  @override
  List<Object?> get props => [
        expressionAttributeNames,
        key,
        projectionExpression,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Get');
    helper.add(
      'expressionAttributeNames',
      expressionAttributeNames,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'projectionExpression',
      projectionExpression,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class GetAwsJson10Serializer extends _i4.StructuredSmithySerializer<Get> {
  const GetAwsJson10Serializer() : super('Get');

  @override
  Iterable<Type> get types => const [
        Get,
        _$Get,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Get deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExpressionAttributeNames':
          if (value != null) {
            result.expressionAttributeNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String>));
          }
          break;
        case 'Key':
          result.key.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.AttributeValue>));
          break;
        case 'ProjectionExpression':
          if (value != null) {
            result.projectionExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Get);
    final result = <Object?>[
      'Key',
      serializers.serialize(
        payload.key,
        specifiedType: const FullType(
          _i3.BuiltMap,
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
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.projectionExpression != null) {
      result
        ..add('ProjectionExpression')
        ..add(serializers.serialize(
          payload.projectionExpression!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
