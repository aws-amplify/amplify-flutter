// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.source_table_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i4;

part 'source_table_details.g.dart';

/// Contains the details of the table when the backup was created.
abstract class SourceTableDetails
    with _i1.AWSEquatable<SourceTableDetails>
    implements Built<SourceTableDetails, SourceTableDetailsBuilder> {
  /// Contains the details of the table when the backup was created.
  factory SourceTableDetails({
    required String tableName,
    required String tableId,
    String? tableArn,
    _i2.Int64? tableSizeBytes,
    required List<_i3.KeySchemaElement> keySchema,
    required DateTime tableCreationDateTime,
    required _i4.ProvisionedThroughput provisionedThroughput,
    _i2.Int64? itemCount,
    _i5.BillingMode? billingMode,
  }) {
    return _$SourceTableDetails._(
      tableName: tableName,
      tableId: tableId,
      tableArn: tableArn,
      tableSizeBytes: tableSizeBytes,
      keySchema: _i6.BuiltList(keySchema),
      tableCreationDateTime: tableCreationDateTime,
      provisionedThroughput: provisionedThroughput,
      itemCount: itemCount,
      billingMode: billingMode,
    );
  }

  /// Contains the details of the table when the backup was created.
  factory SourceTableDetails.build(
          [void Function(SourceTableDetailsBuilder) updates]) =
      _$SourceTableDetails;

  const SourceTableDetails._();

  static const List<_i7.SmithySerializer<SourceTableDetails>> serializers = [
    SourceTableDetailsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceTableDetailsBuilder b) {}

  /// The name of the table for which the backup was created.
  String get tableName;

  /// Unique identifier for the table for which the backup was created.
  String get tableId;

  /// ARN of the table for which backup was created.
  String? get tableArn;

  /// Size of the table in bytes. Note that this is an approximate value.
  _i2.Int64? get tableSizeBytes;

  /// Schema of the table.
  _i6.BuiltList<_i3.KeySchemaElement> get keySchema;

  /// Time when the source table was created.
  DateTime get tableCreationDateTime;

  /// Read IOPs and Write IOPS on the table when the backup was created.
  _i4.ProvisionedThroughput get provisionedThroughput;

  /// Number of items in the table. Note that this is an approximate value.
  _i2.Int64? get itemCount;

  /// Controls how you are charged for read and write throughput and how you manage capacity. This setting can be changed later.
  ///
  /// *   `PROVISIONED` \- Sets the read/write capacity mode to `PROVISIONED`. We recommend using `PROVISIONED` for predictable workloads.
  ///
  /// *   `PAY\_PER\_REQUEST` \- Sets the read/write capacity mode to `PAY\_PER\_REQUEST`. We recommend using `PAY\_PER\_REQUEST` for unpredictable workloads.
  _i5.BillingMode? get billingMode;
  @override
  List<Object?> get props => [
        tableName,
        tableId,
        tableArn,
        tableSizeBytes,
        keySchema,
        tableCreationDateTime,
        provisionedThroughput,
        itemCount,
        billingMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceTableDetails')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'tableId',
        tableId,
      )
      ..add(
        'tableArn',
        tableArn,
      )
      ..add(
        'tableSizeBytes',
        tableSizeBytes,
      )
      ..add(
        'keySchema',
        keySchema,
      )
      ..add(
        'tableCreationDateTime',
        tableCreationDateTime,
      )
      ..add(
        'provisionedThroughput',
        provisionedThroughput,
      )
      ..add(
        'itemCount',
        itemCount,
      )
      ..add(
        'billingMode',
        billingMode,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableId':
          result.tableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TableSizeBytes':
          result.tableSizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i3.KeySchemaElement)],
            ),
          ) as _i6.BuiltList<_i3.KeySchemaElement>));
        case 'TableCreationDateTime':
          result.tableCreationDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ProvisionedThroughput),
          ) as _i4.ProvisionedThroughput));
        case 'ItemCount':
          result.itemCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'BillingMode':
          result.billingMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.BillingMode),
          ) as _i5.BillingMode);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SourceTableDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SourceTableDetails(
      :tableName,
      :tableId,
      :tableArn,
      :tableSizeBytes,
      :keySchema,
      :tableCreationDateTime,
      :provisionedThroughput,
      :itemCount,
      :billingMode
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
      'TableId',
      serializers.serialize(
        tableId,
        specifiedType: const FullType(String),
      ),
      'KeySchema',
      serializers.serialize(
        keySchema,
        specifiedType: const FullType(
          _i6.BuiltList,
          [FullType(_i3.KeySchemaElement)],
        ),
      ),
      'TableCreationDateTime',
      serializers.serialize(
        tableCreationDateTime,
        specifiedType: const FullType(DateTime),
      ),
      'ProvisionedThroughput',
      serializers.serialize(
        provisionedThroughput,
        specifiedType: const FullType(_i4.ProvisionedThroughput),
      ),
    ]);
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tableSizeBytes != null) {
      result$
        ..add('TableSizeBytes')
        ..add(serializers.serialize(
          tableSizeBytes,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (itemCount != null) {
      result$
        ..add('ItemCount')
        ..add(serializers.serialize(
          itemCount,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (billingMode != null) {
      result$
        ..add('BillingMode')
        ..add(serializers.serialize(
          billingMode,
          specifiedType: const FullType(_i5.BillingMode),
        ));
    }
    return result$;
  }
}
