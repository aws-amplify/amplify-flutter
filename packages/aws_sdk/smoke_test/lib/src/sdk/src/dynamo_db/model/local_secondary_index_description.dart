// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.local_secondary_index_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart' as _i4;

part 'local_secondary_index_description.g.dart';

/// Represents the properties of a local secondary index.
abstract class LocalSecondaryIndexDescription
    with
        _i1.AWSEquatable<LocalSecondaryIndexDescription>
    implements
        Built<LocalSecondaryIndexDescription,
            LocalSecondaryIndexDescriptionBuilder> {
  /// Represents the properties of a local secondary index.
  factory LocalSecondaryIndexDescription({
    String? indexArn,
    String? indexName,
    _i2.Int64? indexSizeBytes,
    _i2.Int64? itemCount,
    List<_i3.KeySchemaElement>? keySchema,
    _i4.Projection? projection,
  }) {
    return _$LocalSecondaryIndexDescription._(
      indexArn: indexArn,
      indexName: indexName,
      indexSizeBytes: indexSizeBytes,
      itemCount: itemCount,
      keySchema: keySchema == null ? null : _i5.BuiltList(keySchema),
      projection: projection,
    );
  }

  /// Represents the properties of a local secondary index.
  factory LocalSecondaryIndexDescription.build(
          [void Function(LocalSecondaryIndexDescriptionBuilder) updates]) =
      _$LocalSecondaryIndexDescription;

  const LocalSecondaryIndexDescription._();

  static const List<_i6.SmithySerializer> serializers = [
    LocalSecondaryIndexDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalSecondaryIndexDescriptionBuilder b) {}

  /// The Amazon Resource Name (ARN) that uniquely identifies the index.
  String? get indexArn;

  /// Represents the name of the local secondary index.
  String? get indexName;

  /// The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i2.Int64? get indexSizeBytes;

  /// The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i2.Int64? get itemCount;

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
  _i5.BuiltList<_i3.KeySchemaElement>? get keySchema;

  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  _i4.Projection? get projection;
  @override
  List<Object?> get props => [
        indexArn,
        indexName,
        indexSizeBytes,
        itemCount,
        keySchema,
        projection,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LocalSecondaryIndexDescription');
    helper.add(
      'indexArn',
      indexArn,
    );
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'indexSizeBytes',
      indexSizeBytes,
    );
    helper.add(
      'itemCount',
      itemCount,
    );
    helper.add(
      'keySchema',
      keySchema,
    );
    helper.add(
      'projection',
      projection,
    );
    return helper.toString();
  }
}

class LocalSecondaryIndexDescriptionAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<LocalSecondaryIndexDescription> {
  const LocalSecondaryIndexDescriptionAwsJson10Serializer()
      : super('LocalSecondaryIndexDescription');

  @override
  Iterable<Type> get types => const [
        LocalSecondaryIndexDescription,
        _$LocalSecondaryIndexDescription,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  LocalSecondaryIndexDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalSecondaryIndexDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexArn':
          if (value != null) {
            result.indexArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IndexSizeBytes':
          if (value != null) {
            result.indexSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'ItemCount':
          if (value != null) {
            result.itemCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'KeySchema':
          if (value != null) {
            result.keySchema.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.KeySchemaElement)],
              ),
            ) as _i5.BuiltList<_i3.KeySchemaElement>));
          }
          break;
        case 'Projection':
          if (value != null) {
            result.projection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Projection),
            ) as _i4.Projection));
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
    final payload = (object as LocalSecondaryIndexDescription);
    final result = <Object?>[];
    if (payload.indexArn != null) {
      result
        ..add('IndexArn')
        ..add(serializers.serialize(
          payload.indexArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.indexSizeBytes != null) {
      result
        ..add('IndexSizeBytes')
        ..add(serializers.serialize(
          payload.indexSizeBytes!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.itemCount != null) {
      result
        ..add('ItemCount')
        ..add(serializers.serialize(
          payload.itemCount!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.keySchema != null) {
      result
        ..add('KeySchema')
        ..add(serializers.serialize(
          payload.keySchema!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.KeySchemaElement)],
          ),
        ));
    }
    if (payload.projection != null) {
      result
        ..add('Projection')
        ..add(serializers.serialize(
          payload.projection!,
          specifiedType: const FullType(_i4.Projection),
        ));
    }
    return result;
  }
}
