// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence.dart';

part 'scheduled_instance.g.dart';

/// Describes a Scheduled Instance.
abstract class ScheduledInstance
    with _i1.AWSEquatable<ScheduledInstance>
    implements Built<ScheduledInstance, ScheduledInstanceBuilder> {
  /// Describes a Scheduled Instance.
  factory ScheduledInstance({
    String? availabilityZone,
    DateTime? createDate,
    String? hourlyPrice,
    int? instanceCount,
    String? instanceType,
    String? networkPlatform,
    DateTime? nextSlotStartTime,
    String? platform,
    DateTime? previousSlotEndTime,
    ScheduledInstanceRecurrence? recurrence,
    String? scheduledInstanceId,
    int? slotDurationInHours,
    DateTime? termEndDate,
    DateTime? termStartDate,
    int? totalScheduledInstanceHours,
  }) {
    instanceCount ??= 0;
    slotDurationInHours ??= 0;
    totalScheduledInstanceHours ??= 0;
    return _$ScheduledInstance._(
      availabilityZone: availabilityZone,
      createDate: createDate,
      hourlyPrice: hourlyPrice,
      instanceCount: instanceCount,
      instanceType: instanceType,
      networkPlatform: networkPlatform,
      nextSlotStartTime: nextSlotStartTime,
      platform: platform,
      previousSlotEndTime: previousSlotEndTime,
      recurrence: recurrence,
      scheduledInstanceId: scheduledInstanceId,
      slotDurationInHours: slotDurationInHours,
      termEndDate: termEndDate,
      termStartDate: termStartDate,
      totalScheduledInstanceHours: totalScheduledInstanceHours,
    );
  }

  /// Describes a Scheduled Instance.
  factory ScheduledInstance.build(
      [void Function(ScheduledInstanceBuilder) updates]) = _$ScheduledInstance;

  const ScheduledInstance._();

  static const List<_i2.SmithySerializer<ScheduledInstance>> serializers = [
    ScheduledInstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstanceBuilder b) {
    b
      ..instanceCount = 0
      ..slotDurationInHours = 0
      ..totalScheduledInstanceHours = 0;
  }

  /// The Availability Zone.
  String? get availabilityZone;

  /// The date when the Scheduled Instance was purchased.
  DateTime? get createDate;

  /// The hourly price for a single instance.
  String? get hourlyPrice;

  /// The number of instances.
  int get instanceCount;

  /// The instance type.
  String? get instanceType;

  /// The network platform.
  String? get networkPlatform;

  /// The time for the next schedule to start.
  DateTime? get nextSlotStartTime;

  /// The platform (`Linux/UNIX` or `Windows`).
  String? get platform;

  /// The time that the previous schedule ended or will end.
  DateTime? get previousSlotEndTime;

  /// The schedule recurrence.
  ScheduledInstanceRecurrence? get recurrence;

  /// The Scheduled Instance ID.
  String? get scheduledInstanceId;

  /// The number of hours in the schedule.
  int get slotDurationInHours;

  /// The end date for the Scheduled Instance.
  DateTime? get termEndDate;

  /// The start date for the Scheduled Instance.
  DateTime? get termStartDate;

  /// The total number of hours for a single instance for the entire term.
  int get totalScheduledInstanceHours;
  @override
  List<Object?> get props => [
        availabilityZone,
        createDate,
        hourlyPrice,
        instanceCount,
        instanceType,
        networkPlatform,
        nextSlotStartTime,
        platform,
        previousSlotEndTime,
        recurrence,
        scheduledInstanceId,
        slotDurationInHours,
        termEndDate,
        termStartDate,
        totalScheduledInstanceHours,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstance')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'hourlyPrice',
        hourlyPrice,
      )
      ..add(
        'instanceCount',
        instanceCount,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'networkPlatform',
        networkPlatform,
      )
      ..add(
        'nextSlotStartTime',
        nextSlotStartTime,
      )
      ..add(
        'platform',
        platform,
      )
      ..add(
        'previousSlotEndTime',
        previousSlotEndTime,
      )
      ..add(
        'recurrence',
        recurrence,
      )
      ..add(
        'scheduledInstanceId',
        scheduledInstanceId,
      )
      ..add(
        'slotDurationInHours',
        slotDurationInHours,
      )
      ..add(
        'termEndDate',
        termEndDate,
      )
      ..add(
        'termStartDate',
        termStartDate,
      )
      ..add(
        'totalScheduledInstanceHours',
        totalScheduledInstanceHours,
      );
    return helper.toString();
  }
}

class ScheduledInstanceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstance> {
  const ScheduledInstanceEc2QuerySerializer() : super('ScheduledInstance');

  @override
  Iterable<Type> get types => const [
        ScheduledInstance,
        _$ScheduledInstance,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'hourlyPrice':
          result.hourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkPlatform':
          result.networkPlatform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'nextSlotStartTime':
          result.nextSlotStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'previousSlotEndTime':
          result.previousSlotEndTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'recurrence':
          result.recurrence.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstanceRecurrence),
          ) as ScheduledInstanceRecurrence));
        case 'scheduledInstanceId':
          result.scheduledInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'slotDurationInHours':
          result.slotDurationInHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'termEndDate':
          result.termEndDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'termStartDate':
          result.termStartDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'totalScheduledInstanceHours':
          result.totalScheduledInstanceHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ScheduledInstance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstanceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstance(
      :availabilityZone,
      :createDate,
      :hourlyPrice,
      :instanceCount,
      :instanceType,
      :networkPlatform,
      :nextSlotStartTime,
      :platform,
      :previousSlotEndTime,
      :recurrence,
      :scheduledInstanceId,
      :slotDurationInHours,
      :termEndDate,
      :termStartDate,
      :totalScheduledInstanceHours
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i2.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (hourlyPrice != null) {
      result$
        ..add(const _i2.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          hourlyPrice,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    if (networkPlatform != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkPlatform'))
        ..add(serializers.serialize(
          networkPlatform,
          specifiedType: const FullType(String),
        ));
    }
    if (nextSlotStartTime != null) {
      result$
        ..add(const _i2.XmlElementName('NextSlotStartTime'))
        ..add(serializers.serialize(
          nextSlotStartTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i2.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType(String),
        ));
    }
    if (previousSlotEndTime != null) {
      result$
        ..add(const _i2.XmlElementName('PreviousSlotEndTime'))
        ..add(serializers.serialize(
          previousSlotEndTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (recurrence != null) {
      result$
        ..add(const _i2.XmlElementName('Recurrence'))
        ..add(serializers.serialize(
          recurrence,
          specifiedType: const FullType(ScheduledInstanceRecurrence),
        ));
    }
    if (scheduledInstanceId != null) {
      result$
        ..add(const _i2.XmlElementName('ScheduledInstanceId'))
        ..add(serializers.serialize(
          scheduledInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('SlotDurationInHours'))
      ..add(serializers.serialize(
        slotDurationInHours,
        specifiedType: const FullType(int),
      ));
    if (termEndDate != null) {
      result$
        ..add(const _i2.XmlElementName('TermEndDate'))
        ..add(serializers.serialize(
          termEndDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (termStartDate != null) {
      result$
        ..add(const _i2.XmlElementName('TermStartDate'))
        ..add(serializers.serialize(
          termStartDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('TotalScheduledInstanceHours'))
      ..add(serializers.serialize(
        totalScheduledInstanceHours,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
