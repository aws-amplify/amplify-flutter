// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.restore_table_from_backup_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart'
    as _i7;

part 'restore_table_from_backup_input.g.dart';

abstract class RestoreTableFromBackupInput
    with
        _i1.HttpInput<RestoreTableFromBackupInput>,
        _i2.AWSEquatable<RestoreTableFromBackupInput>
    implements
        Built<RestoreTableFromBackupInput, RestoreTableFromBackupInputBuilder> {
  factory RestoreTableFromBackupInput({
    required String backupArn,
    _i3.BillingMode? billingModeOverride,
    List<_i4.GlobalSecondaryIndex>? globalSecondaryIndexOverride,
    List<_i5.LocalSecondaryIndex>? localSecondaryIndexOverride,
    _i6.ProvisionedThroughput? provisionedThroughputOverride,
    _i7.SseSpecification? sseSpecificationOverride,
    required String targetTableName,
  }) {
    return _$RestoreTableFromBackupInput._(
      backupArn: backupArn,
      billingModeOverride: billingModeOverride,
      globalSecondaryIndexOverride: globalSecondaryIndexOverride == null
          ? null
          : _i8.BuiltList(globalSecondaryIndexOverride),
      localSecondaryIndexOverride: localSecondaryIndexOverride == null
          ? null
          : _i8.BuiltList(localSecondaryIndexOverride),
      provisionedThroughputOverride: provisionedThroughputOverride,
      sseSpecificationOverride: sseSpecificationOverride,
      targetTableName: targetTableName,
    );
  }

  factory RestoreTableFromBackupInput.build(
          [void Function(RestoreTableFromBackupInputBuilder) updates]) =
      _$RestoreTableFromBackupInput;

  const RestoreTableFromBackupInput._();

  factory RestoreTableFromBackupInput.fromRequest(
    RestoreTableFromBackupInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RestoreTableFromBackupInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableFromBackupInputBuilder b) {}

  /// The Amazon Resource Name (ARN) associated with the backup.
  String get backupArn;

  /// The billing mode of the restored table.
  _i3.BillingMode? get billingModeOverride;

  /// List of global secondary indexes for the restored table. The indexes provided should match existing secondary indexes. You can choose to exclude some or all of the indexes at the time of restore.
  _i8.BuiltList<_i4.GlobalSecondaryIndex>? get globalSecondaryIndexOverride;

  /// List of local secondary indexes for the restored table. The indexes provided should match existing secondary indexes. You can choose to exclude some or all of the indexes at the time of restore.
  _i8.BuiltList<_i5.LocalSecondaryIndex>? get localSecondaryIndexOverride;

  /// Provisioned throughput settings for the restored table.
  _i6.ProvisionedThroughput? get provisionedThroughputOverride;

  /// The new server-side encryption settings for the restored table.
  _i7.SseSpecification? get sseSpecificationOverride;

  /// The name of the new table to which the backup must be restored.
  String get targetTableName;
  @override
  RestoreTableFromBackupInput getPayload() => this;
  @override
  List<Object?> get props => [
        backupArn,
        billingModeOverride,
        globalSecondaryIndexOverride,
        localSecondaryIndexOverride,
        provisionedThroughputOverride,
        sseSpecificationOverride,
        targetTableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreTableFromBackupInput');
    helper.add(
      'backupArn',
      backupArn,
    );
    helper.add(
      'billingModeOverride',
      billingModeOverride,
    );
    helper.add(
      'globalSecondaryIndexOverride',
      globalSecondaryIndexOverride,
    );
    helper.add(
      'localSecondaryIndexOverride',
      localSecondaryIndexOverride,
    );
    helper.add(
      'provisionedThroughputOverride',
      provisionedThroughputOverride,
    );
    helper.add(
      'sseSpecificationOverride',
      sseSpecificationOverride,
    );
    helper.add(
      'targetTableName',
      targetTableName,
    );
    return helper.toString();
  }
}

class RestoreTableFromBackupInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<RestoreTableFromBackupInput> {
  const RestoreTableFromBackupInputAwsJson10Serializer()
      : super('RestoreTableFromBackupInput');

  @override
  Iterable<Type> get types => const [
        RestoreTableFromBackupInput,
        _$RestoreTableFromBackupInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreTableFromBackupInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreTableFromBackupInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'BackupArn':
          result.backupArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'BillingModeOverride':
          if (value != null) {
            result.billingModeOverride = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BillingMode),
            ) as _i3.BillingMode);
          }
          break;
        case 'GlobalSecondaryIndexOverride':
          if (value != null) {
            result.globalSecondaryIndexOverride
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i4.GlobalSecondaryIndex)],
              ),
            ) as _i8.BuiltList<_i4.GlobalSecondaryIndex>));
          }
          break;
        case 'LocalSecondaryIndexOverride':
          if (value != null) {
            result.localSecondaryIndexOverride.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i5.LocalSecondaryIndex)],
              ),
            ) as _i8.BuiltList<_i5.LocalSecondaryIndex>));
          }
          break;
        case 'ProvisionedThroughputOverride':
          if (value != null) {
            result.provisionedThroughputOverride
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.ProvisionedThroughput),
            ) as _i6.ProvisionedThroughput));
          }
          break;
        case 'SSESpecificationOverride':
          if (value != null) {
            result.sseSpecificationOverride.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.SseSpecification),
            ) as _i7.SseSpecification));
          }
          break;
        case 'TargetTableName':
          result.targetTableName = (serializers.deserialize(
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
    final payload = (object as RestoreTableFromBackupInput);
    final result = <Object?>[
      'BackupArn',
      serializers.serialize(
        payload.backupArn,
        specifiedType: const FullType(String),
      ),
      'TargetTableName',
      serializers.serialize(
        payload.targetTableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.billingModeOverride != null) {
      result
        ..add('BillingModeOverride')
        ..add(serializers.serialize(
          payload.billingModeOverride!,
          specifiedType: const FullType(_i3.BillingMode),
        ));
    }
    if (payload.globalSecondaryIndexOverride != null) {
      result
        ..add('GlobalSecondaryIndexOverride')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexOverride!,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i4.GlobalSecondaryIndex)],
          ),
        ));
    }
    if (payload.localSecondaryIndexOverride != null) {
      result
        ..add('LocalSecondaryIndexOverride')
        ..add(serializers.serialize(
          payload.localSecondaryIndexOverride!,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i5.LocalSecondaryIndex)],
          ),
        ));
    }
    if (payload.provisionedThroughputOverride != null) {
      result
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          payload.provisionedThroughputOverride!,
          specifiedType: const FullType(_i6.ProvisionedThroughput),
        ));
    }
    if (payload.sseSpecificationOverride != null) {
      result
        ..add('SSESpecificationOverride')
        ..add(serializers.serialize(
          payload.sseSpecificationOverride!,
          specifiedType: const FullType(_i7.SseSpecification),
        ));
    }
    return result;
  }
}
