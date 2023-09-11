// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_usage_strategy.dart';

part 'capacity_reservation_options_request.g.dart';

/// Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
///
/// This strategy can only be used if the EC2 Fleet is of type `instant`.
///
/// For more information about Capacity Reservations, see [On-Demand Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_. For examples of using Capacity Reservations in an EC2 Fleet, see [EC2 Fleet example configurations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html) in the _Amazon EC2 User Guide_.
abstract class CapacityReservationOptionsRequest
    with
        _i1.AWSEquatable<CapacityReservationOptionsRequest>
    implements
        Built<CapacityReservationOptionsRequest,
            CapacityReservationOptionsRequestBuilder> {
  /// Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// This strategy can only be used if the EC2 Fleet is of type `instant`.
  ///
  /// For more information about Capacity Reservations, see [On-Demand Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_. For examples of using Capacity Reservations in an EC2 Fleet, see [EC2 Fleet example configurations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html) in the _Amazon EC2 User Guide_.
  factory CapacityReservationOptionsRequest(
      {FleetCapacityReservationUsageStrategy? usageStrategy}) {
    return _$CapacityReservationOptionsRequest._(usageStrategy: usageStrategy);
  }

  /// Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// This strategy can only be used if the EC2 Fleet is of type `instant`.
  ///
  /// For more information about Capacity Reservations, see [On-Demand Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_. For examples of using Capacity Reservations in an EC2 Fleet, see [EC2 Fleet example configurations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html) in the _Amazon EC2 User Guide_.
  factory CapacityReservationOptionsRequest.build(
          [void Function(CapacityReservationOptionsRequestBuilder) updates]) =
      _$CapacityReservationOptionsRequest;

  const CapacityReservationOptionsRequest._();

  static const List<_i2.SmithySerializer<CapacityReservationOptionsRequest>>
      serializers = [CapacityReservationOptionsRequestEc2QuerySerializer()];

  /// Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// If you specify `use-capacity-reservations-first`, the fleet uses unused Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity. If multiple instance pools have unused Capacity Reservations, the On-Demand allocation strategy (`lowest-price` or `prioritized`) is applied. If the number of unused Capacity Reservations is less than the On-Demand target capacity, the remaining On-Demand target capacity is launched according to the On-Demand allocation strategy (`lowest-price` or `prioritized`).
  ///
  /// If you do not specify a value, the fleet fulfils the On-Demand capacity according to the chosen On-Demand allocation strategy.
  FleetCapacityReservationUsageStrategy? get usageStrategy;
  @override
  List<Object?> get props => [usageStrategy];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CapacityReservationOptionsRequest')
          ..add(
            'usageStrategy',
            usageStrategy,
          );
    return helper.toString();
  }
}

class CapacityReservationOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CapacityReservationOptionsRequest> {
  const CapacityReservationOptionsRequestEc2QuerySerializer()
      : super('CapacityReservationOptionsRequest');

  @override
  Iterable<Type> get types => const [
        CapacityReservationOptionsRequest,
        _$CapacityReservationOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UsageStrategy':
          result.usageStrategy = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(FleetCapacityReservationUsageStrategy),
          ) as FleetCapacityReservationUsageStrategy);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CapacityReservationOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationOptionsRequest(:usageStrategy) = object;
    if (usageStrategy != null) {
      result$
        ..add(const _i2.XmlElementName('UsageStrategy'))
        ..add(serializers.serialize(
          usageStrategy,
          specifiedType: const FullType(FleetCapacityReservationUsageStrategy),
        ));
    }
    return result$;
  }
}
