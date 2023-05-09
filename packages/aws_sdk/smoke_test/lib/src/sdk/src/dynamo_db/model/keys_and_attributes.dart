// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.keys_and_attributes; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'keys_and_attributes.g.dart';

/// Represents a set of primary keys and, for each key, the attributes to retrieve from the table.
///
/// For each primary key, you must provide _all_ of the key attributes. For example, with a simple primary key, you only need to provide the partition key. For a composite primary key, you must provide _both_ the partition key and the sort key.
abstract class KeysAndAttributes
    with _i1.AWSEquatable<KeysAndAttributes>
    implements Built<KeysAndAttributes, KeysAndAttributesBuilder> {
  /// Represents a set of primary keys and, for each key, the attributes to retrieve from the table.
  ///
  /// For each primary key, you must provide _all_ of the key attributes. For example, with a simple primary key, you only need to provide the partition key. For a composite primary key, you must provide _both_ the partition key and the sort key.
  factory KeysAndAttributes({
    required List<Map<String, _i2.AttributeValue>> keys,
    List<String>? attributesToGet,
    bool? consistentRead,
    String? projectionExpression,
    Map<String, String>? expressionAttributeNames,
  }) {
    return _$KeysAndAttributes._(
      keys: _i3.BuiltList(keys.map((el) => _i3.BuiltMap(el))),
      attributesToGet:
          attributesToGet == null ? null : _i3.BuiltList(attributesToGet),
      consistentRead: consistentRead,
      projectionExpression: projectionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i3.BuiltMap(expressionAttributeNames),
    );
  }

  /// Represents a set of primary keys and, for each key, the attributes to retrieve from the table.
  ///
  /// For each primary key, you must provide _all_ of the key attributes. For example, with a simple primary key, you only need to provide the partition key. For a composite primary key, you must provide _both_ the partition key and the sort key.
  factory KeysAndAttributes.build(
      [void Function(KeysAndAttributesBuilder) updates]) = _$KeysAndAttributes;

  const KeysAndAttributes._();

  static const List<_i4.SmithySerializer> serializers = [
    KeysAndAttributesAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KeysAndAttributesBuilder b) {}

  /// The primary key attribute values that define the items and the attributes associated with the items.
  _i3.BuiltList<_i3.BuiltMap<String, _i2.AttributeValue>> get keys;

  /// This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [Legacy Conditional Parameters](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltList<String>? get attributesToGet;

  /// The consistency of a read operation. If set to `true`, then a strongly consistent read is used; otherwise, an eventually consistent read is used.
  bool? get consistentRead;

  /// A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the `ProjectionExpression` must be separated by commas.
  ///
  /// If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.
  ///
  /// For more information, see [Accessing Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  String? get projectionExpression;

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
  /// For more information on expression attribute names, see [Accessing Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltMap<String, String>? get expressionAttributeNames;
  @override
  List<Object?> get props => [
        keys,
        attributesToGet,
        consistentRead,
        projectionExpression,
        expressionAttributeNames,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KeysAndAttributes');
    helper.add(
      'keys',
      keys,
    );
    helper.add(
      'attributesToGet',
      attributesToGet,
    );
    helper.add(
      'consistentRead',
      consistentRead,
    );
    helper.add(
      'projectionExpression',
      projectionExpression,
    );
    helper.add(
      'expressionAttributeNames',
      expressionAttributeNames,
    );
    return helper.toString();
  }
}

class KeysAndAttributesAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<KeysAndAttributes> {
  const KeysAndAttributesAwsJson10Serializer() : super('KeysAndAttributes');

  @override
  Iterable<Type> get types => const [
        KeysAndAttributes,
        _$KeysAndAttributes,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  KeysAndAttributes deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeysAndAttributesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Keys':
          result.keys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [
                FullType(
                  _i3.BuiltMap,
                  [
                    FullType(String),
                    FullType(_i2.AttributeValue),
                  ],
                )
              ],
            ),
          ) as _i3.BuiltList<_i3.BuiltMap<String, _i2.AttributeValue>>));
        case 'AttributesToGet':
          result.attributesToGet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ConsistentRead':
          result.consistentRead = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ProjectionExpression':
          result.projectionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionAttributeNames':
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as KeysAndAttributes);
    final result = <Object?>[
      'Keys',
      serializers.serialize(
        payload.keys,
        specifiedType: const FullType(
          _i3.BuiltList,
          [
            FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AttributeValue),
              ],
            )
          ],
        ),
      ),
    ];
    final KeysAndAttributes(
      :attributesToGet,
      :consistentRead,
      :projectionExpression,
      :expressionAttributeNames
    ) = payload;
    if (attributesToGet != null) {
      result
        ..add('AttributesToGet')
        ..add(serializers.serialize(
          attributesToGet,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (consistentRead != null) {
      result
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          consistentRead,
          specifiedType: const FullType(bool),
        ));
    }
    if (projectionExpression != null) {
      result
        ..add('ProjectionExpression')
        ..add(serializers.serialize(
          projectionExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (expressionAttributeNames != null) {
      result
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          expressionAttributeNames,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
