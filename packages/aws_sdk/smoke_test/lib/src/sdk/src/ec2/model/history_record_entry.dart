// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.history_record_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/event_information.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_event_type.dart';

part 'history_record_entry.g.dart';

/// Describes an event in the history of an EC2 Fleet.
abstract class HistoryRecordEntry
    with _i1.AWSEquatable<HistoryRecordEntry>
    implements Built<HistoryRecordEntry, HistoryRecordEntryBuilder> {
  /// Describes an event in the history of an EC2 Fleet.
  factory HistoryRecordEntry({
    EventInformation? eventInformation,
    FleetEventType? eventType,
    DateTime? timestamp,
  }) {
    return _$HistoryRecordEntry._(
      eventInformation: eventInformation,
      eventType: eventType,
      timestamp: timestamp,
    );
  }

  /// Describes an event in the history of an EC2 Fleet.
  factory HistoryRecordEntry.build(
          [void Function(HistoryRecordEntryBuilder) updates]) =
      _$HistoryRecordEntry;

  const HistoryRecordEntry._();

  static const List<_i2.SmithySerializer<HistoryRecordEntry>> serializers = [
    HistoryRecordEntryEc2QuerySerializer()
  ];

  /// Information about the event.
  EventInformation? get eventInformation;

  /// The event type.
  FleetEventType? get eventType;

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
    final helper = newBuiltValueToStringHelper('HistoryRecordEntry')
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

class HistoryRecordEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<HistoryRecordEntry> {
  const HistoryRecordEntryEc2QuerySerializer() : super('HistoryRecordEntry');

  @override
  Iterable<Type> get types => const [
        HistoryRecordEntry,
        _$HistoryRecordEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HistoryRecordEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryRecordEntryBuilder();
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
            specifiedType: const FullType(FleetEventType),
          ) as FleetEventType);
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
    HistoryRecordEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'HistoryRecordEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final HistoryRecordEntry(:eventInformation, :eventType, :timestamp) =
        object;
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
          specifiedType: const FullType.nullable(FleetEventType),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i2.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
