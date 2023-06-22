// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String targetTableName,
    required String backupArn,
    _i3.BillingMode? billingModeOverride,
    List<_i4.GlobalSecondaryIndex>? globalSecondaryIndexOverride,
    List<_i5.LocalSecondaryIndex>? localSecondaryIndexOverride,
    _i6.ProvisionedThroughput? provisionedThroughputOverride,
    _i7.SseSpecification? sseSpecificationOverride,
  }) {
    return _$RestoreTableFromBackupInput._(
      targetTableName: targetTableName,
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

  static const List<_i1.SmithySerializer<RestoreTableFromBackupInput>>
      serializers = [RestoreTableFromBackupInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableFromBackupInputBuilder b) {}

  /// The name of the new table to which the backup must be restored.
  String get targetTableName;

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
  @override
  RestoreTableFromBackupInput getPayload() => this;
  @override
  List<Object?> get props => [
        targetTableName,
        backupArn,
        billingModeOverride,
        globalSecondaryIndexOverride,
        localSecondaryIndexOverride,
        provisionedThroughputOverride,
        sseSpecificationOverride,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreTableFromBackupInput')
      ..add(
        'targetTableName',
        targetTableName,
      )
      ..add(
        'backupArn',
        backupArn,
      )
      ..add(
        'billingModeOverride',
        billingModeOverride,
      )
      ..add(
        'globalSecondaryIndexOverride',
        globalSecondaryIndexOverride,
      )
      ..add(
        'localSecondaryIndexOverride',
        localSecondaryIndexOverride,
      )
      ..add(
        'provisionedThroughputOverride',
        provisionedThroughputOverride,
      )
      ..add(
        'sseSpecificationOverride',
        sseSpecificationOverride,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TargetTableName':
          result.targetTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BackupArn':
          result.backupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BillingModeOverride':
          result.billingModeOverride = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.BillingMode),
          ) as _i3.BillingMode);
        case 'GlobalSecondaryIndexOverride':
          result.globalSecondaryIndexOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i4.GlobalSecondaryIndex)],
            ),
          ) as _i8.BuiltList<_i4.GlobalSecondaryIndex>));
        case 'LocalSecondaryIndexOverride':
          result.localSecondaryIndexOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i5.LocalSecondaryIndex)],
            ),
          ) as _i8.BuiltList<_i5.LocalSecondaryIndex>));
        case 'ProvisionedThroughputOverride':
          result.provisionedThroughputOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ProvisionedThroughput),
          ) as _i6.ProvisionedThroughput));
        case 'SSESpecificationOverride':
          result.sseSpecificationOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.SseSpecification),
          ) as _i7.SseSpecification));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RestoreTableFromBackupInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestoreTableFromBackupInput(
      :targetTableName,
      :backupArn,
      :billingModeOverride,
      :globalSecondaryIndexOverride,
      :localSecondaryIndexOverride,
      :provisionedThroughputOverride,
      :sseSpecificationOverride
    ) = object;
    result$.addAll([
      'TargetTableName',
      serializers.serialize(
        targetTableName,
        specifiedType: const FullType(String),
      ),
      'BackupArn',
      serializers.serialize(
        backupArn,
        specifiedType: const FullType(String),
      ),
    ]);
    if (billingModeOverride != null) {
      result$
        ..add('BillingModeOverride')
        ..add(serializers.serialize(
          billingModeOverride,
          specifiedType: const FullType(_i3.BillingMode),
        ));
    }
    if (globalSecondaryIndexOverride != null) {
      result$
        ..add('GlobalSecondaryIndexOverride')
        ..add(serializers.serialize(
          globalSecondaryIndexOverride,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i4.GlobalSecondaryIndex)],
          ),
        ));
    }
    if (localSecondaryIndexOverride != null) {
      result$
        ..add('LocalSecondaryIndexOverride')
        ..add(serializers.serialize(
          localSecondaryIndexOverride,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i5.LocalSecondaryIndex)],
          ),
        ));
    }
    if (provisionedThroughputOverride != null) {
      result$
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          provisionedThroughputOverride,
          specifiedType: const FullType(_i6.ProvisionedThroughput),
        ));
    }
    if (sseSpecificationOverride != null) {
      result$
        ..add('SSESpecificationOverride')
        ..add(serializers.serialize(
          sseSpecificationOverride,
          specifiedType: const FullType(_i7.SseSpecification),
        ));
    }
    return result$;
  }
}
