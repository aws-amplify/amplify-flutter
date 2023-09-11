// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instance_availability; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence.dart';

part 'scheduled_instance_availability.g.dart';

/// Describes a schedule that is available for your Scheduled Instances.
abstract class ScheduledInstanceAvailability
    with
        _i1.AWSEquatable<ScheduledInstanceAvailability>
    implements
        Built<ScheduledInstanceAvailability,
            ScheduledInstanceAvailabilityBuilder> {
  /// Describes a schedule that is available for your Scheduled Instances.
  factory ScheduledInstanceAvailability({
    String? availabilityZone,
    int? availableInstanceCount,
    DateTime? firstSlotStartTime,
    String? hourlyPrice,
    String? instanceType,
    int? maxTermDurationInDays,
    int? minTermDurationInDays,
    String? networkPlatform,
    String? platform,
    String? purchaseToken,
    ScheduledInstanceRecurrence? recurrence,
    int? slotDurationInHours,
    int? totalScheduledInstanceHours,
  }) {
    availableInstanceCount ??= 0;
    maxTermDurationInDays ??= 0;
    minTermDurationInDays ??= 0;
    slotDurationInHours ??= 0;
    totalScheduledInstanceHours ??= 0;
    return _$ScheduledInstanceAvailability._(
      availabilityZone: availabilityZone,
      availableInstanceCount: availableInstanceCount,
      firstSlotStartTime: firstSlotStartTime,
      hourlyPrice: hourlyPrice,
      instanceType: instanceType,
      maxTermDurationInDays: maxTermDurationInDays,
      minTermDurationInDays: minTermDurationInDays,
      networkPlatform: networkPlatform,
      platform: platform,
      purchaseToken: purchaseToken,
      recurrence: recurrence,
      slotDurationInHours: slotDurationInHours,
      totalScheduledInstanceHours: totalScheduledInstanceHours,
    );
  }

  /// Describes a schedule that is available for your Scheduled Instances.
  factory ScheduledInstanceAvailability.build(
          [void Function(ScheduledInstanceAvailabilityBuilder) updates]) =
      _$ScheduledInstanceAvailability;

  const ScheduledInstanceAvailability._();

  static const List<_i2.SmithySerializer<ScheduledInstanceAvailability>>
      serializers = [ScheduledInstanceAvailabilityEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstanceAvailabilityBuilder b) {
    b
      ..availableInstanceCount = 0
      ..maxTermDurationInDays = 0
      ..minTermDurationInDays = 0
      ..slotDurationInHours = 0
      ..totalScheduledInstanceHours = 0;
  }

  /// The Availability Zone.
  String? get availabilityZone;

  /// The number of available instances.
  int get availableInstanceCount;

  /// The time period for the first schedule to start.
  DateTime? get firstSlotStartTime;

  /// The hourly price for a single instance.
  String? get hourlyPrice;

  /// The instance type. You can specify one of the C3, C4, M4, or R3 instance types.
  String? get instanceType;

  /// The maximum term. The only possible value is 365 days.
  int get maxTermDurationInDays;

  /// The minimum term. The only possible value is 365 days.
  int get minTermDurationInDays;

  /// The network platform.
  String? get networkPlatform;

  /// The platform (`Linux/UNIX` or `Windows`).
  String? get platform;

  /// The purchase token. This token expires in two hours.
  String? get purchaseToken;

  /// The schedule recurrence.
  ScheduledInstanceRecurrence? get recurrence;

  /// The number of hours in the schedule.
  int get slotDurationInHours;

  /// The total number of hours for a single instance for the entire term.
  int get totalScheduledInstanceHours;
  @override
  List<Object?> get props => [
        availabilityZone,
        availableInstanceCount,
        firstSlotStartTime,
        hourlyPrice,
        instanceType,
        maxTermDurationInDays,
        minTermDurationInDays,
        networkPlatform,
        platform,
        purchaseToken,
        recurrence,
        slotDurationInHours,
        totalScheduledInstanceHours,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstanceAvailability')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'availableInstanceCount',
        availableInstanceCount,
      )
      ..add(
        'firstSlotStartTime',
        firstSlotStartTime,
      )
      ..add(
        'hourlyPrice',
        hourlyPrice,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'maxTermDurationInDays',
        maxTermDurationInDays,
      )
      ..add(
        'minTermDurationInDays',
        minTermDurationInDays,
      )
      ..add(
        'networkPlatform',
        networkPlatform,
      )
      ..add(
        'platform',
        platform,
      )
      ..add(
        'purchaseToken',
        purchaseToken,
      )
      ..add(
        'recurrence',
        recurrence,
      )
      ..add(
        'slotDurationInHours',
        slotDurationInHours,
      )
      ..add(
        'totalScheduledInstanceHours',
        totalScheduledInstanceHours,
      );
    return helper.toString();
  }
}

class ScheduledInstanceAvailabilityEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstanceAvailability> {
  const ScheduledInstanceAvailabilityEc2QuerySerializer()
      : super('ScheduledInstanceAvailability');

  @override
  Iterable<Type> get types => const [
        ScheduledInstanceAvailability,
        _$ScheduledInstanceAvailability,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstanceAvailability deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstanceAvailabilityBuilder();
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
        case 'availableInstanceCount':
          result.availableInstanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'firstSlotStartTime':
          result.firstSlotStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'hourlyPrice':
          result.hourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maxTermDurationInDays':
          result.maxTermDurationInDays = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'minTermDurationInDays':
          result.minTermDurationInDays = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'networkPlatform':
          result.networkPlatform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'purchaseToken':
          result.purchaseToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'recurrence':
          result.recurrence.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstanceRecurrence),
          ) as ScheduledInstanceRecurrence));
        case 'slotDurationInHours':
          result.slotDurationInHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    ScheduledInstanceAvailability object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstanceAvailabilityResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstanceAvailability(
      :availabilityZone,
      :availableInstanceCount,
      :firstSlotStartTime,
      :hourlyPrice,
      :instanceType,
      :maxTermDurationInDays,
      :minTermDurationInDays,
      :networkPlatform,
      :platform,
      :purchaseToken,
      :recurrence,
      :slotDurationInHours,
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
    result$
      ..add(const _i2.XmlElementName('AvailableInstanceCount'))
      ..add(serializers.serialize(
        availableInstanceCount,
        specifiedType: const FullType(int),
      ));
    if (firstSlotStartTime != null) {
      result$
        ..add(const _i2.XmlElementName('FirstSlotStartTime'))
        ..add(serializers.serialize(
          firstSlotStartTime,
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
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('MaxTermDurationInDays'))
      ..add(serializers.serialize(
        maxTermDurationInDays,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('MinTermDurationInDays'))
      ..add(serializers.serialize(
        minTermDurationInDays,
        specifiedType: const FullType(int),
      ));
    if (networkPlatform != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkPlatform'))
        ..add(serializers.serialize(
          networkPlatform,
          specifiedType: const FullType(String),
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
    if (purchaseToken != null) {
      result$
        ..add(const _i2.XmlElementName('PurchaseToken'))
        ..add(serializers.serialize(
          purchaseToken,
          specifiedType: const FullType(String),
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
    result$
      ..add(const _i2.XmlElementName('SlotDurationInHours'))
      ..add(serializers.serialize(
        slotDurationInHours,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('TotalScheduledInstanceHours'))
      ..add(serializers.serialize(
        totalScheduledInstanceHours,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
