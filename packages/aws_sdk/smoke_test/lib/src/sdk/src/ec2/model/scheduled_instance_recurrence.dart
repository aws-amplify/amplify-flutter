// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instance_recurrence; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'scheduled_instance_recurrence.g.dart';

/// Describes the recurring schedule for a Scheduled Instance.
abstract class ScheduledInstanceRecurrence
    with _i1.AWSEquatable<ScheduledInstanceRecurrence>
    implements
        Built<ScheduledInstanceRecurrence, ScheduledInstanceRecurrenceBuilder> {
  /// Describes the recurring schedule for a Scheduled Instance.
  factory ScheduledInstanceRecurrence({
    String? frequency,
    int? interval,
    List<int>? occurrenceDaySet,
    bool? occurrenceRelativeToEnd,
    String? occurrenceUnit,
  }) {
    interval ??= 0;
    occurrenceRelativeToEnd ??= false;
    return _$ScheduledInstanceRecurrence._(
      frequency: frequency,
      interval: interval,
      occurrenceDaySet:
          occurrenceDaySet == null ? null : _i2.BuiltList(occurrenceDaySet),
      occurrenceRelativeToEnd: occurrenceRelativeToEnd,
      occurrenceUnit: occurrenceUnit,
    );
  }

  /// Describes the recurring schedule for a Scheduled Instance.
  factory ScheduledInstanceRecurrence.build(
          [void Function(ScheduledInstanceRecurrenceBuilder) updates]) =
      _$ScheduledInstanceRecurrence;

  const ScheduledInstanceRecurrence._();

  static const List<_i3.SmithySerializer<ScheduledInstanceRecurrence>>
      serializers = [ScheduledInstanceRecurrenceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstanceRecurrenceBuilder b) {
    b
      ..interval = 0
      ..occurrenceRelativeToEnd = false;
  }

  /// The frequency (`Daily`, `Weekly`, or `Monthly`).
  String? get frequency;

  /// The interval quantity. The interval unit depends on the value of `frequency`. For example, every 2 weeks or every 2 months.
  int get interval;

  /// The days. For a monthly schedule, this is one or more days of the month (1-31). For a weekly schedule, this is one or more days of the week (1-7, where 1 is Sunday).
  _i2.BuiltList<int>? get occurrenceDaySet;

  /// Indicates whether the occurrence is relative to the end of the specified week or month.
  bool get occurrenceRelativeToEnd;

  /// The unit for `occurrenceDaySet` (`DayOfWeek` or `DayOfMonth`).
  String? get occurrenceUnit;
  @override
  List<Object?> get props => [
        frequency,
        interval,
        occurrenceDaySet,
        occurrenceRelativeToEnd,
        occurrenceUnit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstanceRecurrence')
      ..add(
        'frequency',
        frequency,
      )
      ..add(
        'interval',
        interval,
      )
      ..add(
        'occurrenceDaySet',
        occurrenceDaySet,
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

class ScheduledInstanceRecurrenceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ScheduledInstanceRecurrence> {
  const ScheduledInstanceRecurrenceEc2QuerySerializer()
      : super('ScheduledInstanceRecurrence');

  @override
  Iterable<Type> get types => const [
        ScheduledInstanceRecurrence,
        _$ScheduledInstanceRecurrence,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstanceRecurrence deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstanceRecurrenceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'frequency':
          result.frequency = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'interval':
          result.interval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'occurrenceDaySet':
          result.occurrenceDaySet.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
        case 'occurrenceRelativeToEnd':
          result.occurrenceRelativeToEnd = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'occurrenceUnit':
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
    ScheduledInstanceRecurrence object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ScheduledInstanceRecurrenceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstanceRecurrence(
      :frequency,
      :interval,
      :occurrenceDaySet,
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
    if (occurrenceDaySet != null) {
      result$
        ..add(const _i3.XmlElementName('OccurrenceDaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          occurrenceDaySet,
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
