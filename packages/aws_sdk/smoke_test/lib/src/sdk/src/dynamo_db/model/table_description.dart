// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.table_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i16;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:smithy/smithy.dart' as _i17;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/archival_summary.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode_summary.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_description.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_description.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_description.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_description.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_summary.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_description.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_status.dart'
    as _i15;

part 'table_description.g.dart';

/// Represents the properties of a table.
abstract class TableDescription
    with _i1.AWSEquatable<TableDescription>
    implements Built<TableDescription, TableDescriptionBuilder> {
  /// Represents the properties of a table.
  factory TableDescription({
    _i2.ArchivalSummary? archivalSummary,
    List<_i3.AttributeDefinition>? attributeDefinitions,
    _i4.BillingModeSummary? billingModeSummary,
    DateTime? creationDateTime,
    List<_i5.GlobalSecondaryIndexDescription>? globalSecondaryIndexes,
    String? globalTableVersion,
    _i6.Int64? itemCount,
    List<_i7.KeySchemaElement>? keySchema,
    String? latestStreamArn,
    String? latestStreamLabel,
    List<_i8.LocalSecondaryIndexDescription>? localSecondaryIndexes,
    _i9.ProvisionedThroughputDescription? provisionedThroughput,
    List<_i10.ReplicaDescription>? replicas,
    _i11.RestoreSummary? restoreSummary,
    _i12.SseDescription? sseDescription,
    _i13.StreamSpecification? streamSpecification,
    String? tableArn,
    _i14.TableClassSummary? tableClassSummary,
    String? tableId,
    String? tableName,
    _i6.Int64? tableSizeBytes,
    _i15.TableStatus? tableStatus,
  }) {
    return _$TableDescription._(
      archivalSummary: archivalSummary,
      attributeDefinitions: attributeDefinitions == null
          ? null
          : _i16.BuiltList(attributeDefinitions),
      billingModeSummary: billingModeSummary,
      creationDateTime: creationDateTime,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i16.BuiltList(globalSecondaryIndexes),
      globalTableVersion: globalTableVersion,
      itemCount: itemCount,
      keySchema: keySchema == null ? null : _i16.BuiltList(keySchema),
      latestStreamArn: latestStreamArn,
      latestStreamLabel: latestStreamLabel,
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i16.BuiltList(localSecondaryIndexes),
      provisionedThroughput: provisionedThroughput,
      replicas: replicas == null ? null : _i16.BuiltList(replicas),
      restoreSummary: restoreSummary,
      sseDescription: sseDescription,
      streamSpecification: streamSpecification,
      tableArn: tableArn,
      tableClassSummary: tableClassSummary,
      tableId: tableId,
      tableName: tableName,
      tableSizeBytes: tableSizeBytes,
      tableStatus: tableStatus,
    );
  }

  /// Represents the properties of a table.
  factory TableDescription.build(
      [void Function(TableDescriptionBuilder) updates]) = _$TableDescription;

  const TableDescription._();

  static const List<_i17.SmithySerializer> serializers = [
    TableDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableDescriptionBuilder b) {}

  /// Contains information about the table archive.
  _i2.ArchivalSummary? get archivalSummary;

  /// An array of `AttributeDefinition` objects. Each of these objects describes one attribute in the table and index key schema.
  ///
  /// Each `AttributeDefinition` object in this array is composed of:
  ///
  /// *   `AttributeName` \- The name of the attribute.
  ///
  /// *   `AttributeType` \- The data type for the attribute.
  _i16.BuiltList<_i3.AttributeDefinition>? get attributeDefinitions;

  /// Contains the details for the read/write capacity mode.
  _i4.BillingModeSummary? get billingModeSummary;

  /// The date and time when the table was created, in [UNIX epoch time](http://www.epochconverter.com/) format.
  DateTime? get creationDateTime;

  /// The global secondary indexes, if any, on the table. Each index is scoped to a given partition key value. Each element is composed of:
  ///
  /// *   `Backfilling` \- If true, then the index is currently in the backfilling phase. Backfilling occurs only when a new global secondary index is added to the table. It is the process by which DynamoDB populates the new index with data from the table. (This attribute does not appear for indexes that were created during a `CreateTable` operation.)
  ///
  ///     You can delete an index that is being created during the `Backfilling` phase when `IndexStatus` is set to CREATING and `Backfilling` is true. You can't delete the index that is being created when `IndexStatus` is set to CREATING and `Backfilling` is false. (This attribute does not appear for indexes that were created during a `CreateTable` operation.)
  ///
  /// *   `IndexName` \- The name of the global secondary index.
  ///
  /// *   `IndexSizeBytes` \- The total size of the global secondary index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  ///
  /// *   `IndexStatus` \- The current status of the global secondary index:
  ///
  ///     *   `CREATING` \- The index is being created.
  ///
  ///     *   `UPDATING` \- The index is being updated.
  ///
  ///     *   `DELETING` \- The index is being deleted.
  ///
  ///     *   `ACTIVE` \- The index is ready for use.
  ///
  /// *   `ItemCount` \- The number of items in the global secondary index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  ///
  /// *   `KeySchema` \- Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.
  ///
  /// *   `Projection` \- Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:
  ///
  ///     *   `ProjectionType` \- One of the following:
  ///
  ///         *   `KEYS_ONLY` \- Only the index and primary keys are projected into the index.
  ///
  ///         *   `INCLUDE` \- In addition to the attributes described in `KEYS_ONLY`, the secondary index will include other non-key attributes that you specify.
  ///
  ///         *   `ALL` \- All of the table attributes are projected into the index.
  ///
  ///     *   `NonKeyAttributes` \- A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in `NonKeyAttributes`, summed across all of the secondary indexes, must not exceed 100. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
  ///
  /// *   `ProvisionedThroughput` \- The provisioned throughput settings for the global secondary index, consisting of read and write capacity units, along with data about increases and decreases.
  ///
  ///
  /// If the table is in the `DELETING` state, no information about indexes will be returned.
  _i16.BuiltList<_i5.GlobalSecondaryIndexDescription>?
      get globalSecondaryIndexes;

  /// Represents the version of [global tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html) in use, if the table is replicated across Amazon Web Services Regions.
  String? get globalTableVersion;

  /// The number of items in the specified table. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i6.Int64? get itemCount;

  /// The primary key structure for the table. Each `KeySchemaElement` consists of:
  ///
  /// *   `AttributeName` \- The name of the attribute.
  ///
  /// *   `KeyType` \- The role of the attribute:
  ///
  ///     *   `HASH` \- partition key
  ///
  ///     *   `RANGE` \- sort key
  ///
  ///
  ///     The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  ///     The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  ///
  ///
  /// For more information about primary keys, see [Primary Key](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey) in the _Amazon DynamoDB Developer Guide_.
  _i16.BuiltList<_i7.KeySchemaElement>? get keySchema;

  /// The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this table.
  String? get latestStreamArn;

  /// A timestamp, in ISO 8601 format, for this stream.
  ///
  /// Note that `LatestStreamLabel` is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:
  ///
  /// *   Amazon Web Services customer ID
  ///
  /// *   Table name
  ///
  /// *   `StreamLabel`
  String? get latestStreamLabel;

  /// Represents one or more local secondary indexes on the table. Each index is scoped to a given partition key value. Tables with one or more local secondary indexes are subject to an item collection size limit, where the amount of data within a given item collection cannot exceed 10 GB. Each element is composed of:
  ///
  /// *   `IndexName` \- The name of the local secondary index.
  ///
  /// *   `KeySchema` \- Specifies the complete index key schema. The attribute names in the key schema must be between 1 and 255 characters (inclusive). The key schema must begin with the same partition key as the table.
  ///
  /// *   `Projection` \- Specifies attributes that are copied (projected) from the table into the index. These are in addition to the primary key attributes and index key attributes, which are automatically projected. Each attribute specification is composed of:
  ///
  ///     *   `ProjectionType` \- One of the following:
  ///
  ///         *   `KEYS_ONLY` \- Only the index and primary keys are projected into the index.
  ///
  ///         *   `INCLUDE` \- Only the specified table attributes are projected into the index. The list of projected attributes is in `NonKeyAttributes`.
  ///
  ///         *   `ALL` \- All of the table attributes are projected into the index.
  ///
  ///     *   `NonKeyAttributes` \- A list of one or more non-key attribute names that are projected into the secondary index. The total count of attributes provided in `NonKeyAttributes`, summed across all of the secondary indexes, must not exceed 100. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
  ///
  /// *   `IndexSizeBytes` \- Represents the total size of the index, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  ///
  /// *   `ItemCount` \- Represents the number of items in the index. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  ///
  ///
  /// If the table is in the `DELETING` state, no information about indexes will be returned.
  _i16.BuiltList<_i8.LocalSecondaryIndexDescription>? get localSecondaryIndexes;

  /// The provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.
  _i9.ProvisionedThroughputDescription? get provisionedThroughput;

  /// Represents replicas of the table.
  _i16.BuiltList<_i10.ReplicaDescription>? get replicas;

  /// Contains details for the restore.
  _i11.RestoreSummary? get restoreSummary;

  /// The description of the server-side encryption status on the specified table.
  _i12.SseDescription? get sseDescription;

  /// The current DynamoDB Streams configuration for the table.
  _i13.StreamSpecification? get streamSpecification;

  /// The Amazon Resource Name (ARN) that uniquely identifies the table.
  String? get tableArn;

  /// Contains details of the table class.
  _i14.TableClassSummary? get tableClassSummary;

  /// Unique identifier for the table for which the backup was created.
  String? get tableId;

  /// The name of the table.
  String? get tableName;

  /// The total size of the specified table, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i6.Int64? get tableSizeBytes;

  /// The current state of the table:
  ///
  /// *   `CREATING` \- The table is being created.
  ///
  /// *   `UPDATING` \- The table is being updated.
  ///
  /// *   `DELETING` \- The table is being deleted.
  ///
  /// *   `ACTIVE` \- The table is ready for use.
  ///
  /// *   `INACCESSIBLE\_ENCRYPTION\_CREDENTIALS` \- The KMS key used to encrypt the table in inaccessible. Table operations may fail due to failure to use the KMS key. DynamoDB will initiate the table archival process when a table's KMS key remains inaccessible for more than seven days.
  ///
  /// *   `ARCHIVING` \- The table is being archived. Operations are not allowed until archival is complete.
  ///
  /// *   `ARCHIVED` \- The table has been archived. See the ArchivalReason for more information.
  _i15.TableStatus? get tableStatus;
  @override
  List<Object?> get props => [
        archivalSummary,
        attributeDefinitions,
        billingModeSummary,
        creationDateTime,
        globalSecondaryIndexes,
        globalTableVersion,
        itemCount,
        keySchema,
        latestStreamArn,
        latestStreamLabel,
        localSecondaryIndexes,
        provisionedThroughput,
        replicas,
        restoreSummary,
        sseDescription,
        streamSpecification,
        tableArn,
        tableClassSummary,
        tableId,
        tableName,
        tableSizeBytes,
        tableStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableDescription');
    helper.add(
      'archivalSummary',
      archivalSummary,
    );
    helper.add(
      'attributeDefinitions',
      attributeDefinitions,
    );
    helper.add(
      'billingModeSummary',
      billingModeSummary,
    );
    helper.add(
      'creationDateTime',
      creationDateTime,
    );
    helper.add(
      'globalSecondaryIndexes',
      globalSecondaryIndexes,
    );
    helper.add(
      'globalTableVersion',
      globalTableVersion,
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
      'latestStreamArn',
      latestStreamArn,
    );
    helper.add(
      'latestStreamLabel',
      latestStreamLabel,
    );
    helper.add(
      'localSecondaryIndexes',
      localSecondaryIndexes,
    );
    helper.add(
      'provisionedThroughput',
      provisionedThroughput,
    );
    helper.add(
      'replicas',
      replicas,
    );
    helper.add(
      'restoreSummary',
      restoreSummary,
    );
    helper.add(
      'sseDescription',
      sseDescription,
    );
    helper.add(
      'streamSpecification',
      streamSpecification,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    helper.add(
      'tableClassSummary',
      tableClassSummary,
    );
    helper.add(
      'tableId',
      tableId,
    );
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'tableSizeBytes',
      tableSizeBytes,
    );
    helper.add(
      'tableStatus',
      tableStatus,
    );
    return helper.toString();
  }
}

class TableDescriptionAwsJson10Serializer
    extends _i17.StructuredSmithySerializer<TableDescription> {
  const TableDescriptionAwsJson10Serializer() : super('TableDescription');

  @override
  Iterable<Type> get types => const [
        TableDescription,
        _$TableDescription,
      ];
  @override
  Iterable<_i17.ShapeId> get supportedProtocols => const [
        _i17.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TableDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ArchivalSummary':
          if (value != null) {
            result.archivalSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ArchivalSummary),
            ) as _i2.ArchivalSummary));
          }
          break;
        case 'AttributeDefinitions':
          if (value != null) {
            result.attributeDefinitions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i16.BuiltList,
                [FullType(_i3.AttributeDefinition)],
              ),
            ) as _i16.BuiltList<_i3.AttributeDefinition>));
          }
          break;
        case 'BillingModeSummary':
          if (value != null) {
            result.billingModeSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.BillingModeSummary),
            ) as _i4.BillingModeSummary));
          }
          break;
        case 'CreationDateTime':
          if (value != null) {
            result.creationDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i16.BuiltList,
                [FullType(_i5.GlobalSecondaryIndexDescription)],
              ),
            ) as _i16.BuiltList<_i5.GlobalSecondaryIndexDescription>));
          }
          break;
        case 'GlobalTableVersion':
          if (value != null) {
            result.globalTableVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'KeySchema':
          if (value != null) {
            result.keySchema.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i16.BuiltList,
                [FullType(_i7.KeySchemaElement)],
              ),
            ) as _i16.BuiltList<_i7.KeySchemaElement>));
          }
          break;
        case 'LatestStreamArn':
          if (value != null) {
            result.latestStreamArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LatestStreamLabel':
          if (value != null) {
            result.latestStreamLabel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LocalSecondaryIndexes':
          if (value != null) {
            result.localSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i16.BuiltList,
                [FullType(_i8.LocalSecondaryIndexDescription)],
              ),
            ) as _i16.BuiltList<_i8.LocalSecondaryIndexDescription>));
          }
          break;
        case 'ProvisionedThroughput':
          if (value != null) {
            result.provisionedThroughput.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i9.ProvisionedThroughputDescription),
            ) as _i9.ProvisionedThroughputDescription));
          }
          break;
        case 'Replicas':
          if (value != null) {
            result.replicas.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i16.BuiltList,
                [FullType(_i10.ReplicaDescription)],
              ),
            ) as _i16.BuiltList<_i10.ReplicaDescription>));
          }
          break;
        case 'RestoreSummary':
          if (value != null) {
            result.restoreSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i11.RestoreSummary),
            ) as _i11.RestoreSummary));
          }
          break;
        case 'SSEDescription':
          if (value != null) {
            result.sseDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i12.SseDescription),
            ) as _i12.SseDescription));
          }
          break;
        case 'StreamSpecification':
          if (value != null) {
            result.streamSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i13.StreamSpecification),
            ) as _i13.StreamSpecification));
          }
          break;
        case 'TableArn':
          if (value != null) {
            result.tableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableClassSummary':
          if (value != null) {
            result.tableClassSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i14.TableClassSummary),
            ) as _i14.TableClassSummary));
          }
          break;
        case 'TableId':
          if (value != null) {
            result.tableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableSizeBytes':
          if (value != null) {
            result.tableSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Int64),
            ) as _i6.Int64);
          }
          break;
        case 'TableStatus':
          if (value != null) {
            result.tableStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i15.TableStatus),
            ) as _i15.TableStatus);
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
    final payload = (object as TableDescription);
    final result = <Object?>[];
    if (payload.archivalSummary != null) {
      result
        ..add('ArchivalSummary')
        ..add(serializers.serialize(
          payload.archivalSummary!,
          specifiedType: const FullType(_i2.ArchivalSummary),
        ));
    }
    if (payload.attributeDefinitions != null) {
      result
        ..add('AttributeDefinitions')
        ..add(serializers.serialize(
          payload.attributeDefinitions!,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i3.AttributeDefinition)],
          ),
        ));
    }
    if (payload.billingModeSummary != null) {
      result
        ..add('BillingModeSummary')
        ..add(serializers.serialize(
          payload.billingModeSummary!,
          specifiedType: const FullType(_i4.BillingModeSummary),
        ));
    }
    if (payload.creationDateTime != null) {
      result
        ..add('CreationDateTime')
        ..add(serializers.serialize(
          payload.creationDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i5.GlobalSecondaryIndexDescription)],
          ),
        ));
    }
    if (payload.globalTableVersion != null) {
      result
        ..add('GlobalTableVersion')
        ..add(serializers.serialize(
          payload.globalTableVersion!,
          specifiedType: const FullType(String),
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
    if (payload.keySchema != null) {
      result
        ..add('KeySchema')
        ..add(serializers.serialize(
          payload.keySchema!,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i7.KeySchemaElement)],
          ),
        ));
    }
    if (payload.latestStreamArn != null) {
      result
        ..add('LatestStreamArn')
        ..add(serializers.serialize(
          payload.latestStreamArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.latestStreamLabel != null) {
      result
        ..add('LatestStreamLabel')
        ..add(serializers.serialize(
          payload.latestStreamLabel!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.localSecondaryIndexes != null) {
      result
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.localSecondaryIndexes!,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i8.LocalSecondaryIndexDescription)],
          ),
        ));
    }
    if (payload.provisionedThroughput != null) {
      result
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          payload.provisionedThroughput!,
          specifiedType: const FullType(_i9.ProvisionedThroughputDescription),
        ));
    }
    if (payload.replicas != null) {
      result
        ..add('Replicas')
        ..add(serializers.serialize(
          payload.replicas!,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i10.ReplicaDescription)],
          ),
        ));
    }
    if (payload.restoreSummary != null) {
      result
        ..add('RestoreSummary')
        ..add(serializers.serialize(
          payload.restoreSummary!,
          specifiedType: const FullType(_i11.RestoreSummary),
        ));
    }
    if (payload.sseDescription != null) {
      result
        ..add('SSEDescription')
        ..add(serializers.serialize(
          payload.sseDescription!,
          specifiedType: const FullType(_i12.SseDescription),
        ));
    }
    if (payload.streamSpecification != null) {
      result
        ..add('StreamSpecification')
        ..add(serializers.serialize(
          payload.streamSpecification!,
          specifiedType: const FullType(_i13.StreamSpecification),
        ));
    }
    if (payload.tableArn != null) {
      result
        ..add('TableArn')
        ..add(serializers.serialize(
          payload.tableArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableClassSummary != null) {
      result
        ..add('TableClassSummary')
        ..add(serializers.serialize(
          payload.tableClassSummary!,
          specifiedType: const FullType(_i14.TableClassSummary),
        ));
    }
    if (payload.tableId != null) {
      result
        ..add('TableId')
        ..add(serializers.serialize(
          payload.tableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableSizeBytes != null) {
      result
        ..add('TableSizeBytes')
        ..add(serializers.serialize(
          payload.tableSizeBytes!,
          specifiedType: const FullType(_i6.Int64),
        ));
    }
    if (payload.tableStatus != null) {
      result
        ..add('TableStatus')
        ..add(serializers.serialize(
          payload.tableStatus!,
          specifiedType: const FullType(_i15.TableStatus),
        ));
    }
    return result;
  }
}
