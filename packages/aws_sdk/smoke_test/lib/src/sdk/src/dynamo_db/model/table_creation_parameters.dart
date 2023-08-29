// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.table_creation_parameters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart';

part 'table_creation_parameters.g.dart';

/// The parameters for the table created as part of the import operation.
abstract class TableCreationParameters
    with _i1.AWSEquatable<TableCreationParameters>
    implements Built<TableCreationParameters, TableCreationParametersBuilder> {
  /// The parameters for the table created as part of the import operation.
  factory TableCreationParameters({
    required String tableName,
    required List<AttributeDefinition> attributeDefinitions,
    required List<KeySchemaElement> keySchema,
    BillingMode? billingMode,
    ProvisionedThroughput? provisionedThroughput,
    SseSpecification? sseSpecification,
    List<GlobalSecondaryIndex>? globalSecondaryIndexes,
  }) {
    return _$TableCreationParameters._(
      tableName: tableName,
      attributeDefinitions: _i2.BuiltList(attributeDefinitions),
      keySchema: _i2.BuiltList(keySchema),
      billingMode: billingMode,
      provisionedThroughput: provisionedThroughput,
      sseSpecification: sseSpecification,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i2.BuiltList(globalSecondaryIndexes),
    );
  }

  /// The parameters for the table created as part of the import operation.
  factory TableCreationParameters.build(
          [void Function(TableCreationParametersBuilder) updates]) =
      _$TableCreationParameters;

  const TableCreationParameters._();

  static const List<_i3.SmithySerializer<TableCreationParameters>> serializers =
      [TableCreationParametersAwsJson10Serializer()];

  /// The name of the table created as part of the import operation.
  String get tableName;

  /// The attributes of the table created as part of the import operation.
  _i2.BuiltList<AttributeDefinition> get attributeDefinitions;

  /// The primary key and option sort key of the table created as part of the import operation.
  _i2.BuiltList<KeySchemaElement> get keySchema;

  /// The billing mode for provisioning the table created as part of the import operation.
  BillingMode? get billingMode;

  /// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  ProvisionedThroughput? get provisionedThroughput;

  /// Represents the settings used to enable server-side encryption.
  SseSpecification? get sseSpecification;

  /// The Global Secondary Indexes (GSI) of the table to be created as part of the import operation.
  _i2.BuiltList<GlobalSecondaryIndex>? get globalSecondaryIndexes;
  @override
  List<Object?> get props => [
        tableName,
        attributeDefinitions,
        keySchema,
        billingMode,
        provisionedThroughput,
        sseSpecification,
        globalSecondaryIndexes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableCreationParameters')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'attributeDefinitions',
        attributeDefinitions,
      )
      ..add(
        'keySchema',
        keySchema,
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
        'sseSpecification',
        sseSpecification,
      )
      ..add(
        'globalSecondaryIndexes',
        globalSecondaryIndexes,
      );
    return helper.toString();
  }
}

class TableCreationParametersAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<TableCreationParameters> {
  const TableCreationParametersAwsJson10Serializer()
      : super('TableCreationParameters');

  @override
  Iterable<Type> get types => const [
        TableCreationParameters,
        _$TableCreationParameters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TableCreationParameters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TableCreationParametersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AttributeDefinitions':
          result.attributeDefinitions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AttributeDefinition)],
            ),
          ) as _i2.BuiltList<AttributeDefinition>));
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(KeySchemaElement)],
            ),
          ) as _i2.BuiltList<KeySchemaElement>));
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
        case 'SSESpecification':
          result.sseSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SseSpecification),
          ) as SseSpecification));
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(GlobalSecondaryIndex)],
            ),
          ) as _i2.BuiltList<GlobalSecondaryIndex>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TableCreationParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TableCreationParameters(
      :tableName,
      :attributeDefinitions,
      :keySchema,
      :billingMode,
      :provisionedThroughput,
      :sseSpecification,
      :globalSecondaryIndexes
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'AttributeDefinitions',
      serializers.serialize(
        attributeDefinitions,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(AttributeDefinition)],
        ),
      ),
      'KeySchema',
      serializers.serialize(
        keySchema,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(KeySchemaElement)],
        ),
      ),
    ]);
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
    if (sseSpecification != null) {
      result$
        ..add('SSESpecification')
        ..add(serializers.serialize(
          sseSpecification,
          specifiedType: const FullType(SseSpecification),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(GlobalSecondaryIndex)],
          ),
        ));
    }
    return result$;
  }
}
