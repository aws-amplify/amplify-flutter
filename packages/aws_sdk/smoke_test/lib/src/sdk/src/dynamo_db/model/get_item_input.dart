// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String tableName,
    required Map<String, _i3.AttributeValue> key,
    List<String>? attributesToGet,
    bool? consistentRead,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
    String? projectionExpression,
    Map<String, String>? expressionAttributeNames,
  }) {
    return _$GetItemInput._(
      tableName: tableName,
      key: _i5.BuiltMap(key),
      attributesToGet:
          attributesToGet == null ? null : _i5.BuiltList(attributesToGet),
      consistentRead: consistentRead,
      returnConsumedCapacity: returnConsumedCapacity,
      projectionExpression: projectionExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i5.BuiltMap(expressionAttributeNames),
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

  static const List<_i1.SmithySerializer<GetItemInput>> serializers = [
    GetItemInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetItemInputBuilder b) {}

  /// The name of the table containing the requested item.
  String get tableName;

  /// A map of attribute names to `AttributeValue` objects, representing the primary key of the item to retrieve.
  ///
  /// For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide values for both the partition key and the sort key.
  _i5.BuiltMap<String, _i3.AttributeValue> get key;

  /// This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.BuiltList<String>? get attributesToGet;

  /// Determines the read consistency model: If set to `true`, then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads.
  bool? get consistentRead;

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

  /// A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  ///
  /// If no attribute names are specified, then all attributes are returned. If any of the requested attributes are not found, they do not appear in the result.
  ///
  /// For more information, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
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
  /// For more information on expression attribute names, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.BuiltMap<String, String>? get expressionAttributeNames;
  @override
  GetItemInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        key,
        attributesToGet,
        consistentRead,
        returnConsumedCapacity,
        projectionExpression,
        expressionAttributeNames,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetItemInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'attributesToGet',
        attributesToGet,
      )
      ..add(
        'consistentRead',
        consistentRead,
      )
      ..add(
        'returnConsumedCapacity',
        returnConsumedCapacity,
      )
      ..add(
        'projectionExpression',
        projectionExpression,
      )
      ..add(
        'expressionAttributeNames',
        expressionAttributeNames,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'AttributesToGet':
          result.attributesToGet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
        case 'ConsistentRead':
          result.consistentRead = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ReturnConsumedCapacity),
          ) as _i4.ReturnConsumedCapacity);
        case 'ProjectionExpression':
          result.projectionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionAttributeNames':
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetItemInput(
      :tableName,
      :key,
      :attributesToGet,
      :consistentRead,
      :returnConsumedCapacity,
      :projectionExpression,
      :expressionAttributeNames
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'Key',
      serializers.serialize(
        key,
        specifiedType: const FullType(
          _i5.BuiltMap,
          [
            FullType(String),
            FullType(_i3.AttributeValue),
          ],
        ),
      ),
    ]);
    if (attributesToGet != null) {
      result$
        ..add('AttributesToGet')
        ..add(serializers.serialize(
          attributesToGet,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (consistentRead != null) {
      result$
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          consistentRead,
          specifiedType: const FullType(bool),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i4.ReturnConsumedCapacity),
        ));
    }
    if (projectionExpression != null) {
      result$
        ..add('ProjectionExpression')
        ..add(serializers.serialize(
          projectionExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (expressionAttributeNames != null) {
      result$
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          expressionAttributeNames,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
