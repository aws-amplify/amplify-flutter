// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.table_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i16;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:smithy/smithy.dart' as _i17;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/archival_summary.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode_summary.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_description.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_description.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_description.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica_description.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/restore_summary.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_description.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class_summary.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_status.dart'
    as _i4;

part 'table_description.g.dart';

/// Represents the properties of a table.
abstract class TableDescription
    with _i1.AWSEquatable<TableDescription>
    implements Built<TableDescription, TableDescriptionBuilder> {
  /// Represents the properties of a table.
  factory TableDescription({
    List<_i2.AttributeDefinition>? attributeDefinitions,
    String? tableName,
    List<_i3.KeySchemaElement>? keySchema,
    _i4.TableStatus? tableStatus,
    DateTime? creationDateTime,
    _i5.ProvisionedThroughputDescription? provisionedThroughput,
    _i6.Int64? tableSizeBytes,
    _i6.Int64? itemCount,
    String? tableArn,
    String? tableId,
    _i7.BillingModeSummary? billingModeSummary,
    List<_i8.LocalSecondaryIndexDescription>? localSecondaryIndexes,
    List<_i9.GlobalSecondaryIndexDescription>? globalSecondaryIndexes,
    _i10.StreamSpecification? streamSpecification,
    String? latestStreamLabel,
    String? latestStreamArn,
    String? globalTableVersion,
    List<_i11.ReplicaDescription>? replicas,
    _i12.RestoreSummary? restoreSummary,
    _i13.SseDescription? sseDescription,
    _i14.ArchivalSummary? archivalSummary,
    _i15.TableClassSummary? tableClassSummary,
    bool? deletionProtectionEnabled,
  }) {
    return _$TableDescription._(
      attributeDefinitions: attributeDefinitions == null
          ? null
          : _i16.BuiltList(attributeDefinitions),
      tableName: tableName,
      keySchema: keySchema == null ? null : _i16.BuiltList(keySchema),
      tableStatus: tableStatus,
      creationDateTime: creationDateTime,
      provisionedThroughput: provisionedThroughput,
      tableSizeBytes: tableSizeBytes,
      itemCount: itemCount,
      tableArn: tableArn,
      tableId: tableId,
      billingModeSummary: billingModeSummary,
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i16.BuiltList(localSecondaryIndexes),
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i16.BuiltList(globalSecondaryIndexes),
      streamSpecification: streamSpecification,
      latestStreamLabel: latestStreamLabel,
      latestStreamArn: latestStreamArn,
      globalTableVersion: globalTableVersion,
      replicas: replicas == null ? null : _i16.BuiltList(replicas),
      restoreSummary: restoreSummary,
      sseDescription: sseDescription,
      archivalSummary: archivalSummary,
      tableClassSummary: tableClassSummary,
      deletionProtectionEnabled: deletionProtectionEnabled,
    );
  }

  /// Represents the properties of a table.
  factory TableDescription.build(
      [void Function(TableDescriptionBuilder) updates]) = _$TableDescription;

  const TableDescription._();

  static const List<_i17.SmithySerializer<TableDescription>> serializers = [
    TableDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableDescriptionBuilder b) {}

  /// An array of `AttributeDefinition` objects. Each of these objects describes one attribute in the table and index key schema.
  ///
  /// Each `AttributeDefinition` object in this array is composed of:
  ///
  /// *   `AttributeName` \- The name of the attribute.
  ///
  /// *   `AttributeType` \- The data type for the attribute.
  _i16.BuiltList<_i2.AttributeDefinition>? get attributeDefinitions;

  /// The name of the table.
  String? get tableName;

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
  _i16.BuiltList<_i3.KeySchemaElement>? get keySchema;

  /// The current state of the table:
  ///
  /// *   `CREATING` \- The table is being created.
  ///
  /// *   `UPDATING` \- The table/index configuration is being updated. The table/index remains available for data operations when `UPDATING`.
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
  _i4.TableStatus? get tableStatus;

  /// The date and time when the table was created, in [UNIX epoch time](http://www.epochconverter.com/) format.
  DateTime? get creationDateTime;

  /// The provisioned throughput settings for the table, consisting of read and write capacity units, along with data about increases and decreases.
  _i5.ProvisionedThroughputDescription? get provisionedThroughput;

  /// The total size of the specified table, in bytes. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i6.Int64? get tableSizeBytes;

  /// The number of items in the specified table. DynamoDB updates this value approximately every six hours. Recent changes might not be reflected in this value.
  _i6.Int64? get itemCount;

  /// The Amazon Resource Name (ARN) that uniquely identifies the table.
  String? get tableArn;

  /// Unique identifier for the table for which the backup was created.
  String? get tableId;

  /// Contains the details for the read/write capacity mode.
  _i7.BillingModeSummary? get billingModeSummary;

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
  _i16.BuiltList<_i9.GlobalSecondaryIndexDescription>?
      get globalSecondaryIndexes;

  /// The current DynamoDB Streams configuration for the table.
  _i10.StreamSpecification? get streamSpecification;

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

  /// The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this table.
  String? get latestStreamArn;

  /// Represents the version of [global tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html) in use, if the table is replicated across Amazon Web Services Regions.
  String? get globalTableVersion;

  /// Represents replicas of the table.
  _i16.BuiltList<_i11.ReplicaDescription>? get replicas;

  /// Contains details for the restore.
  _i12.RestoreSummary? get restoreSummary;

  /// The description of the server-side encryption status on the specified table.
  _i13.SseDescription? get sseDescription;

  /// Contains information about the table archive.
  _i14.ArchivalSummary? get archivalSummary;

  /// Contains details of the table class.
  _i15.TableClassSummary? get tableClassSummary;

  /// Indicates whether deletion protection is enabled (true) or disabled (false) on the table.
  bool? get deletionProtectionEnabled;
  @override
  List<Object?> get props => [
        attributeDefinitions,
        tableName,
        keySchema,
        tableStatus,
        creationDateTime,
        provisionedThroughput,
        tableSizeBytes,
        itemCount,
        tableArn,
        tableId,
        billingModeSummary,
        localSecondaryIndexes,
        globalSecondaryIndexes,
        streamSpecification,
        latestStreamLabel,
        latestStreamArn,
        globalTableVersion,
        replicas,
        restoreSummary,
        sseDescription,
        archivalSummary,
        tableClassSummary,
        deletionProtectionEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableDescription')
      ..add(
        'attributeDefinitions',
        attributeDefinitions,
      )
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'keySchema',
        keySchema,
      )
      ..add(
        'tableStatus',
        tableStatus,
      )
      ..add(
        'creationDateTime',
        creationDateTime,
      )
      ..add(
        'provisionedThroughput',
        provisionedThroughput,
      )
      ..add(
        'tableSizeBytes',
        tableSizeBytes,
      )
      ..add(
        'itemCount',
        itemCount,
      )
      ..add(
        'tableArn',
        tableArn,
      )
      ..add(
        'tableId',
        tableId,
      )
      ..add(
        'billingModeSummary',
        billingModeSummary,
      )
      ..add(
        'localSecondaryIndexes',
        localSecondaryIndexes,
      )
      ..add(
        'globalSecondaryIndexes',
        globalSecondaryIndexes,
      )
      ..add(
        'streamSpecification',
        streamSpecification,
      )
      ..add(
        'latestStreamLabel',
        latestStreamLabel,
      )
      ..add(
        'latestStreamArn',
        latestStreamArn,
      )
      ..add(
        'globalTableVersion',
        globalTableVersion,
      )
      ..add(
        'replicas',
        replicas,
      )
      ..add(
        'restoreSummary',
        restoreSummary,
      )
      ..add(
        'sseDescription',
        sseDescription,
      )
      ..add(
        'archivalSummary',
        archivalSummary,
      )
      ..add(
        'tableClassSummary',
        tableClassSummary,
      )
      ..add(
        'deletionProtectionEnabled',
        deletionProtectionEnabled,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AttributeDefinitions':
          result.attributeDefinitions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i2.AttributeDefinition)],
            ),
          ) as _i16.BuiltList<_i2.AttributeDefinition>));
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i3.KeySchemaElement)],
            ),
          ) as _i16.BuiltList<_i3.KeySchemaElement>));
        case 'TableStatus':
          result.tableStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.TableStatus),
          ) as _i4.TableStatus);
        case 'CreationDateTime':
          result.creationDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ProvisionedThroughputDescription),
          ) as _i5.ProvisionedThroughputDescription));
        case 'TableSizeBytes':
          result.tableSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
        case 'ItemCount':
          result.itemCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableId':
          result.tableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BillingModeSummary':
          result.billingModeSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.BillingModeSummary),
          ) as _i7.BillingModeSummary));
        case 'LocalSecondaryIndexes':
          result.localSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i8.LocalSecondaryIndexDescription)],
            ),
          ) as _i16.BuiltList<_i8.LocalSecondaryIndexDescription>));
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i9.GlobalSecondaryIndexDescription)],
            ),
          ) as _i16.BuiltList<_i9.GlobalSecondaryIndexDescription>));
        case 'StreamSpecification':
          result.streamSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i10.StreamSpecification),
          ) as _i10.StreamSpecification));
        case 'LatestStreamLabel':
          result.latestStreamLabel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LatestStreamArn':
          result.latestStreamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GlobalTableVersion':
          result.globalTableVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Replicas':
          result.replicas.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i16.BuiltList,
              [FullType(_i11.ReplicaDescription)],
            ),
          ) as _i16.BuiltList<_i11.ReplicaDescription>));
        case 'RestoreSummary':
          result.restoreSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i12.RestoreSummary),
          ) as _i12.RestoreSummary));
        case 'SSEDescription':
          result.sseDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i13.SseDescription),
          ) as _i13.SseDescription));
        case 'ArchivalSummary':
          result.archivalSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i14.ArchivalSummary),
          ) as _i14.ArchivalSummary));
        case 'TableClassSummary':
          result.tableClassSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i15.TableClassSummary),
          ) as _i15.TableClassSummary));
        case 'DeletionProtectionEnabled':
          result.deletionProtectionEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TableDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TableDescription(
      :attributeDefinitions,
      :tableName,
      :keySchema,
      :tableStatus,
      :creationDateTime,
      :provisionedThroughput,
      :tableSizeBytes,
      :itemCount,
      :tableArn,
      :tableId,
      :billingModeSummary,
      :localSecondaryIndexes,
      :globalSecondaryIndexes,
      :streamSpecification,
      :latestStreamLabel,
      :latestStreamArn,
      :globalTableVersion,
      :replicas,
      :restoreSummary,
      :sseDescription,
      :archivalSummary,
      :tableClassSummary,
      :deletionProtectionEnabled
    ) = object;
    if (attributeDefinitions != null) {
      result$
        ..add('AttributeDefinitions')
        ..add(serializers.serialize(
          attributeDefinitions,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i2.AttributeDefinition)],
          ),
        ));
    }
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (keySchema != null) {
      result$
        ..add('KeySchema')
        ..add(serializers.serialize(
          keySchema,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i3.KeySchemaElement)],
          ),
        ));
    }
    if (tableStatus != null) {
      result$
        ..add('TableStatus')
        ..add(serializers.serialize(
          tableStatus,
          specifiedType: const FullType(_i4.TableStatus),
        ));
    }
    if (creationDateTime != null) {
      result$
        ..add('CreationDateTime')
        ..add(serializers.serialize(
          creationDateTime,
          specifiedType: const FullType(DateTime),
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
    if (tableSizeBytes != null) {
      result$
        ..add('TableSizeBytes')
        ..add(serializers.serialize(
          tableSizeBytes,
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
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tableId != null) {
      result$
        ..add('TableId')
        ..add(serializers.serialize(
          tableId,
          specifiedType: const FullType(String),
        ));
    }
    if (billingModeSummary != null) {
      result$
        ..add('BillingModeSummary')
        ..add(serializers.serialize(
          billingModeSummary,
          specifiedType: const FullType(_i7.BillingModeSummary),
        ));
    }
    if (localSecondaryIndexes != null) {
      result$
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          localSecondaryIndexes,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i8.LocalSecondaryIndexDescription)],
          ),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i9.GlobalSecondaryIndexDescription)],
          ),
        ));
    }
    if (streamSpecification != null) {
      result$
        ..add('StreamSpecification')
        ..add(serializers.serialize(
          streamSpecification,
          specifiedType: const FullType(_i10.StreamSpecification),
        ));
    }
    if (latestStreamLabel != null) {
      result$
        ..add('LatestStreamLabel')
        ..add(serializers.serialize(
          latestStreamLabel,
          specifiedType: const FullType(String),
        ));
    }
    if (latestStreamArn != null) {
      result$
        ..add('LatestStreamArn')
        ..add(serializers.serialize(
          latestStreamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (globalTableVersion != null) {
      result$
        ..add('GlobalTableVersion')
        ..add(serializers.serialize(
          globalTableVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (replicas != null) {
      result$
        ..add('Replicas')
        ..add(serializers.serialize(
          replicas,
          specifiedType: const FullType(
            _i16.BuiltList,
            [FullType(_i11.ReplicaDescription)],
          ),
        ));
    }
    if (restoreSummary != null) {
      result$
        ..add('RestoreSummary')
        ..add(serializers.serialize(
          restoreSummary,
          specifiedType: const FullType(_i12.RestoreSummary),
        ));
    }
    if (sseDescription != null) {
      result$
        ..add('SSEDescription')
        ..add(serializers.serialize(
          sseDescription,
          specifiedType: const FullType(_i13.SseDescription),
        ));
    }
    if (archivalSummary != null) {
      result$
        ..add('ArchivalSummary')
        ..add(serializers.serialize(
          archivalSummary,
          specifiedType: const FullType(_i14.ArchivalSummary),
        ));
    }
    if (tableClassSummary != null) {
      result$
        ..add('TableClassSummary')
        ..add(serializers.serialize(
          tableClassSummary,
          specifiedType: const FullType(_i15.TableClassSummary),
        ));
    }
    if (deletionProtectionEnabled != null) {
      result$
        ..add('DeletionProtectionEnabled')
        ..add(serializers.serialize(
          deletionProtectionEnabled,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
