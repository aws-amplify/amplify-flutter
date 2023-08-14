// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_groups_for_capacity_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_group.dart';

part 'get_groups_for_capacity_reservation_result.g.dart';

abstract class GetGroupsForCapacityReservationResult
    with
        _i1.AWSEquatable<GetGroupsForCapacityReservationResult>
    implements
        Built<GetGroupsForCapacityReservationResult,
            GetGroupsForCapacityReservationResultBuilder> {
  factory GetGroupsForCapacityReservationResult({
    String? nextToken,
    List<CapacityReservationGroup>? capacityReservationGroups,
  }) {
    return _$GetGroupsForCapacityReservationResult._(
      nextToken: nextToken,
      capacityReservationGroups: capacityReservationGroups == null
          ? null
          : _i2.BuiltList(capacityReservationGroups),
    );
  }

  factory GetGroupsForCapacityReservationResult.build(
      [void Function(GetGroupsForCapacityReservationResultBuilder)
          updates]) = _$GetGroupsForCapacityReservationResult;

  const GetGroupsForCapacityReservationResult._();

  /// Constructs a [GetGroupsForCapacityReservationResult] from a [payload] and [response].
  factory GetGroupsForCapacityReservationResult.fromResponse(
    GetGroupsForCapacityReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetGroupsForCapacityReservationResult>>
      serializers = [GetGroupsForCapacityReservationResultEc2QuerySerializer()];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the resource groups to which the Capacity Reservation has been added.
  _i2.BuiltList<CapacityReservationGroup>? get capacityReservationGroups;
  @override
  List<Object?> get props => [
        nextToken,
        capacityReservationGroups,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetGroupsForCapacityReservationResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'capacityReservationGroups',
            capacityReservationGroups,
          );
    return helper.toString();
  }
}

class GetGroupsForCapacityReservationResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<GetGroupsForCapacityReservationResult> {
  const GetGroupsForCapacityReservationResultEc2QuerySerializer()
      : super('GetGroupsForCapacityReservationResult');

  @override
  Iterable<Type> get types => const [
        GetGroupsForCapacityReservationResult,
        _$GetGroupsForCapacityReservationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetGroupsForCapacityReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupsForCapacityReservationResultBuilder();
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
        case 'capacityReservationGroupSet':
          result.capacityReservationGroups
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CapacityReservationGroup)],
            ),
          ) as _i2.BuiltList<CapacityReservationGroup>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetGroupsForCapacityReservationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetGroupsForCapacityReservationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetGroupsForCapacityReservationResult(
      :nextToken,
      :capacityReservationGroups
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationGroups != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          capacityReservationGroups,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CapacityReservationGroup)],
          ),
        ));
    }
    return result$;
  }
}
