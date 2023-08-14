// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.event_information; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'event_information.g.dart';

/// Describes an EC2 Fleet or Spot Fleet event.
abstract class EventInformation
    with _i1.AWSEquatable<EventInformation>
    implements Built<EventInformation, EventInformationBuilder> {
  /// Describes an EC2 Fleet or Spot Fleet event.
  factory EventInformation({
    String? eventDescription,
    String? eventSubType,
    String? instanceId,
  }) {
    return _$EventInformation._(
      eventDescription: eventDescription,
      eventSubType: eventSubType,
      instanceId: instanceId,
    );
  }

  /// Describes an EC2 Fleet or Spot Fleet event.
  factory EventInformation.build(
      [void Function(EventInformationBuilder) updates]) = _$EventInformation;

  const EventInformation._();

  static const List<_i2.SmithySerializer<EventInformation>> serializers = [
    EventInformationEc2QuerySerializer()
  ];

  /// The description of the event.
  String? get eventDescription;

  /// The event.
  ///
  /// `error` events:
  ///
  /// *   `iamFleetRoleInvalid` \- The EC2 Fleet or Spot Fleet does not have the required permissions either to launch or terminate an instance.
  ///
  /// *   `allLaunchSpecsTemporarilyBlacklisted` \- None of the configurations are valid, and several attempts to launch instances have failed. For more information, see the description of the event.
  ///
  /// *   `spotInstanceCountLimitExceeded` \- You've reached the limit on the number of Spot Instances that you can launch.
  ///
  /// *   `spotFleetRequestConfigurationInvalid` \- The configuration is not valid. For more information, see the description of the event.
  ///
  ///
  /// `fleetRequestChange` events:
  ///
  /// *   `active` \- The EC2 Fleet or Spot Fleet request has been validated and Amazon EC2 is attempting to maintain the target number of running instances.
  ///
  /// *   `deleted` (EC2 Fleet) / `cancelled` (Spot Fleet) - The EC2 Fleet is deleted or the Spot Fleet request is canceled and has no running instances. The EC2 Fleet or Spot Fleet will be deleted two days after its instances are terminated.
  ///
  /// *   `deleted_running` (EC2 Fleet) / `cancelled_running` (Spot Fleet) - The EC2 Fleet is deleted or the Spot Fleet request is canceled and does not launch additional instances. Its existing instances continue to run until they are interrupted or terminated. The request remains in this state until all instances are interrupted or terminated.
  ///
  /// *   `deleted_terminating` (EC2 Fleet) / `cancelled_terminating` (Spot Fleet) - The EC2 Fleet is deleted or the Spot Fleet request is canceled and its instances are terminating. The request remains in this state until all instances are terminated.
  ///
  /// *   `expired` \- The EC2 Fleet or Spot Fleet request has expired. If the request was created with `TerminateInstancesWithExpiration` set, a subsequent `terminated` event indicates that the instances are terminated.
  ///
  /// *   `modify\_in\_progress` \- The EC2 Fleet or Spot Fleet request is being modified. The request remains in this state until the modification is fully processed.
  ///
  /// *   `modify_succeeded` \- The EC2 Fleet or Spot Fleet request was modified.
  ///
  /// *   `submitted` \- The EC2 Fleet or Spot Fleet request is being evaluated and Amazon EC2 is preparing to launch the target number of instances.
  ///
  /// *   `progress` \- The EC2 Fleet or Spot Fleet request is in the process of being fulfilled.
  ///
  ///
  /// `instanceChange` events:
  ///
  /// *   `launched` \- A new instance was launched.
  ///
  /// *   `terminated` \- An instance was terminated by the user.
  ///
  /// *   `termination_notified` \- An instance termination notification was sent when a Spot Instance was terminated by Amazon EC2 during scale-down, when the target capacity of the fleet was modified down, for example, from a target capacity of 4 to a target capacity of 3.
  ///
  ///
  /// `Information` events:
  ///
  /// *   `fleetProgressHalted` \- The price in every launch specification is not valid because it is below the Spot price (all the launch specifications have produced `launchSpecUnusable` events). A launch specification might become valid if the Spot price changes.
  ///
  /// *   `launchSpecTemporarilyBlacklisted` \- The configuration is not valid and several attempts to launch instances have failed. For more information, see the description of the event.
  ///
  /// *   `launchSpecUnusable` \- The price in a launch specification is not valid because it is below the Spot price.
  ///
  /// *   `registerWithLoadBalancersFailed` \- An attempt to register instances with load balancers failed. For more information, see the description of the event.
  String? get eventSubType;

  /// The ID of the instance. This information is available only for `instanceChange` events.
  String? get instanceId;
  @override
  List<Object?> get props => [
        eventDescription,
        eventSubType,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventInformation')
      ..add(
        'eventDescription',
        eventDescription,
      )
      ..add(
        'eventSubType',
        eventSubType,
      )
      ..add(
        'instanceId',
        instanceId,
      );
    return helper.toString();
  }
}

class EventInformationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EventInformation> {
  const EventInformationEc2QuerySerializer() : super('EventInformation');

  @override
  Iterable<Type> get types => const [
        EventInformation,
        _$EventInformation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EventInformation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventInformationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'eventDescription':
          result.eventDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventSubType':
          result.eventSubType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
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
    EventInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EventInformationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EventInformation(:eventDescription, :eventSubType, :instanceId) =
        object;
    if (eventDescription != null) {
      result$
        ..add(const _i2.XmlElementName('EventDescription'))
        ..add(serializers.serialize(
          eventDescription,
          specifiedType: const FullType(String),
        ));
    }
    if (eventSubType != null) {
      result$
        ..add(const _i2.XmlElementName('EventSubType'))
        ..add(serializers.serialize(
          eventSubType,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
