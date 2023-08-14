// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.local_secondary_index; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart';

part 'local_secondary_index.g.dart';

/// Represents the properties of a local secondary index.
abstract class LocalSecondaryIndex
    with _i1.AWSEquatable<LocalSecondaryIndex>
    implements Built<LocalSecondaryIndex, LocalSecondaryIndexBuilder> {
  /// Represents the properties of a local secondary index.
  factory LocalSecondaryIndex({
    required String indexName,
    required List<KeySchemaElement> keySchema,
    required Projection projection,
  }) {
    return _$LocalSecondaryIndex._(
      indexName: indexName,
      keySchema: _i2.BuiltList(keySchema),
      projection: projection,
    );
  }

  /// Represents the properties of a local secondary index.
  factory LocalSecondaryIndex.build(
          [void Function(LocalSecondaryIndexBuilder) updates]) =
      _$LocalSecondaryIndex;

  const LocalSecondaryIndex._();

  static const List<_i3.SmithySerializer<LocalSecondaryIndex>> serializers = [
    LocalSecondaryIndexAwsJson10Serializer()
  ];

  /// The name of the local secondary index. The name must be unique among all other indexes on this table.
  String get indexName;

  /// The complete key schema for the local secondary index, consisting of one or more pairs of attribute names and key types:
  ///
  /// *   `HASH` \- partition key
  ///
  /// *   `RANGE` \- sort key
  ///
  ///
  /// The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  /// The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  _i2.BuiltList<KeySchemaElement> get keySchema;

  /// Represents attributes that are copied (projected) from the table into the local secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  Projection get projection;
  @override
  List<Object?> get props => [
        indexName,
        keySchema,
        projection,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalSecondaryIndex')
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'keySchema',
        keySchema,
      )
      ..add(
        'projection',
        projection,
      );
    return helper.toString();
  }
}

class LocalSecondaryIndexAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<LocalSecondaryIndex> {
  const LocalSecondaryIndexAwsJson10Serializer() : super('LocalSecondaryIndex');

  @override
  Iterable<Type> get types => const [
        LocalSecondaryIndex,
        _$LocalSecondaryIndex,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  LocalSecondaryIndex deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalSecondaryIndexBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(KeySchemaElement)],
            ),
          ) as _i2.BuiltList<KeySchemaElement>));
        case 'Projection':
          result.projection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Projection),
          ) as Projection));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalSecondaryIndex object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LocalSecondaryIndex(:indexName, :keySchema, :projection) = object;
    result$.addAll([
      'IndexName',
      serializers.serialize(
        indexName,
        specifiedType: const FullType(String),
      ),
      'KeySchema',
      serializers.serialize(
        keySchema,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(KeySchemaElement)],
        ),
      ),
      'Projection',
      serializers.serialize(
        projection,
        specifiedType: const FullType(Projection),
      ),
    ]);
    return result$;
  }
}
