// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_capacity_reservation_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_cancellation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/failed_capacity_reservation_fleet_cancellation_result.dart';

part 'cancel_capacity_reservation_fleets_result.g.dart';

abstract class CancelCapacityReservationFleetsResult
    with
        _i1.AWSEquatable<CancelCapacityReservationFleetsResult>
    implements
        Built<CancelCapacityReservationFleetsResult,
            CancelCapacityReservationFleetsResultBuilder> {
  factory CancelCapacityReservationFleetsResult({
    List<CapacityReservationFleetCancellationState>?
        successfulFleetCancellations,
    List<FailedCapacityReservationFleetCancellationResult>?
        failedFleetCancellations,
  }) {
    return _$CancelCapacityReservationFleetsResult._(
      successfulFleetCancellations: successfulFleetCancellations == null
          ? null
          : _i2.BuiltList(successfulFleetCancellations),
      failedFleetCancellations: failedFleetCancellations == null
          ? null
          : _i2.BuiltList(failedFleetCancellations),
    );
  }

  factory CancelCapacityReservationFleetsResult.build(
      [void Function(CancelCapacityReservationFleetsResultBuilder)
          updates]) = _$CancelCapacityReservationFleetsResult;

  const CancelCapacityReservationFleetsResult._();

  /// Constructs a [CancelCapacityReservationFleetsResult] from a [payload] and [response].
  factory CancelCapacityReservationFleetsResult.fromResponse(
    CancelCapacityReservationFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CancelCapacityReservationFleetsResult>>
      serializers = [CancelCapacityReservationFleetsResultEc2QuerySerializer()];

  /// Information about the Capacity Reservation Fleets that were successfully cancelled.
  _i2.BuiltList<CapacityReservationFleetCancellationState>?
      get successfulFleetCancellations;

  /// Information about the Capacity Reservation Fleets that could not be cancelled.
  _i2.BuiltList<FailedCapacityReservationFleetCancellationResult>?
      get failedFleetCancellations;
  @override
  List<Object?> get props => [
        successfulFleetCancellations,
        failedFleetCancellations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelCapacityReservationFleetsResult')
          ..add(
            'successfulFleetCancellations',
            successfulFleetCancellations,
          )
          ..add(
            'failedFleetCancellations',
            failedFleetCancellations,
          );
    return helper.toString();
  }
}

class CancelCapacityReservationFleetsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CancelCapacityReservationFleetsResult> {
  const CancelCapacityReservationFleetsResultEc2QuerySerializer()
      : super('CancelCapacityReservationFleetsResult');

  @override
  Iterable<Type> get types => const [
        CancelCapacityReservationFleetsResult,
        _$CancelCapacityReservationFleetsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelCapacityReservationFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelCapacityReservationFleetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'successfulFleetCancellationSet':
          result.successfulFleetCancellations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CapacityReservationFleetCancellationState)],
            ),
          ) as _i2.BuiltList<CapacityReservationFleetCancellationState>));
        case 'failedFleetCancellationSet':
          result.failedFleetCancellations.replace(
              (const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FailedCapacityReservationFleetCancellationResult)],
            ),
          ) as _i2.BuiltList<
                  FailedCapacityReservationFleetCancellationResult>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CancelCapacityReservationFleetsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CancelCapacityReservationFleetsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelCapacityReservationFleetsResult(
      :successfulFleetCancellations,
      :failedFleetCancellations
    ) = object;
    if (successfulFleetCancellations != null) {
      result$
        ..add(const _i3.XmlElementName('SuccessfulFleetCancellationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          successfulFleetCancellations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(CapacityReservationFleetCancellationState)],
          ),
        ));
    }
    if (failedFleetCancellations != null) {
      result$
        ..add(const _i3.XmlElementName('FailedFleetCancellationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          failedFleetCancellations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FailedCapacityReservationFleetCancellationResult)],
          ),
        ));
    }
    return result$;
  }
}
