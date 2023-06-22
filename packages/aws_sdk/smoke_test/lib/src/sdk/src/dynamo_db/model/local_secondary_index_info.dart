// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.local_secondary_index_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart' as _i3;

part 'local_secondary_index_info.g.dart';

/// Represents the properties of a local secondary index for the table when the backup was created.
abstract class LocalSecondaryIndexInfo
    with _i1.AWSEquatable<LocalSecondaryIndexInfo>
    implements Built<LocalSecondaryIndexInfo, LocalSecondaryIndexInfoBuilder> {
  /// Represents the properties of a local secondary index for the table when the backup was created.
  factory LocalSecondaryIndexInfo({
    String? indexName,
    List<_i2.KeySchemaElement>? keySchema,
    _i3.Projection? projection,
  }) {
    return _$LocalSecondaryIndexInfo._(
      indexName: indexName,
      keySchema: keySchema == null ? null : _i4.BuiltList(keySchema),
      projection: projection,
    );
  }

  /// Represents the properties of a local secondary index for the table when the backup was created.
  factory LocalSecondaryIndexInfo.build(
          [void Function(LocalSecondaryIndexInfoBuilder) updates]) =
      _$LocalSecondaryIndexInfo;

  const LocalSecondaryIndexInfo._();

  static const List<_i5.SmithySerializer<LocalSecondaryIndexInfo>> serializers =
      [LocalSecondaryIndexInfoAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalSecondaryIndexInfoBuilder b) {}

  /// Represents the name of the local secondary index.
  String? get indexName;

  /// The complete key schema for a local secondary index, which consists of one or more pairs of attribute names and key types:
  ///
  /// *   `HASH` \- partition key
  ///
  /// *   `RANGE` \- sort key
  ///
  ///
  /// The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  /// The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  _i4.BuiltList<_i2.KeySchemaElement>? get keySchema;

  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  _i3.Projection? get projection;
  @override
  List<Object?> get props => [
        indexName,
        keySchema,
        projection,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalSecondaryIndexInfo')
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

class LocalSecondaryIndexInfoAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<LocalSecondaryIndexInfo> {
  const LocalSecondaryIndexInfoAwsJson10Serializer()
      : super('LocalSecondaryIndexInfo');

  @override
  Iterable<Type> get types => const [
        LocalSecondaryIndexInfo,
        _$LocalSecondaryIndexInfo,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  LocalSecondaryIndexInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalSecondaryIndexInfoBuilder();
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
              _i4.BuiltList,
              [FullType(_i2.KeySchemaElement)],
            ),
          ) as _i4.BuiltList<_i2.KeySchemaElement>));
        case 'Projection':
          result.projection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Projection),
          ) as _i3.Projection));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalSecondaryIndexInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LocalSecondaryIndexInfo(:indexName, :keySchema, :projection) = object;
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
            _i4.BuiltList,
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
    return result$;
  }
}
