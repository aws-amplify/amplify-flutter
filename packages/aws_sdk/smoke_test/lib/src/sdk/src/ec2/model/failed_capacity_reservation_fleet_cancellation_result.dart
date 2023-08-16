// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.failed_capacity_reservation_fleet_cancellation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleet_error.dart';

part 'failed_capacity_reservation_fleet_cancellation_result.g.dart';

/// Describes a Capacity Reservation Fleet that could not be cancelled.
abstract class FailedCapacityReservationFleetCancellationResult
    with
        _i1.AWSEquatable<FailedCapacityReservationFleetCancellationResult>
    implements
        Built<FailedCapacityReservationFleetCancellationResult,
            FailedCapacityReservationFleetCancellationResultBuilder> {
  /// Describes a Capacity Reservation Fleet that could not be cancelled.
  factory FailedCapacityReservationFleetCancellationResult({
    String? capacityReservationFleetId,
    CancelCapacityReservationFleetError? cancelCapacityReservationFleetError,
  }) {
    return _$FailedCapacityReservationFleetCancellationResult._(
      capacityReservationFleetId: capacityReservationFleetId,
      cancelCapacityReservationFleetError: cancelCapacityReservationFleetError,
    );
  }

  /// Describes a Capacity Reservation Fleet that could not be cancelled.
  factory FailedCapacityReservationFleetCancellationResult.build(
      [void Function(FailedCapacityReservationFleetCancellationResultBuilder)
          updates]) = _$FailedCapacityReservationFleetCancellationResult;

  const FailedCapacityReservationFleetCancellationResult._();

  static const List<
          _i2
          .SmithySerializer<FailedCapacityReservationFleetCancellationResult>>
      serializers = [
    FailedCapacityReservationFleetCancellationResultEc2QuerySerializer()
  ];

  /// The ID of the Capacity Reservation Fleet that could not be cancelled.
  String? get capacityReservationFleetId;

  /// Information about the Capacity Reservation Fleet cancellation error.
  CancelCapacityReservationFleetError? get cancelCapacityReservationFleetError;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        cancelCapacityReservationFleetError,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'FailedCapacityReservationFleetCancellationResult')
      ..add(
        'capacityReservationFleetId',
        capacityReservationFleetId,
      )
      ..add(
        'cancelCapacityReservationFleetError',
        cancelCapacityReservationFleetError,
      );
    return helper.toString();
  }
}

class FailedCapacityReservationFleetCancellationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        FailedCapacityReservationFleetCancellationResult> {
  const FailedCapacityReservationFleetCancellationResultEc2QuerySerializer()
      : super('FailedCapacityReservationFleetCancellationResult');

  @override
  Iterable<Type> get types => const [
        FailedCapacityReservationFleetCancellationResult,
        _$FailedCapacityReservationFleetCancellationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FailedCapacityReservationFleetCancellationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedCapacityReservationFleetCancellationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityReservationFleetId':
          result.capacityReservationFleetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cancelCapacityReservationFleetError':
          result.cancelCapacityReservationFleetError
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CancelCapacityReservationFleetError),
          ) as CancelCapacityReservationFleetError));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FailedCapacityReservationFleetCancellationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FailedCapacityReservationFleetCancellationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FailedCapacityReservationFleetCancellationResult(
      :capacityReservationFleetId,
      :cancelCapacityReservationFleetError
    ) = object;
    if (capacityReservationFleetId != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          capacityReservationFleetId,
          specifiedType: const FullType(String),
        ));
    }
    if (cancelCapacityReservationFleetError != null) {
      result$
        ..add(const _i2.XmlElementName('CancelCapacityReservationFleetError'))
        ..add(serializers.serialize(
          cancelCapacityReservationFleetError,
          specifiedType: const FullType(CancelCapacityReservationFleetError),
        ));
    }
    return result$;
  }
}
