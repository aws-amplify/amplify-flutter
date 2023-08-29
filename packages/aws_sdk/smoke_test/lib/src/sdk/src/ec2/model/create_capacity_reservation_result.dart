// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_capacity_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart';

part 'create_capacity_reservation_result.g.dart';

abstract class CreateCapacityReservationResult
    with
        _i1.AWSEquatable<CreateCapacityReservationResult>
    implements
        Built<CreateCapacityReservationResult,
            CreateCapacityReservationResultBuilder> {
  factory CreateCapacityReservationResult(
      {CapacityReservation? capacityReservation}) {
    return _$CreateCapacityReservationResult._(
        capacityReservation: capacityReservation);
  }

  factory CreateCapacityReservationResult.build(
          [void Function(CreateCapacityReservationResultBuilder) updates]) =
      _$CreateCapacityReservationResult;

  const CreateCapacityReservationResult._();

  /// Constructs a [CreateCapacityReservationResult] from a [payload] and [response].
  factory CreateCapacityReservationResult.fromResponse(
    CreateCapacityReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateCapacityReservationResult>>
      serializers = [CreateCapacityReservationResultEc2QuerySerializer()];

  /// Information about the Capacity Reservation.
  CapacityReservation? get capacityReservation;
  @override
  List<Object?> get props => [capacityReservation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateCapacityReservationResult')
          ..add(
            'capacityReservation',
            capacityReservation,
          );
    return helper.toString();
  }
}

class CreateCapacityReservationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateCapacityReservationResult> {
  const CreateCapacityReservationResultEc2QuerySerializer()
      : super('CreateCapacityReservationResult');

  @override
  Iterable<Type> get types => const [
        CreateCapacityReservationResult,
        _$CreateCapacityReservationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCapacityReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCapacityReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityReservation':
          result.capacityReservation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservation),
          ) as CapacityReservation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateCapacityReservationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateCapacityReservationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCapacityReservationResult(:capacityReservation) = object;
    if (capacityReservation != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservation'))
        ..add(serializers.serialize(
          capacityReservation,
          specifiedType: const FullType(CapacityReservation),
        ));
    }
    return result$;
  }
}
