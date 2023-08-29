// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_listings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_reserved_instances_listings_request.g.dart';

/// Contains the parameters for DescribeReservedInstancesListings.
abstract class DescribeReservedInstancesListingsRequest
    with
        _i1.HttpInput<DescribeReservedInstancesListingsRequest>,
        _i2.AWSEquatable<DescribeReservedInstancesListingsRequest>
    implements
        Built<DescribeReservedInstancesListingsRequest,
            DescribeReservedInstancesListingsRequestBuilder> {
  /// Contains the parameters for DescribeReservedInstancesListings.
  factory DescribeReservedInstancesListingsRequest({
    List<Filter>? filters,
    String? reservedInstancesId,
    String? reservedInstancesListingId,
  }) {
    return _$DescribeReservedInstancesListingsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      reservedInstancesId: reservedInstancesId,
      reservedInstancesListingId: reservedInstancesListingId,
    );
  }

  /// Contains the parameters for DescribeReservedInstancesListings.
  factory DescribeReservedInstancesListingsRequest.build(
      [void Function(DescribeReservedInstancesListingsRequestBuilder)
          updates]) = _$DescribeReservedInstancesListingsRequest;

  const DescribeReservedInstancesListingsRequest._();

  factory DescribeReservedInstancesListingsRequest.fromRequest(
    DescribeReservedInstancesListingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeReservedInstancesListingsRequest>>
      serializers = [
    DescribeReservedInstancesListingsRequestEc2QuerySerializer()
  ];

  /// One or more filters.
  ///
  /// *   `reserved-instances-id` \- The ID of the Reserved Instances.
  ///
  /// *   `reserved-instances-listing-id` \- The ID of the Reserved Instances listing.
  ///
  /// *   `status` \- The status of the Reserved Instance listing (`pending` | `active` | `cancelled` | `closed`).
  ///
  /// *   `status-message` \- The reason for the status.
  _i3.BuiltList<Filter>? get filters;

  /// One or more Reserved Instance IDs.
  String? get reservedInstancesId;

  /// One or more Reserved Instance listing IDs.
  String? get reservedInstancesListingId;
  @override
  DescribeReservedInstancesListingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        reservedInstancesId,
        reservedInstancesListingId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesListingsRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'reservedInstancesId',
            reservedInstancesId,
          )
          ..add(
            'reservedInstancesListingId',
            reservedInstancesListingId,
          );
    return helper.toString();
  }
}

class DescribeReservedInstancesListingsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeReservedInstancesListingsRequest> {
  const DescribeReservedInstancesListingsRequestEc2QuerySerializer()
      : super('DescribeReservedInstancesListingsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesListingsRequest,
        _$DescribeReservedInstancesListingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesListingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesListingsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'reservedInstancesId':
          result.reservedInstancesId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'reservedInstancesListingId':
          result.reservedInstancesListingId = (serializers.deserialize(
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
    DescribeReservedInstancesListingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeReservedInstancesListingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesListingsRequest(
      :filters,
      :reservedInstancesId,
      :reservedInstancesListingId
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (reservedInstancesId != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    if (reservedInstancesListingId != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesListingId'))
        ..add(serializers.serialize(
          reservedInstancesListingId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
