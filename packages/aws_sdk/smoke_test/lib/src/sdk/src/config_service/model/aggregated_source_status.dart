// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregated_source_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_status_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregated_source_type.dart'
    as _i2;

part 'aggregated_source_status.g.dart';

/// The current sync status between the source and the aggregator account.
abstract class AggregatedSourceStatus
    with _i1.AWSEquatable<AggregatedSourceStatus>
    implements Built<AggregatedSourceStatus, AggregatedSourceStatusBuilder> {
  /// The current sync status between the source and the aggregator account.
  factory AggregatedSourceStatus({
    String? sourceId,
    _i2.AggregatedSourceType? sourceType,
    String? awsRegion,
    _i3.AggregatedSourceStatusType? lastUpdateStatus,
    DateTime? lastUpdateTime,
    String? lastErrorCode,
    String? lastErrorMessage,
  }) {
    return _$AggregatedSourceStatus._(
      sourceId: sourceId,
      sourceType: sourceType,
      awsRegion: awsRegion,
      lastUpdateStatus: lastUpdateStatus,
      lastUpdateTime: lastUpdateTime,
      lastErrorCode: lastErrorCode,
      lastErrorMessage: lastErrorMessage,
    );
  }

  /// The current sync status between the source and the aggregator account.
  factory AggregatedSourceStatus.build(
          [void Function(AggregatedSourceStatusBuilder) updates]) =
      _$AggregatedSourceStatus;

  const AggregatedSourceStatus._();

  static const List<_i4.SmithySerializer<AggregatedSourceStatus>> serializers =
      [AggregatedSourceStatusAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregatedSourceStatusBuilder b) {}

  /// The source account ID or an organization.
  String? get sourceId;

  /// The source account or an organization.
  _i2.AggregatedSourceType? get sourceType;

  /// The region authorized to collect aggregated data.
  String? get awsRegion;

  /// Filters the last updated status type.
  ///
  /// *   Valid value FAILED indicates errors while moving data.
  ///
  /// *   Valid value SUCCEEDED indicates the data was successfully moved.
  ///
  /// *   Valid value OUTDATED indicates the data is not the most recent.
  _i3.AggregatedSourceStatusType? get lastUpdateStatus;

  /// The time of the last update.
  DateTime? get lastUpdateTime;

  /// The error code that Config returned when the source account aggregation last failed.
  String? get lastErrorCode;

  /// The message indicating that the source account aggregation failed due to an error.
  String? get lastErrorMessage;
  @override
  List<Object?> get props => [
        sourceId,
        sourceType,
        awsRegion,
        lastUpdateStatus,
        lastUpdateTime,
        lastErrorCode,
        lastErrorMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregatedSourceStatus')
      ..add(
        'sourceId',
        sourceId,
      )
      ..add(
        'sourceType',
        sourceType,
      )
      ..add(
        'awsRegion',
        awsRegion,
      )
      ..add(
        'lastUpdateStatus',
        lastUpdateStatus,
      )
      ..add(
        'lastUpdateTime',
        lastUpdateTime,
      )
      ..add(
        'lastErrorCode',
        lastErrorCode,
      )
      ..add(
        'lastErrorMessage',
        lastErrorMessage,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceId':
          result.sourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceType':
          result.sourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AggregatedSourceType),
          ) as _i2.AggregatedSourceType);
        case 'AwsRegion':
          result.awsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdateStatus':
          result.lastUpdateStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AggregatedSourceStatusType),
          ) as _i3.AggregatedSourceStatusType);
        case 'LastUpdateTime':
          result.lastUpdateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastErrorCode':
          result.lastErrorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastErrorMessage':
          result.lastErrorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AggregatedSourceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregatedSourceStatus(
      :sourceId,
      :sourceType,
      :awsRegion,
      :lastUpdateStatus,
      :lastUpdateTime,
      :lastErrorCode,
      :lastErrorMessage
    ) = object;
    if (sourceId != null) {
      result$
        ..add('SourceId')
        ..add(serializers.serialize(
          sourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceType != null) {
      result$
        ..add('SourceType')
        ..add(serializers.serialize(
          sourceType,
          specifiedType: const FullType(_i2.AggregatedSourceType),
        ));
    }
    if (awsRegion != null) {
      result$
        ..add('AwsRegion')
        ..add(serializers.serialize(
          awsRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdateStatus != null) {
      result$
        ..add('LastUpdateStatus')
        ..add(serializers.serialize(
          lastUpdateStatus,
          specifiedType: const FullType(_i3.AggregatedSourceStatusType),
        ));
    }
    if (lastUpdateTime != null) {
      result$
        ..add('LastUpdateTime')
        ..add(serializers.serialize(
          lastUpdateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (lastErrorCode != null) {
      result$
        ..add('LastErrorCode')
        ..add(serializers.serialize(
          lastErrorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (lastErrorMessage != null) {
      result$
        ..add('LastErrorMessage')
        ..add(serializers.serialize(
          lastErrorMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
