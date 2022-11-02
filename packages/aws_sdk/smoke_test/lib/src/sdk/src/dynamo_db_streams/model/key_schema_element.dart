// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.key_schema_element; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_type.dart'
    as _i2;

part 'key_schema_element.g.dart';

/// Represents _a single element_ of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.
///
/// A `KeySchemaElement` represents exactly one attribute of the primary key. For example, a simple primary key would be represented by one `KeySchemaElement` (for the partition key). A composite primary key would require one `KeySchemaElement` for the partition key, and another `KeySchemaElement` for the sort key.
///
/// A `KeySchemaElement` must be a scalar, top-level attribute (not a nested attribute). The data type must be one of String, Number, or Binary. The attribute cannot be nested within a List or a Map.
abstract class KeySchemaElement
    with _i1.AWSEquatable<KeySchemaElement>
    implements Built<KeySchemaElement, KeySchemaElementBuilder> {
  /// Represents _a single element_ of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.
  ///
  /// A `KeySchemaElement` represents exactly one attribute of the primary key. For example, a simple primary key would be represented by one `KeySchemaElement` (for the partition key). A composite primary key would require one `KeySchemaElement` for the partition key, and another `KeySchemaElement` for the sort key.
  ///
  /// A `KeySchemaElement` must be a scalar, top-level attribute (not a nested attribute). The data type must be one of String, Number, or Binary. The attribute cannot be nested within a List or a Map.
  factory KeySchemaElement({
    required String attributeName,
    required _i2.KeyType keyType,
  }) {
    return _$KeySchemaElement._(
      attributeName: attributeName,
      keyType: keyType,
    );
  }

  /// Represents _a single element_ of a key schema. A key schema specifies the attributes that make up the primary key of a table, or the key attributes of an index.
  ///
  /// A `KeySchemaElement` represents exactly one attribute of the primary key. For example, a simple primary key would be represented by one `KeySchemaElement` (for the partition key). A composite primary key would require one `KeySchemaElement` for the partition key, and another `KeySchemaElement` for the sort key.
  ///
  /// A `KeySchemaElement` must be a scalar, top-level attribute (not a nested attribute). The data type must be one of String, Number, or Binary. The attribute cannot be nested within a List or a Map.
  factory KeySchemaElement.build(
      [void Function(KeySchemaElementBuilder) updates]) = _$KeySchemaElement;

  const KeySchemaElement._();

  static const List<_i3.SmithySerializer> serializers = [
    KeySchemaElementAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KeySchemaElementBuilder b) {}

  /// The name of a key attribute.
  String get attributeName;

  /// The role that this key attribute will assume:
  ///
  /// *   `HASH` \- partition key
  ///
  /// *   `RANGE` \- sort key
  ///
  ///
  /// The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  /// The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  _i2.KeyType get keyType;
  @override
  List<Object?> get props => [
        attributeName,
        keyType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KeySchemaElement');
    helper.add(
      'attributeName',
      attributeName,
    );
    helper.add(
      'keyType',
      keyType,
    );
    return helper.toString();
  }
}

class KeySchemaElementAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<KeySchemaElement> {
  const KeySchemaElementAwsJson10Serializer() : super('KeySchemaElement');

  @override
  Iterable<Type> get types => const [
        KeySchemaElement,
        _$KeySchemaElement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  KeySchemaElement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeySchemaElementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributeName':
          result.attributeName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'KeyType':
          result.keyType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.KeyType),
          ) as _i2.KeyType);
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
    final payload = (object as KeySchemaElement);
    final result = <Object?>[
      'AttributeName',
      serializers.serialize(
        payload.attributeName,
        specifiedType: const FullType(String),
      ),
      'KeyType',
      serializers.serialize(
        payload.keyType,
        specifiedType: const FullType(_i2.KeyType),
      ),
    ];
    return result;
  }
}
