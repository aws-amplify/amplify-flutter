// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.restore_table_topoint_intime_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/billing_mode.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_specification.dart'
    as _i8;

part 'restore_table_topoint_intime_input.g.dart';

abstract class RestoreTableTopointIntimeInput
    with
        _i1.HttpInput<RestoreTableTopointIntimeInput>,
        _i2.AWSEquatable<RestoreTableTopointIntimeInput>
    implements
        Built<RestoreTableTopointIntimeInput,
            RestoreTableTopointIntimeInputBuilder> {
  factory RestoreTableTopointIntimeInput({
    _i3.BillingMode? billingModeOverride,
    _i4.BuiltList<_i5.GlobalSecondaryIndex>? globalSecondaryIndexOverride,
    _i4.BuiltList<_i6.LocalSecondaryIndex>? localSecondaryIndexOverride,
    _i7.ProvisionedThroughput? provisionedThroughputOverride,
    DateTime? restoreDateTime,
    String? sourceTableArn,
    String? sourceTableName,
    _i8.SseSpecification? sseSpecificationOverride,
    required String targetTableName,
    bool? useLatestRestorableTime,
  }) {
    return _$RestoreTableTopointIntimeInput._(
      billingModeOverride: billingModeOverride,
      globalSecondaryIndexOverride: globalSecondaryIndexOverride,
      localSecondaryIndexOverride: localSecondaryIndexOverride,
      provisionedThroughputOverride: provisionedThroughputOverride,
      restoreDateTime: restoreDateTime,
      sourceTableArn: sourceTableArn,
      sourceTableName: sourceTableName,
      sseSpecificationOverride: sseSpecificationOverride,
      targetTableName: targetTableName,
      useLatestRestorableTime: useLatestRestorableTime,
    );
  }

  factory RestoreTableTopointIntimeInput.build(
          [void Function(RestoreTableTopointIntimeInputBuilder) updates]) =
      _$RestoreTableTopointIntimeInput;

  const RestoreTableTopointIntimeInput._();

  factory RestoreTableTopointIntimeInput.fromRequest(
    RestoreTableTopointIntimeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RestoreTableTopointIntimeInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreTableTopointIntimeInputBuilder b) {}

  /// The billing mode of the restored table.
  _i3.BillingMode? get billingModeOverride;

  /// List of global secondary indexes for the restored table. The indexes provided should match existing secondary indexes. You can choose to exclude some or all of the indexes at the time of restore.
  _i4.BuiltList<_i5.GlobalSecondaryIndex>? get globalSecondaryIndexOverride;

  /// List of local secondary indexes for the restored table. The indexes provided should match existing secondary indexes. You can choose to exclude some or all of the indexes at the time of restore.
  _i4.BuiltList<_i6.LocalSecondaryIndex>? get localSecondaryIndexOverride;

  /// Provisioned throughput settings for the restored table.
  _i7.ProvisionedThroughput? get provisionedThroughputOverride;

  /// Time in the past to restore the table to.
  DateTime? get restoreDateTime;

  /// The DynamoDB table that will be restored. This value is an Amazon Resource Name (ARN).
  String? get sourceTableArn;

  /// Name of the source table that is being restored.
  String? get sourceTableName;

  /// The new server-side encryption settings for the restored table.
  _i8.SseSpecification? get sseSpecificationOverride;

  /// The name of the new table to which it must be restored to.
  String get targetTableName;

  /// Restore the table to the latest possible time. `LatestRestorableDateTime` is typically 5 minutes before the current time.
  bool? get useLatestRestorableTime;
  @override
  RestoreTableTopointIntimeInput getPayload() => this;
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
        newBuiltValueToStringHelper('RestoreTableTopointIntimeInput');
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

class RestoreTableTopointIntimeInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<RestoreTableTopointIntimeInput> {
  const RestoreTableTopointIntimeInputAwsJson10Serializer()
      : super('RestoreTableTopointIntimeInput');

  @override
  Iterable<Type> get types => const [
        RestoreTableTopointIntimeInput,
        _$RestoreTableTopointIntimeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  RestoreTableTopointIntimeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreTableTopointIntimeInputBuilder();
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
                _i4.BuiltList,
                [FullType(_i5.GlobalSecondaryIndex)],
              ),
            ) as _i4.BuiltList<_i5.GlobalSecondaryIndex>));
          }
          break;
        case 'LocalSecondaryIndexOverride':
          if (value != null) {
            result.localSecondaryIndexOverride.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i6.LocalSecondaryIndex)],
              ),
            ) as _i4.BuiltList<_i6.LocalSecondaryIndex>));
          }
          break;
        case 'ProvisionedThroughputOverride':
          if (value != null) {
            result.provisionedThroughputOverride
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.ProvisionedThroughput),
            ) as _i7.ProvisionedThroughput));
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
              specifiedType: const FullType(_i8.SseSpecification),
            ) as _i8.SseSpecification));
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
    final payload = (object as RestoreTableTopointIntimeInput);
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
            _i4.BuiltList,
            [FullType(_i5.GlobalSecondaryIndex)],
          ),
        ));
    }
    if (payload.localSecondaryIndexOverride != null) {
      result
        ..add('LocalSecondaryIndexOverride')
        ..add(serializers.serialize(
          payload.localSecondaryIndexOverride!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i6.LocalSecondaryIndex)],
          ),
        ));
    }
    if (payload.provisionedThroughputOverride != null) {
      result
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          payload.provisionedThroughputOverride!,
          specifiedType: const FullType(_i7.ProvisionedThroughput),
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
          specifiedType: const FullType(_i8.SseSpecification),
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
