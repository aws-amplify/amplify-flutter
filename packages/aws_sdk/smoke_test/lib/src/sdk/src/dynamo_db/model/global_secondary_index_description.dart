// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i8.SmithySerializer> serializers = [
    GlobalSecondaryIndexDescriptionAwsJson10Serializer()
  ];

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
        newBuiltValueToStringHelper('GlobalSecondaryIndexDescription');
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'keySchema',
      keySchema,
    );
    helper.add(
      'projection',
      projection,
    );
    helper.add(
      'indexStatus',
      indexStatus,
    );
    helper.add(
      'backfilling',
      backfilling,
    );
    helper.add(
      'provisionedThroughput',
      provisionedThroughput,
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
      switch (key) {
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'KeySchema':
          if (value != null) {
            result.keySchema.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i2.KeySchemaElement)],
              ),
            ) as _i7.BuiltList<_i2.KeySchemaElement>));
          }
          break;
        case 'Projection':
          if (value != null) {
            result.projection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Projection),
            ) as _i3.Projection));
          }
          break;
        case 'IndexStatus':
          if (value != null) {
            result.indexStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IndexStatus),
            ) as _i4.IndexStatus);
          }
          break;
        case 'Backfilling':
          if (value != null) {
            result.backfilling = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ProvisionedThroughput':
          if (value != null) {
            result.provisionedThroughput.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.ProvisionedThroughputDescription),
            ) as _i5.ProvisionedThroughputDescription));
          }
          break;
        case 'IndexSizeBytes':
          if (value != null) {
            result.indexSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Int64),
            ) as _i6.Int64);
          }
          break;
        case 'ItemCount':
          if (value != null) {
            result.itemCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Int64),
            ) as _i6.Int64);
          }
          break;
        case 'IndexArn':
          if (value != null) {
            result.indexArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as GlobalSecondaryIndexDescription);
    final result = <Object?>[];
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keySchema != null) {
      result
        ..add('KeySchema')
        ..add(serializers.serialize(
          payload.keySchema!,
          specifiedType: const FullType(
            _i7.BuiltList,
            [FullType(_i2.KeySchemaElement)],
          ),
        ));
    }
    if (payload.projection != null) {
      result
        ..add('Projection')
        ..add(serializers.serialize(
          payload.projection!,
          specifiedType: const FullType(_i3.Projection),
        ));
    }
    if (payload.indexStatus != null) {
      result
        ..add('IndexStatus')
        ..add(serializers.serialize(
          payload.indexStatus!,
          specifiedType: const FullType(_i4.IndexStatus),
        ));
    }
    if (payload.backfilling != null) {
      result
        ..add('Backfilling')
        ..add(serializers.serialize(
          payload.backfilling!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.provisionedThroughput != null) {
      result
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          payload.provisionedThroughput!,
          specifiedType: const FullType(_i5.ProvisionedThroughputDescription),
        ));
    }
    if (payload.indexSizeBytes != null) {
      result
        ..add('IndexSizeBytes')
        ..add(serializers.serialize(
          payload.indexSizeBytes!,
          specifiedType: const FullType(_i6.Int64),
        ));
    }
    if (payload.itemCount != null) {
      result
        ..add('ItemCount')
        ..add(serializers.serialize(
          payload.itemCount!,
          specifiedType: const FullType(_i6.Int64),
        ));
    }
    if (payload.indexArn != null) {
      result
        ..add('IndexArn')
        ..add(serializers.serialize(
          payload.indexArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
