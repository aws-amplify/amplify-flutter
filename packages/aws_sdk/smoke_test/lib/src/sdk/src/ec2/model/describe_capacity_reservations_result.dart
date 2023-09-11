// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_capacity_reservations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart';

part 'describe_capacity_reservations_result.g.dart';

abstract class DescribeCapacityReservationsResult
    with
        _i1.AWSEquatable<DescribeCapacityReservationsResult>
    implements
        Built<DescribeCapacityReservationsResult,
            DescribeCapacityReservationsResultBuilder> {
  factory DescribeCapacityReservationsResult({
    String? nextToken,
    List<CapacityReservation>? capacityReservations,
  }) {
    return _$DescribeCapacityReservationsResult._(
      nextToken: nextToken,
      capacityReservations: capacityReservations == null
          ? null
          : _i2.BuiltList(capacityReservations),
    );
  }

  factory DescribeCapacityReservationsResult.build(
          [void Function(DescribeCapacityReservationsResultBuilder) updates]) =
      _$DescribeCapacityReservationsResult;

  const DescribeCapacityReservationsResult._();

  /// Constructs a [DescribeCapacityReservationsResult] from a [payload] and [response].
  factory DescribeCapacityReservationsResult.fromResponse(
    DescribeCapacityReservationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeCapacityReservationsResult>>
      serializers = [DescribeCapacityReservationsResultEc2QuerySerializer()];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the Capacity Reservations.
  _i2.BuiltList<CapacityReservation>? get capacityReservations;
  @override
  List<Object?> get props => [
        nextToken,
        capacityReservations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeCapacityReservationsResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'capacityReservations',
            capacityReservations,
          );
    return helper.toString();
  }
}

class DescribeCapacityReservationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeCapacityReservationsResult> {
  const DescribeCapacityReservationsResultEc2QuerySerializer()
      : super('DescribeCapacityReservationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeCapacityReservationsResult,
        _$DescribeCapacityReservationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCapacityReservationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCapacityReservationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'capacityReservationSet':
          result.capacityReservations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CapacityReservation)],
            ),
          ) as _i2.BuiltList<CapacityReservation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeCapacityReservationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeCapacityReservationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCapacityReservationsResult(
      :nextToken,
      :capacityReservations
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservations != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          capacityReservations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(CapacityReservation)],
          ),
        ));
    }
    return result$;
  }
}
