// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.source_table_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i5;

part 'source_table_details.g.dart';

/// Contains the details of the table when the backup was created.
abstract class SourceTableDetails
    with _i1.AWSEquatable<SourceTableDetails>
    implements Built<SourceTableDetails, SourceTableDetailsBuilder> {
  /// Contains the details of the table when the backup was created.
  factory SourceTableDetails({
    _i2.BillingMode? billingMode,
    _i3.Int64? itemCount,
    required List<_i4.KeySchemaElement> keySchema,
    required _i5.ProvisionedThroughput provisionedThroughput,
    String? tableArn,
    required DateTime tableCreationDateTime,
    required String tableId,
    required String tableName,
    _i3.Int64? tableSizeBytes,
  }) {
    return _$SourceTableDetails._(
      billingMode: billingMode,
      itemCount: itemCount,
      keySchema: _i6.BuiltList(keySchema),
      provisionedThroughput: provisionedThroughput,
      tableArn: tableArn,
      tableCreationDateTime: tableCreationDateTime,
      tableId: tableId,
      tableName: tableName,
      tableSizeBytes: tableSizeBytes,
    );
  }

  /// Contains the details of the table when the backup was created.
  factory SourceTableDetails.build(
          [void Function(SourceTableDetailsBuilder) updates]) =
      _$SourceTableDetails;

  const SourceTableDetails._();

  static const List<_i7.SmithySerializer> serializers = [
    SourceTableDetailsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceTableDetailsBuilder b) {}

  /// Controls how you are charged for read and write throughput and how you manage capacity. This setting can be changed later.
  ///
  /// *   `PROVISIONED` \- Sets the read/write capacity mode to `PROVISIONED`. We recommend using `PROVISIONED` for predictable workloads.
  ///
  /// *   `PAY\_PER\_REQUEST` \- Sets the read/write capacity mode to `PAY\_PER\_REQUEST`. We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads.
  _i2.BillingMode? get billingMode;

  /// Number of items in the table. Note that this is an approximate value.
  _i3.Int64? get itemCount;

  /// Schema of the table.
  _i6.BuiltList<_i4.KeySchemaElement> get keySchema;

  /// Read IOPs and Write IOPS on the table when the backup was created.
  _i5.ProvisionedThroughput get provisionedThroughput;

  /// ARN of the table for which backup was created.
  String? get tableArn;

  /// Time when the source table was created.
  DateTime get tableCreationDateTime;

  /// Unique identifier for the table for which the backup was created.
  String get tableId;

  /// The name of the table for which the backup was created.
  String get tableName;

  /// Size of the table in bytes. Note that this is an approximate value.
  _i3.Int64? get tableSizeBytes;
  @override
  List<Object?> get props => [
        billingMode,
        itemCount,
        keySchema,
        provisionedThroughput,
        tableArn,
        tableCreationDateTime,
        tableId,
        tableName,
        tableSizeBytes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceTableDetails');
    helper.add(
      'billingMode',
      billingMode,
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
      'provisionedThroughput',
      provisionedThroughput,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    helper.add(
      'tableCreationDateTime',
      tableCreationDateTime,
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
    return helper.toString();
  }
}

class SourceTableDetailsAwsJson10Serializer
    extends _i7.StructuredSmithySerializer<SourceTableDetails> {
  const SourceTableDetailsAwsJson10Serializer() : super('SourceTableDetails');

  @override
  Iterable<Type> get types => const [
        SourceTableDetails,
        _$SourceTableDetails,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SourceTableDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceTableDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BillingMode':
          if (value != null) {
            result.billingMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BillingMode),
            ) as _i2.BillingMode);
          }
          break;
        case 'ItemCount':
          if (value != null) {
            result.itemCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
          }
          break;
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i4.KeySchemaElement)],
            ),
          ) as _i6.BuiltList<_i4.KeySchemaElement>));
          break;
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ProvisionedThroughput),
          ) as _i5.ProvisionedThroughput));
          break;
        case 'TableArn':
          if (value != null) {
            result.tableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableCreationDateTime':
          result.tableCreationDateTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'TableId':
          result.tableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TableSizeBytes':
          if (value != null) {
            result.tableSizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
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
    final payload = (object as SourceTableDetails);
    final result = <Object?>[
      'KeySchema',
      serializers.serialize(
        payload.keySchema,
        specifiedType: const FullType(
          _i6.BuiltList,
          [FullType(_i4.KeySchemaElement)],
        ),
      ),
      'ProvisionedThroughput',
      serializers.serialize(
        payload.provisionedThroughput,
        specifiedType: const FullType(_i5.ProvisionedThroughput),
      ),
      'TableCreationDateTime',
      serializers.serialize(
        payload.tableCreationDateTime,
        specifiedType: const FullType(DateTime),
      ),
      'TableId',
      serializers.serialize(
        payload.tableId,
        specifiedType: const FullType(String),
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
          specifiedType: const FullType(_i2.BillingMode),
        ));
    }
    if (payload.itemCount != null) {
      result
        ..add('ItemCount')
        ..add(serializers.serialize(
          payload.itemCount!,
          specifiedType: const FullType(_i3.Int64),
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
    if (payload.tableSizeBytes != null) {
      result
        ..add('TableSizeBytes')
        ..add(serializers.serialize(
          payload.tableSizeBytes!,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    return result;
  }
}
