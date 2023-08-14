// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instance_reservation_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_value.dart';

part 'reserved_instance_reservation_value.g.dart';

/// The total value of the Convertible Reserved Instance.
abstract class ReservedInstanceReservationValue
    with
        _i1.AWSEquatable<ReservedInstanceReservationValue>
    implements
        Built<ReservedInstanceReservationValue,
            ReservedInstanceReservationValueBuilder> {
  /// The total value of the Convertible Reserved Instance.
  factory ReservedInstanceReservationValue({
    ReservationValue? reservationValue,
    String? reservedInstanceId,
  }) {
    return _$ReservedInstanceReservationValue._(
      reservationValue: reservationValue,
      reservedInstanceId: reservedInstanceId,
    );
  }

  /// The total value of the Convertible Reserved Instance.
  factory ReservedInstanceReservationValue.build(
          [void Function(ReservedInstanceReservationValueBuilder) updates]) =
      _$ReservedInstanceReservationValue;

  const ReservedInstanceReservationValue._();

  static const List<_i2.SmithySerializer<ReservedInstanceReservationValue>>
      serializers = [ReservedInstanceReservationValueEc2QuerySerializer()];

  /// The total value of the Convertible Reserved Instance that you are exchanging.
  ReservationValue? get reservationValue;

  /// The ID of the Convertible Reserved Instance that you are exchanging.
  String? get reservedInstanceId;
  @override
  List<Object?> get props => [
        reservationValue,
        reservedInstanceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReservedInstanceReservationValue')
          ..add(
            'reservationValue',
            reservationValue,
          )
          ..add(
            'reservedInstanceId',
            reservedInstanceId,
          );
    return helper.toString();
  }
}

class ReservedInstanceReservationValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReservedInstanceReservationValue> {
  const ReservedInstanceReservationValueEc2QuerySerializer()
      : super('ReservedInstanceReservationValue');

  @override
  Iterable<Type> get types => const [
        ReservedInstanceReservationValue,
        _$ReservedInstanceReservationValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstanceReservationValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstanceReservationValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservationValue':
          result.reservationValue.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReservationValue),
          ) as ReservationValue));
        case 'reservedInstanceId':
          result.reservedInstanceId = (serializers.deserialize(
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
    ReservedInstanceReservationValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReservedInstanceReservationValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstanceReservationValue(
      :reservationValue,
      :reservedInstanceId
    ) = object;
    if (reservationValue != null) {
      result$
        ..add(const _i2.XmlElementName('ReservationValue'))
        ..add(serializers.serialize(
          reservationValue,
          specifiedType: const FullType(ReservationValue),
        ));
    }
    if (reservedInstanceId != null) {
      result$
        ..add(const _i2.XmlElementName('ReservedInstanceId'))
        ..add(serializers.serialize(
          reservedInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
