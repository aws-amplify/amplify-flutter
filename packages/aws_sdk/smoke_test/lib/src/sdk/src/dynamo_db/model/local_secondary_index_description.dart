// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.local_secondary_index_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart' as _i3;

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
    String? indexName,
    List<_i2.KeySchemaElement>? keySchema,
    _i3.Projection? projection,
    _i4.Int64? indexSizeBytes,
    _i4.Int64? itemCount,
    String? indexArn,
  }) {
    return _$LocalSecondaryIndexDescription._(
      indexName: indexName,
      keySchema: keySchema == null ? null : _i5.BuiltList(keySchema),
      projection: projection,
      indexSizeBytes: indexSizeBytes,
      itemCount: itemCount,
      indexArn: indexArn,
    );
  }

  /// Represents the properties of a local secondary index.
  factory LocalSecondaryIndexDescription.build(
          [void Function(LocalSecondaryIndexDescriptionBuilder) updates]) =
      _$LocalSecondaryIndexDescription;

  const LocalSecondaryIndexDescription._();

  static const List<_i6.SmithySerializer<LocalSecondaryIndexDescription>>
      serializers = [LocalSecondaryIndexDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalSecondaryIndexDescriptionBuilder b) {}

  /// Represents the name of the local secondary index.
  String? get indexName;

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
  _i5.BuiltList<_i2.KeySchemaElement>? get keySchema;

  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  _i3.Projection? get projection;

  /// The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i4.Int64? get indexSizeBytes;

  /// The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i4.Int64? get itemCount;

  /// The Amazon Resource Name (ARN) that uniquely identifies the index.
  String? get indexArn;
  @override
  List<Object?> get props => [
        indexName,
        keySchema,
        projection,
        indexSizeBytes,
        itemCount,
        indexArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalSecondaryIndexDescription')
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
      )
      ..add(
        'indexSizeBytes',
        indexSizeBytes,
      )
      ..add(
        'itemCount',
        itemCount,
      )
      ..add(
        'indexArn',
        indexArn,
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
              _i5.BuiltList,
              [FullType(_i2.KeySchemaElement)],
            ),
          ) as _i5.BuiltList<_i2.KeySchemaElement>));
        case 'Projection':
          result.projection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Projection),
          ) as _i3.Projection));
        case 'IndexSizeBytes':
          result.indexSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'ItemCount':
          result.itemCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'IndexArn':
          result.indexArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalSecondaryIndexDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LocalSecondaryIndexDescription(
      :indexName,
      :keySchema,
      :projection,
      :indexSizeBytes,
      :itemCount,
      :indexArn
    ) = object;
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (keySchema != null) {
      result$
        ..add('KeySchema')
        ..add(serializers.serialize(
          keySchema,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i2.KeySchemaElement)],
          ),
        ));
    }
    if (projection != null) {
      result$
        ..add('Projection')
        ..add(serializers.serialize(
          projection,
          specifiedType: const FullType(_i3.Projection),
        ));
    }
    if (indexSizeBytes != null) {
      result$
        ..add('IndexSizeBytes')
        ..add(serializers.serialize(
          indexSizeBytes,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (itemCount != null) {
      result$
        ..add('ItemCount')
        ..add(serializers.serialize(
          itemCount,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (indexArn != null) {
      result$
        ..add('IndexArn')
        ..add(serializers.serialize(
          indexArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
