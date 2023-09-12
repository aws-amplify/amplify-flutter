// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replication_group_update.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/table_class.dart';

part 'update_table_input.g.dart';

/// Represents the input of an `UpdateTable` operation.
abstract class UpdateTableInput
    with _i1.HttpInput<UpdateTableInput>, _i2.AWSEquatable<UpdateTableInput>
    implements Built<UpdateTableInput, UpdateTableInputBuilder> {
  /// Represents the input of an `UpdateTable` operation.
  factory UpdateTableInput({
    List<AttributeDefinition>? attributeDefinitions,
    required String tableName,
    BillingMode? billingMode,
    ProvisionedThroughput? provisionedThroughput,
    List<GlobalSecondaryIndexUpdate>? globalSecondaryIndexUpdates,
    StreamSpecification? streamSpecification,
    SseSpecification? sseSpecification,
    List<ReplicationGroupUpdate>? replicaUpdates,
    TableClass? tableClass,
    bool? deletionProtectionEnabled,
  }) {
    return _$UpdateTableInput._(
      attributeDefinitions: attributeDefinitions == null
          ? null
          : _i3.BuiltList(attributeDefinitions),
      tableName: tableName,
      billingMode: billingMode,
      provisionedThroughput: provisionedThroughput,
      globalSecondaryIndexUpdates: globalSecondaryIndexUpdates == null
          ? null
          : _i3.BuiltList(globalSecondaryIndexUpdates),
      streamSpecification: streamSpecification,
      sseSpecification: sseSpecification,
      replicaUpdates:
          replicaUpdates == null ? null : _i3.BuiltList(replicaUpdates),
      tableClass: tableClass,
      deletionProtectionEnabled: deletionProtectionEnabled,
    );
  }

  /// Represents the input of an `UpdateTable` operation.
  factory UpdateTableInput.build(
      [void Function(UpdateTableInputBuilder) updates]) = _$UpdateTableInput;

  const UpdateTableInput._();

  factory UpdateTableInput.fromRequest(
    UpdateTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateTableInput>> serializers = [
    UpdateTableInputAwsJson10Serializer()
  ];

  /// An array of attributes that describe the key schema for the table and indexes. If you are adding a new global secondary index to the table, `AttributeDefinitions` must include the key element(s) of the new index.
  _i3.BuiltList<AttributeDefinition>? get attributeDefinitions;

  /// The name of the table to be updated.
  String get tableName;

  /// Controls how you are charged for read and write throughput and how you manage capacity. When switching from pay-per-request to provisioned capacity, initial provisioned capacity values must be set. The initial provisioned capacity values are estimated based on the consumed read and write capacity of your table and global secondary indexes over the past 30 minutes.
  ///
  /// *   `PROVISIONED` \- We recommend using `PROVISIONED` for predictable workloads. `PROVISIONED` sets the billing mode to [Provisioned Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual).
  ///
  /// *   `PAY\_PER\_REQUEST` \- We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads. `PAY\_PER\_REQUEST` sets the billing mode to [On-Demand Mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand).
  BillingMode? get billingMode;

  /// The new provisioned throughput settings for the specified table or index.
  ProvisionedThroughput? get provisionedThroughput;

  /// An array of one or more global secondary indexes for the table. For each index in the array, you can request one action:
  ///
  /// *   `Create` \- add a new global secondary index to the table.
  ///
  /// *   `Update` \- modify the provisioned throughput settings of an existing global secondary index.
  ///
  /// *   `Delete` \- remove a global secondary index from the table.
  ///
  ///
  /// You can create or delete only one global secondary index per `UpdateTable` operation.
  ///
  /// For more information, see [Managing Global Secondary Indexes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.BuiltList<GlobalSecondaryIndexUpdate>? get globalSecondaryIndexUpdates;

  /// Represents the DynamoDB Streams configuration for the table.
  ///
  /// You receive a `ResourceInUseException` if you try to enable a stream on a table that already has a stream, or if you try to disable a stream on a table that doesn't have a stream.
  StreamSpecification? get streamSpecification;

  /// The new server-side encryption settings for the specified table.
  SseSpecification? get sseSpecification;

  /// A list of replica update actions (create, delete, or update) for the table.
  ///
  /// This property only applies to [Version 2019.11.21 (Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html) of global tables.
  _i3.BuiltList<ReplicationGroupUpdate>? get replicaUpdates;

  /// The table class of the table to be updated. Valid values are `STANDARD` and `STANDARD\_INFREQUENT\_ACCESS`.
  TableClass? get tableClass;

  /// Indicates whether deletion protection is to be enabled (true) or disabled (false) on the table.
  bool? get deletionProtectionEnabled;
  @override
  UpdateTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        attributeDefinitions,
        tableName,
        billingMode,
        provisionedThroughput,
        globalSecondaryIndexUpdates,
        streamSpecification,
        sseSpecification,
        replicaUpdates,
        tableClass,
        deletionProtectionEnabled,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTableInput')
      ..add(
        'attributeDefinitions',
        attributeDefinitions,
      )
      ..add(
        'tableName',
        tableName,
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
        'globalSecondaryIndexUpdates',
        globalSecondaryIndexUpdates,
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
        'replicaUpdates',
        replicaUpdates,
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

class UpdateTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UpdateTableInput> {
  const UpdateTableInputAwsJson10Serializer() : super('UpdateTableInput');

  @override
  Iterable<Type> get types => const [
        UpdateTableInput,
        _$UpdateTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTableInputBuilder();
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
        case 'GlobalSecondaryIndexUpdates':
          result.globalSecondaryIndexUpdates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(GlobalSecondaryIndexUpdate)],
            ),
          ) as _i3.BuiltList<GlobalSecondaryIndexUpdate>));
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
        case 'ReplicaUpdates':
          result.replicaUpdates.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ReplicationGroupUpdate)],
            ),
          ) as _i3.BuiltList<ReplicationGroupUpdate>));
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
    UpdateTableInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateTableInput(
      :attributeDefinitions,
      :tableName,
      :billingMode,
      :provisionedThroughput,
      :globalSecondaryIndexUpdates,
      :streamSpecification,
      :sseSpecification,
      :replicaUpdates,
      :tableClass,
      :deletionProtectionEnabled
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (attributeDefinitions != null) {
      result$
        ..add('AttributeDefinitions')
        ..add(serializers.serialize(
          attributeDefinitions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AttributeDefinition)],
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
    if (globalSecondaryIndexUpdates != null) {
      result$
        ..add('GlobalSecondaryIndexUpdates')
        ..add(serializers.serialize(
          globalSecondaryIndexUpdates,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(GlobalSecondaryIndexUpdate)],
          ),
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
    if (replicaUpdates != null) {
      result$
        ..add('ReplicaUpdates')
        ..add(serializers.serialize(
          replicaUpdates,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ReplicationGroupUpdate)],
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