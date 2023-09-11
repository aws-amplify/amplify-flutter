// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_host_reservations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/host_reservation.dart';

part 'describe_host_reservations_result.g.dart';

abstract class DescribeHostReservationsResult
    with
        _i1.AWSEquatable<DescribeHostReservationsResult>
    implements
        Built<DescribeHostReservationsResult,
            DescribeHostReservationsResultBuilder> {
  factory DescribeHostReservationsResult({
    List<HostReservation>? hostReservationSet,
    String? nextToken,
  }) {
    return _$DescribeHostReservationsResult._(
      hostReservationSet:
          hostReservationSet == null ? null : _i2.BuiltList(hostReservationSet),
      nextToken: nextToken,
    );
  }

  factory DescribeHostReservationsResult.build(
          [void Function(DescribeHostReservationsResultBuilder) updates]) =
      _$DescribeHostReservationsResult;

  const DescribeHostReservationsResult._();

  /// Constructs a [DescribeHostReservationsResult] from a [payload] and [response].
  factory DescribeHostReservationsResult.fromResponse(
    DescribeHostReservationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeHostReservationsResult>>
      serializers = [DescribeHostReservationsResultEc2QuerySerializer()];

  /// Details about the reservation's configuration.
  _i2.BuiltList<HostReservation>? get hostReservationSet;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        hostReservationSet,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeHostReservationsResult')
      ..add(
        'hostReservationSet',
        hostReservationSet,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeHostReservationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeHostReservationsResult> {
  const DescribeHostReservationsResultEc2QuerySerializer()
      : super('DescribeHostReservationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeHostReservationsResult,
        _$DescribeHostReservationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostReservationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostReservationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hostReservationSet':
          result.hostReservationSet.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(HostReservation)],
            ),
          ) as _i2.BuiltList<HostReservation>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeHostReservationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeHostReservationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeHostReservationsResult(:hostReservationSet, :nextToken) =
        object;
    if (hostReservationSet != null) {
      result$
        ..add(const _i3.XmlElementName('HostReservationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostReservationSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(HostReservation)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
