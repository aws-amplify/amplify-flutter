// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.create_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart';

part 'create_table_input.g.dart';

/// Represents the input of a `CreateTable` operation.
abstract class CreateTableInput
    with _i1.HttpInput<CreateTableInput>, _i2.AWSEquatable<CreateTableInput>
    implements Built<CreateTableInput, CreateTableInputBuilder> {
  /// Represents the input of a `CreateTable` operation.
  factory CreateTableInput({
    required List<AttributeDefinition> attributeDefinitions,
    required String tableName,
    required List<KeySchemaElement> keySchema,
    List<LocalSecondaryIndex>? localSecondaryIndexes,
    List<GlobalSecondaryIndex>? globalSecondaryIndexes,
    BillingMode? billingMode,
    ProvisionedThroughput? provisionedThroughput,
    StreamSpecification? streamSpecification,
    SseSpecification? sseSpecification,
    List<Tag>? tags,
    TableClass? tableClass,
    bool? deletionProtectionEnabled,
  }) {
    return _$CreateTableInput._(
      attributeDefinitions: _i3.BuiltList(attributeDefinitions),
      tableName: tableName,
      keySchema: _i3.BuiltList(keySchema),
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i3.BuiltList(localSecondaryIndexes),
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i3.BuiltList(globalSecondaryIndexes),
      billingMode: billingMode,
      provisionedThroughput: provisionedThroughput,
      streamSpecification: streamSpecification,
      sseSpecification: sseSpecification,
      tags: tags == null ? null : _i3.BuiltList(tags),
      tableClass: tableClass,
      deletionProtectionEnabled: deletionProtectionEnabled,
    );
  }

  /// Represents the input of a `CreateTable` operation.
  factory CreateTableInput.build(
      [void Function(CreateTableInputBuilder) updates]) = _$CreateTableInput;

  const CreateTableInput._();

  factory CreateTableInput.fromRequest(
    CreateTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateTableInput>> serializers = [
    CreateTableInputAwsJson10Serializer()
  ];

  /// An array of attributes that describe the key schema for the table and indexes.
  _i3.BuiltList<AttributeDefinition> get attributeDefinitions;

  /// The name of the table to create.
  String get tableName;

  /// Specifies the attributes that make up the primary key for a table or an index. The attributes in `KeySchema` must also be defined in the `AttributeDefinitions` array. For more information, see [Data Model](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html) in the _Amazon DynamoDB Developer Guide_.
  ///
  /// Each `KeySchemaElement` in the array is composed of:
  ///
  /// *   `AttributeName` \- The name of this key attribute.
  ///
  /// *   `KeyType` \- The role that the key attribute will assume:
  ///
  ///     *   `HASH` \- partition key
  ///
  ///     *   `RANGE` \- sort key
  ///
  ///
  /// The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from the DynamoDB usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  /// The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  ///
  /// For a simple primary key (partition key), you must provide exactly one element with a `KeyType` of `HASH`.
  ///
  /// For a composite primary key (partition key and sort key), you must provide exactly two elements, in this order: The first element must have a `KeyType` of `HASH`, and the second element must have a `KeyType` of `RANGE`.
  ///
  /// For more information, see [Working with Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltList<KeySchemaElement> get keySchema;

  /// One or more local secondary indexes (the maximum is 5) to be created on the table. Each index is scoped to a given partition key value. There is a 10 GB size limit per partition key value; otherwise, the size of a local secondary index is unconstrained.
  ///
  /// Each local secondary index in the array includes the following:
  ///
  /// *   `IndexName` \- The name of the local secondary index. Must be unique only for this table.
  ///
  /// *   `KeySchema` \- Specifies the key schema for the local secondary index. The key schema must begin with the same partition key as the table.
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
  _i3.BuiltList<LocalSecondaryIndex>? get localSecondaryIndexes;

  /// One or more global secondary indexes (the maximum is 20) to be created on the table. Each global secondary index in the array includes the following:
  ///
  /// *   `IndexName` \- The name of the global secondary index. Must be unique only for this table.
  ///
  /// *   `KeySchema` \- Specifies the key schema for the global secondary index.
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
  /// *   `ProvisionedThroughput` \- The provisioned throughput settings for the global secondary index, consisting of read and write capacity units.
  _i3.BuiltList<GlobalSecondaryIndex>? get globalSecondaryIndexes;

  /// Controls how you are charged for read and write throughput and how you manage capacity. This setting can be changed later.
  ///
  /// *   `PROVISIONED` \- We recommend using `PROVISIONED` for predictable workloads. `PROVISIONED` sets the billing mode to [Provisioned Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual).
  ///
  /// *   `PAY\_PER\_REQUEST` \- We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads. `PAY\_PER\_REQUEST` sets the billing mode to [On-Demand Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand).
  BillingMode? get billingMode;

  /// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
  ///
  /// If you set BillingMode as `PROVISIONED`, you must specify this property. If you set BillingMode as `PAY\_PER\_REQUEST`, you cannot specify this property.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  ProvisionedThroughput? get provisionedThroughput;

  /// The settings for DynamoDB Streams on the table. These settings consist of:
  ///
  /// *   `StreamEnabled` \- Indicates whether DynamoDB Streams is to be enabled (true) or disabled (false).
  ///
  /// *   `StreamViewType` \- When an item in the table is modified, `StreamViewType` determines what information is written to the table's stream. Valid values for `StreamViewType` are:
  ///
  ///     *   `KEYS_ONLY` \- Only the key attributes of the modified item are written to the stream.
  ///
  ///     *   `NEW_IMAGE` \- The entire item, as it appears after it was modified, is written to the stream.
  ///
  ///     *   `OLD_IMAGE` \- The entire item, as it appeared before it was modified, is written to the stream.
  ///
  ///     *   `NEW\_AND\_OLD_IMAGES` \- Both the new and the old item images of the item are written to the stream.
  StreamSpecification? get streamSpecification;

  /// Represents the settings used to enable server-side encryption.
  SseSpecification? get sseSpecification;

  /// A list of key-value pairs to label the table. For more information, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html).
  _i3.BuiltList<Tag>? get tags;

  /// The table class of the new table. Valid values are `STANDARD` and `STANDARD\_INFREQUENT\_ACCESS`.
  TableClass? get tableClass;

  /// Indicates whether deletion protection is to be enabled (true) or disabled (false) on the table.
  bool? get deletionProtectionEnabled;
  @override
  CreateTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        attributeDefinitions,
        tableName,
        keySchema,
        localSecondaryIndexes,
        globalSecondaryIndexes,
        billingMode,
        provisionedThroughput,
        streamSpecification,
        sseSpecification,
        tags,
        tableClass,
        deletionProtectionEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTableInput')
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
        'localSecondaryIndexes',
        localSecondaryIndexes,
      )
      ..add(
        'globalSecondaryIndexes',
        globalSecondaryIndexes,
      )
      ..add(
        'billingMode',
        billingMode,
      )
      ..add(
        'provisionedThroughput',
        provisionedThroughput,
      )
      ..add(
        'streamSpecification',
        streamSpecification,
      )
      ..add(
        'sseSpecification',
        sseSpecification,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'tableClass',
        tableClass,
      )
      ..add(
        'deletionProtectionEnabled',
        deletionProtectionEnabled,
      );
    return helper.toString();
  }
}

class CreateTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<CreateTableInput> {
  const CreateTableInputAwsJson10Serializer() : super('CreateTableInput');

  @override
  Iterable<Type> get types => const [
        CreateTableInput,
        _$CreateTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTableInputBuilder();
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
              _i3.BuiltList,
              [FullType(AttributeDefinition)],
            ),
          ) as _i3.BuiltList<AttributeDefinition>));
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(KeySchemaElement)],
            ),
          ) as _i3.BuiltList<KeySchemaElement>));
        case 'LocalSecondaryIndexes':
          result.localSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(LocalSecondaryIndex)],
            ),
          ) as _i3.BuiltList<LocalSecondaryIndex>));
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(GlobalSecondaryIndex)],
            ),
          ) as _i3.BuiltList<GlobalSecondaryIndex>));
        case 'BillingMode':
          result.billingMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(BillingMode),
          ) as BillingMode);
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ProvisionedThroughput),
          ) as ProvisionedThroughput));
        case 'StreamSpecification':
          result.streamSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StreamSpecification),
          ) as StreamSpecification));
        case 'SSESpecification':
          result.sseSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SseSpecification),
          ) as SseSpecification));
        case 'Tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
        case 'TableClass':
          result.tableClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(TableClass),
          ) as TableClass);
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
    CreateTableInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateTableInput(
      :attributeDefinitions,
      :tableName,
      :keySchema,
      :localSecondaryIndexes,
      :globalSecondaryIndexes,
      :billingMode,
      :provisionedThroughput,
      :streamSpecification,
      :sseSpecification,
      :tags,
      :tableClass,
      :deletionProtectionEnabled
    ) = object;
    result$.addAll([
      'AttributeDefinitions',
      serializers.serialize(
        attributeDefinitions,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(AttributeDefinition)],
        ),
      ),
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'KeySchema',
      serializers.serialize(
        keySchema,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(KeySchemaElement)],
        ),
      ),
    ]);
    if (localSecondaryIndexes != null) {
      result$
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          localSecondaryIndexes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(LocalSecondaryIndex)],
          ),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(GlobalSecondaryIndex)],
          ),
        ));
    }
    if (billingMode != null) {
      result$
        ..add('BillingMode')
        ..add(serializers.serialize(
          billingMode,
          specifiedType: const FullType(BillingMode),
        ));
    }
    if (provisionedThroughput != null) {
      result$
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          provisionedThroughput,
          specifiedType: const FullType(ProvisionedThroughput),
        ));
    }
    if (streamSpecification != null) {
      result$
        ..add('StreamSpecification')
        ..add(serializers.serialize(
          streamSpecification,
          specifiedType: const FullType(StreamSpecification),
        ));
    }
    if (sseSpecification != null) {
      result$
        ..add('SSESpecification')
        ..add(serializers.serialize(
          sseSpecification,
          specifiedType: const FullType(SseSpecification),
        ));
    }
    if (tags != null) {
      result$
        ..add('Tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (tableClass != null) {
      result$
        ..add('TableClass')
        ..add(serializers.serialize(
          tableClass,
          specifiedType: const FullType(TableClass),
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
