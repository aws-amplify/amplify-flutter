// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_subnet_cidr_reservations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart';

part 'get_subnet_cidr_reservations_result.g.dart';

abstract class GetSubnetCidrReservationsResult
    with
        _i1.AWSEquatable<GetSubnetCidrReservationsResult>
    implements
        Built<GetSubnetCidrReservationsResult,
            GetSubnetCidrReservationsResultBuilder> {
  factory GetSubnetCidrReservationsResult({
    List<SubnetCidrReservation>? subnetIpv4CidrReservations,
    List<SubnetCidrReservation>? subnetIpv6CidrReservations,
    String? nextToken,
  }) {
    return _$GetSubnetCidrReservationsResult._(
      subnetIpv4CidrReservations: subnetIpv4CidrReservations == null
          ? null
          : _i2.BuiltList(subnetIpv4CidrReservations),
      subnetIpv6CidrReservations: subnetIpv6CidrReservations == null
          ? null
          : _i2.BuiltList(subnetIpv6CidrReservations),
      nextToken: nextToken,
    );
  }

  factory GetSubnetCidrReservationsResult.build(
          [void Function(GetSubnetCidrReservationsResultBuilder) updates]) =
      _$GetSubnetCidrReservationsResult;

  const GetSubnetCidrReservationsResult._();

  /// Constructs a [GetSubnetCidrReservationsResult] from a [payload] and [response].
  factory GetSubnetCidrReservationsResult.fromResponse(
    GetSubnetCidrReservationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetSubnetCidrReservationsResult>>
      serializers = [GetSubnetCidrReservationsResultEc2QuerySerializer()];

  /// Information about the IPv4 subnet CIDR reservations.
  _i2.BuiltList<SubnetCidrReservation>? get subnetIpv4CidrReservations;

  /// Information about the IPv6 subnet CIDR reservations.
  _i2.BuiltList<SubnetCidrReservation>? get subnetIpv6CidrReservations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        subnetIpv4CidrReservations,
        subnetIpv6CidrReservations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetSubnetCidrReservationsResult')
          ..add(
            'subnetIpv4CidrReservations',
            subnetIpv4CidrReservations,
          )
          ..add(
            'subnetIpv6CidrReservations',
            subnetIpv6CidrReservations,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetSubnetCidrReservationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetSubnetCidrReservationsResult> {
  const GetSubnetCidrReservationsResultEc2QuerySerializer()
      : super('GetSubnetCidrReservationsResult');

  @override
  Iterable<Type> get types => const [
        GetSubnetCidrReservationsResult,
        _$GetSubnetCidrReservationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSubnetCidrReservationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSubnetCidrReservationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'subnetIpv4CidrReservationSet':
          result.subnetIpv4CidrReservations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SubnetCidrReservation)],
            ),
          ) as _i2.BuiltList<SubnetCidrReservation>));
        case 'subnetIpv6CidrReservationSet':
          result.subnetIpv6CidrReservations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SubnetCidrReservation)],
            ),
          ) as _i2.BuiltList<SubnetCidrReservation>));
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
    GetSubnetCidrReservationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetSubnetCidrReservationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetSubnetCidrReservationsResult(
      :subnetIpv4CidrReservations,
      :subnetIpv6CidrReservations,
      :nextToken
    ) = object;
    if (subnetIpv4CidrReservations != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetIpv4CidrReservationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIpv4CidrReservations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SubnetCidrReservation)],
          ),
        ));
    }
    if (subnetIpv6CidrReservations != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetIpv6CidrReservationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIpv6CidrReservations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SubnetCidrReservation)],
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
