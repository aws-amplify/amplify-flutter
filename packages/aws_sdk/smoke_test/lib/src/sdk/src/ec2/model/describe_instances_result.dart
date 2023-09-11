// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation.dart';

part 'describe_instances_result.g.dart';

abstract class DescribeInstancesResult
    with _i1.AWSEquatable<DescribeInstancesResult>
    implements Built<DescribeInstancesResult, DescribeInstancesResultBuilder> {
  factory DescribeInstancesResult({
    List<Reservation>? reservations,
    String? nextToken,
  }) {
    return _$DescribeInstancesResult._(
      reservations: reservations == null ? null : _i2.BuiltList(reservations),
      nextToken: nextToken,
    );
  }

  factory DescribeInstancesResult.build(
          [void Function(DescribeInstancesResultBuilder) updates]) =
      _$DescribeInstancesResult;

  const DescribeInstancesResult._();

  /// Constructs a [DescribeInstancesResult] from a [payload] and [response].
  factory DescribeInstancesResult.fromResponse(
    DescribeInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeInstancesResult>> serializers =
      [DescribeInstancesResultEc2QuerySerializer()];

  /// Information about the reservations.
  _i2.BuiltList<Reservation>? get reservations;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        reservations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstancesResult')
      ..add(
        'reservations',
        reservations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeInstancesResult> {
  const DescribeInstancesResultEc2QuerySerializer()
      : super('DescribeInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstancesResult,
        _$DescribeInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservationSet':
          result.reservations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Reservation)],
            ),
          ) as _i2.BuiltList<Reservation>));
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
    DescribeInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstancesResult(:reservations, :nextToken) = object;
    if (reservations != null) {
      result$
        ..add(const _i3.XmlElementName('ReservationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Reservation)],
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
