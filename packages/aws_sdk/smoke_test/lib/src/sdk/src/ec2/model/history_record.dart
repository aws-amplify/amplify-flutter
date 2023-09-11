// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.history_record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/event_information.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/event_type.dart';

part 'history_record.g.dart';

/// Describes an event in the history of the Spot Fleet request.
abstract class HistoryRecord
    with _i1.AWSEquatable<HistoryRecord>
    implements Built<HistoryRecord, HistoryRecordBuilder> {
  /// Describes an event in the history of the Spot Fleet request.
  factory HistoryRecord({
    EventInformation? eventInformation,
    EventType? eventType,
    DateTime? timestamp,
  }) {
    return _$HistoryRecord._(
      eventInformation: eventInformation,
      eventType: eventType,
      timestamp: timestamp,
    );
  }

  /// Describes an event in the history of the Spot Fleet request.
  factory HistoryRecord.build([void Function(HistoryRecordBuilder) updates]) =
      _$HistoryRecord;

  const HistoryRecord._();

  static const List<_i2.SmithySerializer<HistoryRecord>> serializers = [
    HistoryRecordEc2QuerySerializer()
  ];

  /// Information about the event.
  EventInformation? get eventInformation;

  /// The event type.
  ///
  /// *   `error` \- An error with the Spot Fleet request.
  ///
  /// *   `fleetRequestChange` \- A change in the status or configuration of the Spot Fleet request.
  ///
  /// *   `instanceChange` \- An instance was launched or terminated.
  ///
  /// *   `Information` \- An informational event.
  EventType? get eventType;

  /// The date and time of the event, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        eventInformation,
        eventType,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HistoryRecord')
      ..add(
        'eventInformation',
        eventInformation,
      )
      ..add(
        'eventType',
        eventType,
      )
      ..add(
        'timestamp',
        timestamp,
      );
    return helper.toString();
  }
}

class HistoryRecordEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<HistoryRecord> {
  const HistoryRecordEc2QuerySerializer() : super('HistoryRecord');

  @override
  Iterable<Type> get types => const [
        HistoryRecord,
        _$HistoryRecord,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HistoryRecord deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryRecordBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'eventInformation':
          result.eventInformation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EventInformation),
          ) as EventInformation));
        case 'eventType':
          result.eventType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EventType),
          ) as EventType);
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HistoryRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'HistoryRecordResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final HistoryRecord(:eventInformation, :eventType, :timestamp) = object;
    if (eventInformation != null) {
      result$
        ..add(const _i2.XmlElementName('EventInformation'))
        ..add(serializers.serialize(
          eventInformation,
          specifiedType: const FullType(EventInformation),
        ));
    }
    if (eventType != null) {
      result$
        ..add(const _i2.XmlElementName('EventType'))
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType(EventType),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i2.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
