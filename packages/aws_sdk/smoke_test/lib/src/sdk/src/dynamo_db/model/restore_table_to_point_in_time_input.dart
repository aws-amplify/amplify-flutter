// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.restore_table_to_point_in_time_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

part 'restore_table_to_point_in_time_input.g.dart';

abstract class RestoreTableToPointInTimeInput
    with
        _i1.HttpInput<RestoreTableToPointInTimeInput>,
        _i2.AWSEquatable<RestoreTableToPointInTimeInput>
    implements
        Built<RestoreTableToPointInTimeInput,
            RestoreTableToPointInTimeInputBuilder> {
  factory RestoreTableToPointInTimeInput({
    _i3.BillingMode? billingModeOverride,
    List<_i4.GlobalSecondaryIndex>? globalSecondaryIndexOverride,
    List<_i5.LocalSecondaryIndex>? localSecondaryIndexOverride,
    _i6.ProvisionedThroughput? provisionedThroughputOverride,
    DateTime? restoreDateTime,
    String? sourceTableArn,
    String? sourceTableName,
    _i7.SseSpecification? sseSpecificationOverride,
    required String targetTableName,
    bool? useLatestRestorableTime,
  }) {
    return _$RestoreTableToPointInTimeInput._(
      billingModeOverride: billingModeOverride,
      globalSecondaryIndexOverride: globalSecondaryIndexOverride == null
          ? null
          : _i8.BuiltList(globalSecondaryIndexOverride),
      localSecondaryIndexOverride: localSecondaryIndexOverride == null
          ? null
          : _i8.BuiltList(localSecondaryIndexOverride),
      provisionedThroughputOverride: provisionedThroughputOverride,
      restoreDateTime: restoreDateTime,
      sourceTableArn: sourceTableArn,
      sourceTableName: sourceTableName,
      sseSpecificationOverride: sseSpecificationOverride,
      targetTableName: targetTableName,
      useLatestRestorableTime: useLatestRestorableTime,
    );
  }

  factory RestoreTableToPointInTimeInput.build(
          [void Function(RestoreTableToPointInTimeInputBuilder) updates]) =
      _$RestoreTableToPointInTimeInput;

  const RestoreTableToPointInTimeInput._();

  factory RestoreTableToPointInTimeInput.fromRequest(
    RestoreTableToPointInTimeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RestoreTableToPointInTimeInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableToPointInTimeInputBuilder b) {}

  /// The billing mode of the restored table.
  _i3.BillingMode? get billingModeOverride;

  /// List of global secondary indexes for the restored table. The indexes provided should match existing secondary indexes. You can choose to exclude some or all of the indexes at the time of restore.
  _i8.BuiltList<_i4.GlobalSecondaryIndex>? get globalSecondaryIndexOverride;

  /// List of local secondary indexes for the restored table. The indexes provided should match existing secondary indexes. You can choose to exclude some or all of the indexes at the time of restore.
  _i8.BuiltList<_i5.LocalSecondaryIndex>? get localSecondaryIndexOverride;

  /// Provisioned throughput settings for the restored table.
  _i6.ProvisionedThroughput? get provisionedThroughputOverride;

  /// Time in the past to restore the table to.
  DateTime? get restoreDateTime;

  /// The DynamoDB table that will be restored. This value is an Amazon Resource Name (ARN).
  String? get sourceTableArn;

  /// Name of the source table that is being restored.
  String? get sourceTableName;

  /// The new server-side encryption settings for the restored table.
  _i7.SseSpecification? get sseSpecificationOverride;

  /// The name of the new table to which it must be restored to.
  String get targetTableName;

  /// Restore the table to the latest possible time. `LatestRestorableDateTime` is typically 5 minutes before the current time.
  bool? get useLatestRestorableTime;
  @override
  RestoreTableToPointInTimeInput getPayload() => this;
  @override
  List<Object?> get props => [
        billingModeOverride,
        globalSecondaryIndexOverride,
        localSecondaryIndexOverride,
        provisionedThroughputOverride,
        restoreDateTime,
        sourceTableArn,
        sourceTableName,
        sseSpecificationOverride,
        targetTableName,
        useLatestRestorableTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RestoreTableToPointInTimeInput');
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
      'restoreDateTime',
      restoreDateTime,
    );
    helper.add(
      'sourceTableArn',
      sourceTableArn,
    );
    helper.add(
      'sourceTableName',
      sourceTableName,
    );
    helper.add(
      'sseSpecificationOverride',
      sseSpecificationOverride,
    );
    helper.add(
      'targetTableName',
      targetTableName,
    );
    helper.add(
      'useLatestRestorableTime',
      useLatestRestorableTime,
    );
    return helper.toString();
  }
}

class RestoreTableToPointInTimeInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<RestoreTableToPointInTimeInput> {
  const RestoreTableToPointInTimeInputAwsJson10Serializer()
      : super('RestoreTableToPointInTimeInput');

  @override
  Iterable<Type> get types => const [
        RestoreTableToPointInTimeInput,
        _$RestoreTableToPointInTimeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreTableToPointInTimeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreTableToPointInTimeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
        case 'RestoreDateTime':
          if (value != null) {
            result.restoreDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'SourceTableArn':
          if (value != null) {
            result.sourceTableArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceTableName':
          if (value != null) {
            result.sourceTableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'UseLatestRestorableTime':
          if (value != null) {
            result.useLatestRestorableTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as RestoreTableToPointInTimeInput);
    final result = <Object?>[
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
    if (payload.restoreDateTime != null) {
      result
        ..add('RestoreDateTime')
        ..add(serializers.serialize(
          payload.restoreDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.sourceTableArn != null) {
      result
        ..add('SourceTableArn')
        ..add(serializers.serialize(
          payload.sourceTableArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceTableName != null) {
      result
        ..add('SourceTableName')
        ..add(serializers.serialize(
          payload.sourceTableName!,
          specifiedType: const FullType(String),
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
    if (payload.useLatestRestorableTime != null) {
      result
        ..add('UseLatestRestorableTime')
        ..add(serializers.serialize(
          payload.useLatestRestorableTime!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
