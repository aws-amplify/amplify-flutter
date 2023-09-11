// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instance_recurrence_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'scheduled_instance_recurrence_request.g.dart';

/// Describes the recurring schedule for a Scheduled Instance.
abstract class ScheduledInstanceRecurrenceRequest
    with
        _i1.AWSEquatable<ScheduledInstanceRecurrenceRequest>
    implements
        Built<ScheduledInstanceRecurrenceRequest,
            ScheduledInstanceRecurrenceRequestBuilder> {
  /// Describes the recurring schedule for a Scheduled Instance.
  factory ScheduledInstanceRecurrenceRequest({
    String? frequency,
    int? interval,
    List<int>? occurrenceDays,
    bool? occurrenceRelativeToEnd,
    String? occurrenceUnit,
  }) {
    interval ??= 0;
    occurrenceRelativeToEnd ??= false;
    return _$ScheduledInstanceRecurrenceRequest._(
      frequency: frequency,
      interval: interval,
      occurrenceDays:
          occurrenceDays == null ? null : _i2.BuiltList(occurrenceDays),
      occurrenceRelativeToEnd: occurrenceRelativeToEnd,
      occurrenceUnit: occurrenceUnit,
    );
  }

  /// Describes the recurring schedule for a Scheduled Instance.
  factory ScheduledInstanceRecurrenceRequest.build(
          [void Function(ScheduledInstanceRecurrenceRequestBuilder) updates]) =
      _$ScheduledInstanceRecurrenceRequest;

  const ScheduledInstanceRecurrenceRequest._();

  static const List<_i3.SmithySerializer<ScheduledInstanceRecurrenceRequest>>
      serializers = [ScheduledInstanceRecurrenceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstanceRecurrenceRequestBuilder b) {
    b
      ..interval = 0
      ..occurrenceRelativeToEnd = false;
  }

  /// The frequency (`Daily`, `Weekly`, or `Monthly`).
  String? get frequency;

  /// The interval quantity. The interval unit depends on the value of `Frequency`. For example, every 2 weeks or every 2 months.
  int get interval;

  /// The days. For a monthly schedule, this is one or more days of the month (1-31). For a weekly schedule, this is one or more days of the week (1-7, where 1 is Sunday). You can't specify this value with a daily schedule. If the occurrence is relative to the end of the month, you can specify only a single day.
  _i2.BuiltList<int>? get occurrenceDays;

  /// Indicates whether the occurrence is relative to the end of the specified week or month. You can't specify this value with a daily schedule.
  bool get occurrenceRelativeToEnd;

  /// The unit for `OccurrenceDays` (`DayOfWeek` or `DayOfMonth`). This value is required for a monthly schedule. You can't specify `DayOfWeek` with a weekly schedule. You can't specify this value with a daily schedule.
  String? get occurrenceUnit;
  @override
  List<Object?> get props => [
        frequency,
        interval,
        occurrenceDays,
        occurrenceRelativeToEnd,
        occurrenceUnit,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstanceRecurrenceRequest')
          ..add(
            'frequency',
            frequency,
          )
          ..add(
            'interval',
            interval,
          )
          ..add(
            'occurrenceDays',
            occurrenceDays,
          )
          ..add(
            'occurrenceRelativeToEnd',
            occurrenceRelativeToEnd,
          )
          ..add(
            'occurrenceUnit',
            occurrenceUnit,
          );
    return helper.toString();
  }
}

class ScheduledInstanceRecurrenceRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ScheduledInstanceRecurrenceRequest> {
  const ScheduledInstanceRecurrenceRequestEc2QuerySerializer()
      : super('ScheduledInstanceRecurrenceRequest');

  @override
  Iterable<Type> get types => const [
        ScheduledInstanceRecurrenceRequest,
        _$ScheduledInstanceRecurrenceRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstanceRecurrenceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstanceRecurrenceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Frequency':
          result.frequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Interval':
          result.interval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'OccurrenceDay':
          result.occurrenceDays.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'OccurenceDay',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
        case 'OccurrenceRelativeToEnd':
          result.occurrenceRelativeToEnd = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'OccurrenceUnit':
          result.occurrenceUnit = (serializers.deserialize(
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
    ScheduledInstanceRecurrenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ScheduledInstanceRecurrenceRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstanceRecurrenceRequest(
      :frequency,
      :interval,
      :occurrenceDays,
      :occurrenceRelativeToEnd,
      :occurrenceUnit
    ) = object;
    if (frequency != null) {
      result$
        ..add(const _i3.XmlElementName('Frequency'))
        ..add(serializers.serialize(
          frequency,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Interval'))
      ..add(serializers.serialize(
        interval,
        specifiedType: const FullType(int),
      ));
    if (occurrenceDays != null) {
      result$
        ..add(const _i3.XmlElementName('OccurrenceDay'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'OccurenceDay',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          occurrenceDays,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('OccurrenceRelativeToEnd'))
      ..add(serializers.serialize(
        occurrenceRelativeToEnd,
        specifiedType: const FullType(bool),
      ));
    if (occurrenceUnit != null) {
      result$
        ..add(const _i3.XmlElementName('OccurrenceUnit'))
        ..add(serializers.serialize(
          occurrenceUnit,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
