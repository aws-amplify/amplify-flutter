// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.table_creation_parameters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_definition.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart'
    as _i7;

part 'table_creation_parameters.g.dart';

/// The parameters for the table created as part of the import operation.
abstract class TableCreationParameters
    with _i1.AWSEquatable<TableCreationParameters>
    implements Built<TableCreationParameters, TableCreationParametersBuilder> {
  /// The parameters for the table created as part of the import operation.
  factory TableCreationParameters({
    required List<_i2.AttributeDefinition> attributeDefinitions,
    _i3.BillingMode? billingMode,
    List<_i4.GlobalSecondaryIndex>? globalSecondaryIndexes,
    required List<_i5.KeySchemaElement> keySchema,
    _i6.ProvisionedThroughput? provisionedThroughput,
    _i7.SseSpecification? sseSpecification,
    required String tableName,
  }) {
    return _$TableCreationParameters._(
      attributeDefinitions: _i8.BuiltList(attributeDefinitions),
      billingMode: billingMode,
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i8.BuiltList(globalSecondaryIndexes),
      keySchema: _i8.BuiltList(keySchema),
      provisionedThroughput: provisionedThroughput,
      sseSpecification: sseSpecification,
      tableName: tableName,
    );
  }

  /// The parameters for the table created as part of the import operation.
  factory TableCreationParameters.build(
          [void Function(TableCreationParametersBuilder) updates]) =
      _$TableCreationParameters;

  const TableCreationParameters._();

  static const List<_i9.SmithySerializer> serializers = [
    TableCreationParametersAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TableCreationParametersBuilder b) {}

  /// The attributes of the table created as part of the import operation.
  _i8.BuiltList<_i2.AttributeDefinition> get attributeDefinitions;

  /// The billing mode for provisioning the table created as part of the import operation.
  _i3.BillingMode? get billingMode;

  /// The Global Secondary Indexes (GSI) of the table to be created as part of the import operation.
  _i8.BuiltList<_i4.GlobalSecondaryIndex>? get globalSecondaryIndexes;

  /// The primary key and option sort key of the table created as part of the import operation.
  _i8.BuiltList<_i5.KeySchemaElement> get keySchema;

  /// Represents the provisioned throughput settings for a specified table or index. The settings can be modified using the `UpdateTable` operation.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  _i6.ProvisionedThroughput? get provisionedThroughput;

  /// Represents the settings used to enable server-side encryption.
  _i7.SseSpecification? get sseSpecification;

  /// The name of the table created as part of the import operation.
  String get tableName;
  @override
  List<Object?> get props => [
        attributeDefinitions,
        billingMode,
        globalSecondaryIndexes,
        keySchema,
        provisionedThroughput,
        sseSpecification,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TableCreationParameters');
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
      'provisionedThroughput',
      provisionedThroughput,
    );
    helper.add(
      'sseSpecification',
      sseSpecification,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class TableCreationParametersAwsJson10Serializer
    extends _i9.StructuredSmithySerializer<TableCreationParameters> {
  const TableCreationParametersAwsJson10Serializer()
      : super('TableCreationParameters');

  @override
  Iterable<Type> get types => const [
        TableCreationParameters,
        _$TableCreationParameters,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
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
      switch (key) {
        case 'AttributeDefinitions':
          result.attributeDefinitions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i2.AttributeDefinition)],
            ),
          ) as _i8.BuiltList<_i2.AttributeDefinition>));
          break;
        case 'BillingMode':
          if (value != null) {
            result.billingMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BillingMode),
            ) as _i3.BillingMode);
          }
          break;
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i4.GlobalSecondaryIndex)],
              ),
            ) as _i8.BuiltList<_i4.GlobalSecondaryIndex>));
          }
          break;
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i5.KeySchemaElement)],
            ),
          ) as _i8.BuiltList<_i5.KeySchemaElement>));
          break;
        case 'ProvisionedThroughput':
          if (value != null) {
            result.provisionedThroughput.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.ProvisionedThroughput),
            ) as _i6.ProvisionedThroughput));
          }
          break;
        case 'SSESpecification':
          if (value != null) {
            result.sseSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.SseSpecification),
            ) as _i7.SseSpecification));
          }
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as TableCreationParameters);
    final result = <Object?>[
      'AttributeDefinitions',
      serializers.serialize(
        payload.attributeDefinitions,
        specifiedType: const FullType(
          _i8.BuiltList,
          [FullType(_i2.AttributeDefinition)],
        ),
      ),
      'KeySchema',
      serializers.serialize(
        payload.keySchema,
        specifiedType: const FullType(
          _i8.BuiltList,
          [FullType(_i5.KeySchemaElement)],
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
          specifiedType: const FullType(_i3.BillingMode),
        ));
    }
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i4.GlobalSecondaryIndex)],
          ),
        ));
    }
    if (payload.provisionedThroughput != null) {
      result
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          payload.provisionedThroughput!,
          specifiedType: const FullType(_i6.ProvisionedThroughput),
        ));
    }
    if (payload.sseSpecification != null) {
      result
        ..add('SSESpecification')
        ..add(serializers.serialize(
          payload.sseSpecification!,
          specifiedType: const FullType(_i7.SseSpecification),
        ));
    }
    return result;
  }
}
