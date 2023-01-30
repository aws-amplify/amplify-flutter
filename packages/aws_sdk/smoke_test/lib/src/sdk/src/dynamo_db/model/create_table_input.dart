// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.create_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i13;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart' as _i12;

part 'create_table_input.g.dart';

/// Represents the input of a `CreateTable` operation.
abstract class CreateTableInput
    with _i1.HttpInput<CreateTableInput>, _i2.AWSEquatable<CreateTableInput>
    implements Built<CreateTableInput, CreateTableInputBuilder> {
  /// Represents the input of a `CreateTable` operation.
  factory CreateTableInput({
    required List<_i3.AttributeDefinition> attributeDefinitions,
    _i4.BillingMode? billingMode,
    List<_i5.GlobalSecondaryIndex>? globalSecondaryIndexes,
    required List<_i6.KeySchemaElement> keySchema,
    List<_i7.LocalSecondaryIndex>? localSecondaryIndexes,
    _i8.ProvisionedThroughput? provisionedThroughput,
    _i9.SseSpecification? sseSpecification,
    _i10.StreamSpecification? streamSpecification,
    _i11.TableClass? tableClass,
    required String tableName,
    List<_i12.Tag>? tags,
  }) {
    return _$CreateTableInput._(
      attributeDefinitions: _i13.BuiltList(attributeDefinitions),
      billingMode: billingMode,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i13.BuiltList(globalSecondaryIndexes),
      keySchema: _i13.BuiltList(keySchema),
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i13.BuiltList(localSecondaryIndexes),
      provisionedThroughput: provisionedThroughput,
      sseSpecification: sseSpecification,
      streamSpecification: streamSpecification,
      tableClass: tableClass,
      tableName: tableName,
      tags: tags == null ? null : _i13.BuiltList(tags),
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

  static const List<_i1.SmithySerializer> serializers = [
    CreateTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTableInputBuilder b) {}

  /// An array of attributes that describe the key schema for the table and indexes.
  _i13.BuiltList<_i3.AttributeDefinition> get attributeDefinitions;

  /// Controls how you are charged for read and write throughput and how you manage capacity. This setting can be changed later.
  ///
  /// *   `PROVISIONED` \- We recommend using `PROVISIONED` for predictable workloads. `PROVISIONED` sets the billing mode to [Provisioned Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual).
  ///
  /// *   `PAY\_PER\_REQUEST` \- We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads. `PAY\_PER\_REQUEST` sets the billing mode to [On-Demand Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand).
  _i4.BillingMode? get billingMode;

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
  _i13.BuiltList<_i5.GlobalSecondaryIndex>? get globalSecondaryIndexes;

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
  _i13.BuiltList<_i6.KeySchemaElement> get keySchema;

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
  _i13.BuiltList<_i7.LocalSecondaryIndex>? get localSecondaryIndexes;

  /// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
  ///
  /// If you set BillingMode as `PROVISIONED`, you must specify this property. If you set BillingMode as `PAY\_PER\_REQUEST`, you cannot specify this property.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.ProvisionedThroughput? get provisionedThroughput;

  /// Represents the settings used to enable server-side encryption.
  _i9.SseSpecification? get sseSpecification;

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
  _i10.StreamSpecification? get streamSpecification;

  /// The table class of the new table. Valid values are `STANDARD` and `STANDARD\_INFREQUENT\_ACCESS`.
  _i11.TableClass? get tableClass;

  /// The name of the table to create.
  String get tableName;

  /// A list of key-value pairs to label the table. For more information, see [Tagging for DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html).
  _i13.BuiltList<_i12.Tag>? get tags;
  @override
  CreateTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        attributeDefinitions,
        billingMode,
        globalSecondaryIndexes,
        keySchema,
        localSecondaryIndexes,
        provisionedThroughput,
        sseSpecification,
        streamSpecification,
        tableClass,
        tableName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTableInput');
    helper.add(
      'attributeDefinitions',
      attributeDefinitions,
    );
    helper.add(
      'billingMode',
      billingMode,
    );
    helper.add(
      'globalSecondaryIndexes',
      globalSecondaryIndexes,
    );
    helper.add(
      'keySchema',
      keySchema,
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
      'sseSpecification',
      sseSpecification,
    );
    helper.add(
      'streamSpecification',
      streamSpecification,
    );
    helper.add(
      'tableClass',
      tableClass,
    );
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'tags',
      tags,
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
      switch (key) {
        case 'AttributeDefinitions':
          result.attributeDefinitions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i13.BuiltList,
              [FullType(_i3.AttributeDefinition)],
            ),
          ) as _i13.BuiltList<_i3.AttributeDefinition>));
          break;
        case 'BillingMode':
          if (value != null) {
            result.billingMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.BillingMode),
            ) as _i4.BillingMode);
          }
          break;
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i5.GlobalSecondaryIndex)],
              ),
            ) as _i13.BuiltList<_i5.GlobalSecondaryIndex>));
          }
          break;
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i13.BuiltList,
              [FullType(_i6.KeySchemaElement)],
            ),
          ) as _i13.BuiltList<_i6.KeySchemaElement>));
          break;
        case 'LocalSecondaryIndexes':
          if (value != null) {
            result.localSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i7.LocalSecondaryIndex)],
              ),
            ) as _i13.BuiltList<_i7.LocalSecondaryIndex>));
          }
          break;
        case 'ProvisionedThroughput':
          if (value != null) {
            result.provisionedThroughput.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.ProvisionedThroughput),
            ) as _i8.ProvisionedThroughput));
          }
          break;
        case 'SSESpecification':
          if (value != null) {
            result.sseSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.SseSpecification),
            ) as _i9.SseSpecification));
          }
          break;
        case 'StreamSpecification':
          if (value != null) {
            result.streamSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.StreamSpecification),
            ) as _i10.StreamSpecification));
          }
          break;
        case 'TableClass':
          if (value != null) {
            result.tableClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i11.TableClass),
            ) as _i11.TableClass);
          }
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i12.Tag)],
              ),
            ) as _i13.BuiltList<_i12.Tag>));
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
    final payload = (object as CreateTableInput);
    final result = <Object?>[
      'AttributeDefinitions',
      serializers.serialize(
        payload.attributeDefinitions,
        specifiedType: const FullType(
          _i13.BuiltList,
          [FullType(_i3.AttributeDefinition)],
        ),
      ),
      'KeySchema',
      serializers.serialize(
        payload.keySchema,
        specifiedType: const FullType(
          _i13.BuiltList,
          [FullType(_i6.KeySchemaElement)],
        ),
      ),
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.billingMode != null) {
      result
        ..add('BillingMode')
        ..add(serializers.serialize(
          payload.billingMode!,
          specifiedType: const FullType(_i4.BillingMode),
        ));
    }
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i13.BuiltList,
            [FullType(_i5.GlobalSecondaryIndex)],
          ),
        ));
    }
    if (payload.localSecondaryIndexes != null) {
      result
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.localSecondaryIndexes!,
          specifiedType: const FullType(
            _i13.BuiltList,
            [FullType(_i7.LocalSecondaryIndex)],
          ),
        ));
    }
    if (payload.provisionedThroughput != null) {
      result
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          payload.provisionedThroughput!,
          specifiedType: const FullType(_i8.ProvisionedThroughput),
        ));
    }
    if (payload.sseSpecification != null) {
      result
        ..add('SSESpecification')
        ..add(serializers.serialize(
          payload.sseSpecification!,
          specifiedType: const FullType(_i9.SseSpecification),
        ));
    }
    if (payload.streamSpecification != null) {
      result
        ..add('StreamSpecification')
        ..add(serializers.serialize(
          payload.streamSpecification!,
          specifiedType: const FullType(_i10.StreamSpecification),
        ));
    }
    if (payload.tableClass != null) {
      result
        ..add('TableClass')
        ..add(serializers.serialize(
          payload.tableClass!,
          specifiedType: const FullType(_i11.TableClass),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i13.BuiltList,
            [FullType(_i12.Tag)],
          ),
        ));
    }
    return result;
  }
}
