// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.global_secondary_index_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/index_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_description.dart'
    as _i5;

part 'global_secondary_index_description.g.dart';

/// Represents the properties of a global secondary index.
abstract class GlobalSecondaryIndexDescription
    with
        _i1.AWSEquatable<GlobalSecondaryIndexDescription>
    implements
        Built<GlobalSecondaryIndexDescription,
            GlobalSecondaryIndexDescriptionBuilder> {
  /// Represents the properties of a global secondary index.
  factory GlobalSecondaryIndexDescription({
    String? indexName,
    List<_i2.KeySchemaElement>? keySchema,
    _i3.Projection? projection,
    _i4.IndexStatus? indexStatus,
    bool? backfilling,
    _i5.ProvisionedThroughputDescription? provisionedThroughput,
    _i6.Int64? indexSizeBytes,
    _i6.Int64? itemCount,
    String? indexArn,
  }) {
    return _$GlobalSecondaryIndexDescription._(
      indexName: indexName,
      keySchema: keySchema == null ? null : _i7.BuiltList(keySchema),
      projection: projection,
      indexStatus: indexStatus,
      backfilling: backfilling,
      provisionedThroughput: provisionedThroughput,
      indexSizeBytes: indexSizeBytes,
      itemCount: itemCount,
      indexArn: indexArn,
    );
  }

  /// Represents the properties of a global secondary index.
  factory GlobalSecondaryIndexDescription.build(
          [void Function(GlobalSecondaryIndexDescriptionBuilder) updates]) =
      _$GlobalSecondaryIndexDescription;

  const GlobalSecondaryIndexDescription._();

  static const List<_i8.SmithySerializer<GlobalSecondaryIndexDescription>>
      serializers = [GlobalSecondaryIndexDescriptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalSecondaryIndexDescriptionBuilder b) {}

  /// The name of the global secondary index.
  String? get indexName;

  /// The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:
  ///
  /// *   `HASH` \- partition key
  ///
  /// *   `RANGE` \- sort key
  ///
  ///
  /// The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  /// The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  _i7.BuiltList<_i2.KeySchemaElement>? get keySchema;

  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  _i3.Projection? get projection;

  /// The current state of the global secondary index:
  ///
  /// *   `CREATING` \- The index is being created.
  ///
  /// *   `UPDATING` \- The index is being updated.
  ///
  /// *   `DELETING` \- The index is being deleted.
  ///
  /// *   `ACTIVE` \- The index is ready for use.
  _i4.IndexStatus? get indexStatus;

  /// Indicates whether the index is currently backfilling. _Backfilling_ is the process of reading items from the table and determining whether they can be added to the index. (Not all items will qualify: For example, a partition key cannot have any duplicate values.) If an item can be added to the index, DynamoDB will do so. After all items have been processed, the backfilling operation is complete and `Backfilling` is false.
  ///
  /// You can delete an index that is being created during the `Backfilling` phase when `IndexStatus` is set to CREATING and `Backfilling` is true. You can't delete the index that is being created when `IndexStatus` is set to CREATING and `Backfilling` is false.
  ///
  /// For indexes that were created during a `CreateTable` operation, the `Backfilling` attribute does not appear in the `DescribeTable` output.
  bool? get backfilling;

  /// Represents the provisioned throughput settings for the specified global secondary index.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.ProvisionedThroughputDescription? get provisionedThroughput;

  /// The total size of the specified index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i6.Int64? get indexSizeBytes;

  /// The number of items in the specified index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i6.Int64? get itemCount;

  /// The Amazon Resource Name (ARN) that uniquely identifies the index.
  String? get indexArn;
  @override
  List<Object?> get props => [
        indexName,
        keySchema,
        projection,
        indexStatus,
        backfilling,
        provisionedThroughput,
        indexSizeBytes,
        itemCount,
        indexArn,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GlobalSecondaryIndexDescription')
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
            'indexStatus',
            indexStatus,
          )
          ..add(
            'backfilling',
            backfilling,
          )
          ..add(
            'provisionedThroughput',
            provisionedThroughput,
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

class GlobalSecondaryIndexDescriptionAwsJson10Serializer
    extends _i8.StructuredSmithySerializer<GlobalSecondaryIndexDescription> {
  const GlobalSecondaryIndexDescriptionAwsJson10Serializer()
      : super('GlobalSecondaryIndexDescription');

  @override
  Iterable<Type> get types => const [
        GlobalSecondaryIndexDescription,
        _$GlobalSecondaryIndexDescription,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalSecondaryIndexDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalSecondaryIndexDescriptionBuilder();
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
              _i7.BuiltList,
              [FullType(_i2.KeySchemaElement)],
            ),
          ) as _i7.BuiltList<_i2.KeySchemaElement>));
        case 'Projection':
          result.projection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Projection),
          ) as _i3.Projection));
        case 'IndexStatus':
          result.indexStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.IndexStatus),
          ) as _i4.IndexStatus);
        case 'Backfilling':
          result.backfilling = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ProvisionedThroughputDescription),
          ) as _i5.ProvisionedThroughputDescription));
        case 'IndexSizeBytes':
          result.indexSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
        case 'ItemCount':
          result.itemCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
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
    GlobalSecondaryIndexDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalSecondaryIndexDescription(
      :indexName,
      :keySchema,
      :projection,
      :indexStatus,
      :backfilling,
      :provisionedThroughput,
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
            _i7.BuiltList,
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
    if (indexStatus != null) {
      result$
        ..add('IndexStatus')
        ..add(serializers.serialize(
          indexStatus,
          specifiedType: const FullType(_i4.IndexStatus),
        ));
    }
    if (backfilling != null) {
      result$
        ..add('Backfilling')
        ..add(serializers.serialize(
          backfilling,
          specifiedType: const FullType(bool),
        ));
    }
    if (provisionedThroughput != null) {
      result$
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          provisionedThroughput,
          specifiedType: const FullType(_i5.ProvisionedThroughputDescription),
        ));
    }
    if (indexSizeBytes != null) {
      result$
        ..add('IndexSizeBytes')
        ..add(serializers.serialize(
          indexSizeBytes,
          specifiedType: const FullType(_i6.Int64),
        ));
    }
    if (itemCount != null) {
      result$
        ..add('ItemCount')
        ..add(serializers.serialize(
          itemCount,
          specifiedType: const FullType(_i6.Int64),
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
