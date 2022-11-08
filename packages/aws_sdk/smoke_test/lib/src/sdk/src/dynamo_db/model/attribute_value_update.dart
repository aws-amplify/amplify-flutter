// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.attribute_value_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;

part 'attribute_value_update.g.dart';

/// For the `UpdateItem` operation, represents the attributes to be modified, the action to perform on each, and the new value for each.
///
/// You cannot use `UpdateItem` to update any primary key attributes. Instead, you will need to delete the item, and then use `PutItem` to create a new item with new attributes.
///
/// Attribute values cannot be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests with empty values will be rejected with a `ValidationException` exception.
abstract class AttributeValueUpdate
    with _i1.AWSEquatable<AttributeValueUpdate>
    implements Built<AttributeValueUpdate, AttributeValueUpdateBuilder> {
  /// For the `UpdateItem` operation, represents the attributes to be modified, the action to perform on each, and the new value for each.
  ///
  /// You cannot use `UpdateItem` to update any primary key attributes. Instead, you will need to delete the item, and then use `PutItem` to create a new item with new attributes.
  ///
  /// Attribute values cannot be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests with empty values will be rejected with a `ValidationException` exception.
  factory AttributeValueUpdate({
    _i2.AttributeAction? action,
    _i3.AttributeValue? value,
  }) {
    return _$AttributeValueUpdate._(
      action: action,
      value: value,
    );
  }

  /// For the `UpdateItem` operation, represents the attributes to be modified, the action to perform on each, and the new value for each.
  ///
  /// You cannot use `UpdateItem` to update any primary key attributes. Instead, you will need to delete the item, and then use `PutItem` to create a new item with new attributes.
  ///
  /// Attribute values cannot be null; string and binary type attributes must have lengths greater than zero; and set type attributes must not be empty. Requests with empty values will be rejected with a `ValidationException` exception.
  factory AttributeValueUpdate.build(
          [void Function(AttributeValueUpdateBuilder) updates]) =
      _$AttributeValueUpdate;

  const AttributeValueUpdate._();

  static const List<_i4.SmithySerializer> serializers = [
    AttributeValueUpdateAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeValueUpdateBuilder b) {}

  /// Specifies how to perform the update. Valid values are `PUT` (default), `DELETE`, and `ADD`. The behavior depends on whether the specified primary key already exists in the table.
  ///
  /// **If an item with the specified _Key_ is found in the table:**
  ///
  /// *   `PUT` \- Adds the specified attribute to the item. If the attribute already exists, it is replaced by the new value.
  ///
  /// *   `DELETE` \- If no value is specified, the attribute and its value are removed from the item. The data type of the specified value must match the existing value's data type.
  ///
  ///     If a _set_ of values is specified, then those values are subtracted from the old set. For example, if the attribute value was the set `\[a,b,c\]` and the `DELETE` action specified `\[a,c\]`, then the final attribute value would be `\[b\]`. Specifying an empty set is an error.
  ///
  /// *   `ADD` \- If the attribute does not already exist, then the attribute and its values are added to the item. If the attribute does exist, then the behavior of `ADD` depends on the data type of the attribute:
  ///
  ///     *   If the existing attribute is a number, and if `Value` is also a number, then the `Value` is mathematically added to the existing attribute. If `Value` is a negative number, then it is subtracted from the existing attribute.
  ///
  ///         If you use `ADD` to increment or decrement a number value for an item that doesn't exist before the update, DynamoDB uses 0 as the initial value.
  ///
  ///         In addition, if you use `ADD` to update an existing item, and intend to increment or decrement an attribute value which does not yet exist, DynamoDB uses `0` as the initial value. For example, suppose that the item you want to update does not yet have an attribute named _itemcount_, but you decide to `ADD` the number `3` to this attribute anyway, even though it currently does not exist. DynamoDB will create the _itemcount_ attribute, set its initial value to `0`, and finally add `3` to it. The result will be a new _itemcount_ attribute in the item, with a value of `3`.
  ///
  ///     *   If the existing data type is a set, and if the `Value` is also a set, then the `Value` is added to the existing set. (This is a _set_ operation, not mathematical addition.) For example, if the attribute value was the set `\[1,2\]`, and the `ADD` action specified `\[3\]`, then the final attribute value would be `\[1,2,3\]`. An error occurs if an Add action is specified for a set attribute and the attribute type specified does not match the existing set type.
  ///
  ///         Both sets must have the same primitive data type. For example, if the existing data type is a set of strings, the `Value` must also be a set of strings. The same holds true for number sets and binary sets.
  ///
  ///
  ///     This action is only valid for an existing attribute whose data type is number or is a set. Do not use `ADD` for any other data types.
  ///
  ///
  /// **If no item with the specified _Key_ is found:**
  ///
  /// *   `PUT` \- DynamoDB creates a new item with the specified primary key, and then adds the attribute.
  ///
  /// *   `DELETE` \- Nothing happens; there is no attribute to delete.
  ///
  /// *   `ADD` \- DynamoDB creates a new item with the supplied primary key and number (or set) for the attribute value. The only data types allowed are number, number set, string set or binary set.
  _i2.AttributeAction? get action;

  /// Represents the data for an attribute.
  ///
  /// Each attribute value is described as a name-value pair. The name is the data type, and the value is the data itself.
  ///
  /// For more information, see [Data Types](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes) in the _Amazon DynamoDB Developer Guide_.
  _i3.AttributeValue? get value;
  @override
  List<Object?> get props => [
        action,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeValueUpdate');
    helper.add(
      'action',
      action,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class AttributeValueUpdateAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<AttributeValueUpdate> {
  const AttributeValueUpdateAwsJson10Serializer()
      : super('AttributeValueUpdate');

  @override
  Iterable<Type> get types => const [
        AttributeValueUpdate,
        _$AttributeValueUpdate,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  AttributeValueUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeValueUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Action':
          if (value != null) {
            result.action = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttributeAction),
            ) as _i2.AttributeAction);
          }
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeValue),
            ) as _i3.AttributeValue);
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
    final payload = (object as AttributeValueUpdate);
    final result = <Object?>[];
    if (payload.action != null) {
      result
        ..add('Action')
        ..add(serializers.serialize(
          payload.action!,
          specifiedType: const FullType(_i2.AttributeAction),
        ));
    }
    if (payload.value != null) {
      result
        ..add('Value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(_i3.AttributeValue),
        ));
    }
    return result;
  }
}
