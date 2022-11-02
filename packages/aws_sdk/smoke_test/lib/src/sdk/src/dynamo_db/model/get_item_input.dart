// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.get_item_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;

part 'get_item_input.g.dart';

/// Represents the input of a `GetItem` operation.
abstract class GetItemInput
    with _i1.HttpInput<GetItemInput>, _i2.AWSEquatable<GetItemInput>
    implements Built<GetItemInput, GetItemInputBuilder> {
  /// Represents the input of a `GetItem` operation.
  factory GetItemInput({
    List<String>? attributesToGet,
    bool? consistentRead,
    Map<String, String>? expressionAttributeNames,
    required Map<String, _i3.AttributeValue> key,
    String? projectionExpression,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
    required String tableName,
  }) {
    return _$GetItemInput._(
      attributesToGet:
          attributesToGet == null ? null : _i5.BuiltList(attributesToGet),
      consistentRead: consistentRead,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i5.BuiltMap(expressionAttributeNames),
      key: _i5.BuiltMap(key),
      projectionExpression: projectionExpression,
      returnConsumedCapacity: returnConsumedCapacity,
      tableName: tableName,
    );
  }

  /// Represents the input of a `GetItem` operation.
  factory GetItemInput.build([void Function(GetItemInputBuilder) updates]) =
      _$GetItemInput;

  const GetItemInput._();

  factory GetItemInput.fromRequest(
    GetItemInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetItemInputBuilder b) {}

  /// This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.BuiltList<String>? get attributesToGet;

  /// Determines the read consistency model: If set to `true`, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.
  bool? get consistentRead;

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
  _i5.BuiltMap<String, String>? get expressionAttributeNames;

  /// A map of attribute names to `AttributeValue` objects, representing the primary key of the item to retrieve.
  ///
  /// For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.
  _i5.BuiltMap<String, _i3.AttributeValue> get key;

  /// A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  ///
  /// If no attribute names are specified, then all attributes are returned. If any of the requested attributes are not found, they do not appear in the result.
  ///
  /// For more information, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  String? get projectionExpression;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// The name of the table containing the requested item.
  String get tableName;
  @override
  GetItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        attributesToGet,
        consistentRead,
        expressionAttributeNames,
        key,
        projectionExpression,
        returnConsumedCapacity,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetItemInput');
    helper.add(
      'attributesToGet',
      attributesToGet,
    );
    helper.add(
      'consistentRead',
      consistentRead,
    );
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
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class GetItemInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GetItemInput> {
  const GetItemInputAwsJson10Serializer() : super('GetItemInput');

  @override
  Iterable<Type> get types => const [
        GetItemInput,
        _$GetItemInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GetItemInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetItemInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributesToGet':
          if (value != null) {
            result.attributesToGet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'ConsistentRead':
          if (value != null) {
            result.consistentRead = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ExpressionAttributeNames':
          if (value != null) {
            result.expressionAttributeNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i5.BuiltMap<String, String>));
          }
          break;
        case 'Key':
          result.key.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(String),
                FullType(_i3.AttributeValue),
              ],
            ),
          ) as _i5.BuiltMap<String, _i3.AttributeValue>));
          break;
        case 'ProjectionExpression':
          if (value != null) {
            result.projectionExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReturnConsumedCapacity),
            ) as _i4.ReturnConsumedCapacity);
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
    final payload = (object as GetItemInput);
    final result = <Object?>[
      'Key',
      serializers.serialize(
        payload.key,
        specifiedType: const FullType(
          _i5.BuiltMap,
          [
            FullType(String),
            FullType(_i3.AttributeValue),
          ],
        ),
      ),
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.attributesToGet != null) {
      result
        ..add('AttributesToGet')
        ..add(serializers.serialize(
          payload.attributesToGet!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.consistentRead != null) {
      result
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          payload.consistentRead!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.expressionAttributeNames != null) {
      result
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          payload.expressionAttributeNames!,
          specifiedType: const FullType(
            _i5.BuiltMap,
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
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i4.ReturnConsumedCapacity),
        ));
    }
    return result;
  }
}
