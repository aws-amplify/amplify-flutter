// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.aggregated_source_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_type.dart'
    as _i3;

part 'aggregated_source_status.g.dart';

/// The current sync status between the source and the aggregator account.
abstract class AggregatedSourceStatus
    with _i1.AWSEquatable<AggregatedSourceStatus>
    implements Built<AggregatedSourceStatus, AggregatedSourceStatusBuilder> {
  /// The current sync status between the source and the aggregator account.
  factory AggregatedSourceStatus({
    String? awsRegion,
    String? lastErrorCode,
    String? lastErrorMessage,
    _i2.AggregatedSourceStatusType? lastUpdateStatus,
    DateTime? lastUpdateTime,
    String? sourceId,
    _i3.AggregatedSourceType? sourceType,
  }) {
    return _$AggregatedSourceStatus._(
      awsRegion: awsRegion,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
      lastUpdateStatus: lastUpdateStatus,
      lastUpdateTime: lastUpdateTime,
      sourceId: sourceId,
      sourceType: sourceType,
    );
  }

  /// The current sync status between the source and the aggregator account.
  factory AggregatedSourceStatus.build(
          [void Function(AggregatedSourceStatusBuilder) updates]) =
      _$AggregatedSourceStatus;

  const AggregatedSourceStatus._();

  static const List<_i4.SmithySerializer> serializers = [
    AggregatedSourceStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregatedSourceStatusBuilder b) {}

  /// The region authorized to collect aggregated data.
  String? get awsRegion;

  /// The error code that Config returned when the source account aggregation last failed.
  String? get lastErrorCode;

  /// The message indicating that the source account aggregation failed due to an error.
  String? get lastErrorMessage;

  /// Filters the last updated status type.
  ///
  /// *   Valid value FAILED indicates errors while moving data.
  ///
  /// *   Valid value SUCCEEDED indicates the data was successfully moved.
  ///
  /// *   Valid value OUTDATED indicates the data is not the most recent.
  _i2.AggregatedSourceStatusType? get lastUpdateStatus;

  /// The time of the last update.
  DateTime? get lastUpdateTime;

  /// The source account ID or an organization.
  String? get sourceId;

  /// The source account or an organization.
  _i3.AggregatedSourceType? get sourceType;
  @override
  List<Object?> get props => [
        awsRegion,
        lastErrorCode,
        lastErrorMessage,
        lastUpdateStatus,
        lastUpdateTime,
        sourceId,
        sourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregatedSourceStatus');
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'lastErrorCode',
      lastErrorCode,
    );
    helper.add(
      'lastErrorMessage',
      lastErrorMessage,
    );
    helper.add(
      'lastUpdateStatus',
      lastUpdateStatus,
    );
    helper.add(
      'lastUpdateTime',
      lastUpdateTime,
    );
    helper.add(
      'sourceId',
      sourceId,
    );
    helper.add(
      'sourceType',
      sourceType,
    );
    return helper.toString();
  }
}

class AggregatedSourceStatusAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<AggregatedSourceStatus> {
  const AggregatedSourceStatusAwsJson11Serializer()
      : super('AggregatedSourceStatus');

  @override
  Iterable<Type> get types => const [
        AggregatedSourceStatus,
        _$AggregatedSourceStatus,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregatedSourceStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatedSourceStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AwsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastErrorCode':
          if (value != null) {
            result.lastErrorCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastErrorMessage':
          if (value != null) {
            result.lastErrorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdateStatus':
          if (value != null) {
            result.lastUpdateStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AggregatedSourceStatusType),
            ) as _i2.AggregatedSourceStatusType);
          }
          break;
        case 'LastUpdateTime':
          if (value != null) {
            result.lastUpdateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'SourceId':
          if (value != null) {
            result.sourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceType':
          if (value != null) {
            result.sourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AggregatedSourceType),
            ) as _i3.AggregatedSourceType);
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
    final payload = (object as AggregatedSourceStatus);
    final result = <Object?>[];
    if (payload.awsRegion != null) {
      result
        ..add('AwsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastErrorCode != null) {
      result
        ..add('LastErrorCode')
        ..add(serializers.serialize(
          payload.lastErrorCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastErrorMessage != null) {
      result
        ..add('LastErrorMessage')
        ..add(serializers.serialize(
          payload.lastErrorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdateStatus != null) {
      result
        ..add('LastUpdateStatus')
        ..add(serializers.serialize(
          payload.lastUpdateStatus!,
          specifiedType: const FullType(_i2.AggregatedSourceStatusType),
        ));
    }
    if (payload.lastUpdateTime != null) {
      result
        ..add('LastUpdateTime')
        ..add(serializers.serialize(
          payload.lastUpdateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.sourceId != null) {
      result
        ..add('SourceId')
        ..add(serializers.serialize(
          payload.sourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceType != null) {
      result
        ..add('SourceType')
        ..add(serializers.serialize(
          payload.sourceType!,
          specifiedType: const FullType(_i3.AggregatedSourceType),
        ));
    }
    return result;
  }
}
