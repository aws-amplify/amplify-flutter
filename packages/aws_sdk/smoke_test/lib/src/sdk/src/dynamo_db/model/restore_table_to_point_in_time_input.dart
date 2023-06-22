// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? sourceTableArn,
    String? sourceTableName,
    required String targetTableName,
    bool? useLatestRestorableTime,
    DateTime? restoreDateTime,
    _i3.BillingMode? billingModeOverride,
    List<_i4.GlobalSecondaryIndex>? globalSecondaryIndexOverride,
    List<_i5.LocalSecondaryIndex>? localSecondaryIndexOverride,
    _i6.ProvisionedThroughput? provisionedThroughputOverride,
    _i7.SseSpecification? sseSpecificationOverride,
  }) {
    return _$RestoreTableToPointInTimeInput._(
      sourceTableArn: sourceTableArn,
      sourceTableName: sourceTableName,
      targetTableName: targetTableName,
      useLatestRestorableTime: useLatestRestorableTime,
      restoreDateTime: restoreDateTime,
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

  static const List<_i1.SmithySerializer<RestoreTableToPointInTimeInput>>
      serializers = [RestoreTableToPointInTimeInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableToPointInTimeInputBuilder b) {}

  /// The DynamoDB table that will be restored. This value is an Amazon Resource Name (ARN).
  String? get sourceTableArn;

  /// Name of the source table that is being restored.
  String? get sourceTableName;

  /// The name of the new table to which it must be restored to.
  String get targetTableName;

  /// Restore the table to the latest possible time. `LatestRestorableDateTime` is typically 5 minutes before the current time.
  bool? get useLatestRestorableTime;

  /// Time in the past to restore the table to.
  DateTime? get restoreDateTime;

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
  RestoreTableToPointInTimeInput getPayload() => this;
  @override
  List<Object?> get props => [
        sourceTableArn,
        sourceTableName,
        targetTableName,
        useLatestRestorableTime,
        restoreDateTime,
        billingModeOverride,
        globalSecondaryIndexOverride,
        localSecondaryIndexOverride,
        provisionedThroughputOverride,
        sseSpecificationOverride,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreTableToPointInTimeInput')
      ..add(
        'sourceTableArn',
        sourceTableArn,
      )
      ..add(
        'sourceTableName',
        sourceTableName,
      )
      ..add(
        'targetTableName',
        targetTableName,
      )
      ..add(
        'useLatestRestorableTime',
        useLatestRestorableTime,
      )
      ..add(
        'restoreDateTime',
        restoreDateTime,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceTableArn':
          result.sourceTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceTableName':
          result.sourceTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetTableName':
          result.targetTableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UseLatestRestorableTime':
          result.useLatestRestorableTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RestoreDateTime':
          result.restoreDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    RestoreTableToPointInTimeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestoreTableToPointInTimeInput(
      :sourceTableArn,
      :sourceTableName,
      :targetTableName,
      :useLatestRestorableTime,
      :restoreDateTime,
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
    ]);
    if (sourceTableArn != null) {
      result$
        ..add('SourceTableArn')
        ..add(serializers.serialize(
          sourceTableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceTableName != null) {
      result$
        ..add('SourceTableName')
        ..add(serializers.serialize(
          sourceTableName,
          specifiedType: const FullType(String),
        ));
    }
    if (useLatestRestorableTime != null) {
      result$
        ..add('UseLatestRestorableTime')
        ..add(serializers.serialize(
          useLatestRestorableTime,
          specifiedType: const FullType(bool),
        ));
    }
    if (restoreDateTime != null) {
      result$
        ..add('RestoreDateTime')
        ..add(serializers.serialize(
          restoreDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
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
