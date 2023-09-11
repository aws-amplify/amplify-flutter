// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart';

part 'describe_reserved_instances_request.g.dart';

/// Contains the parameters for DescribeReservedInstances.
abstract class DescribeReservedInstancesRequest
    with
        _i1.HttpInput<DescribeReservedInstancesRequest>,
        _i2.AWSEquatable<DescribeReservedInstancesRequest>
    implements
        Built<DescribeReservedInstancesRequest,
            DescribeReservedInstancesRequestBuilder> {
  /// Contains the parameters for DescribeReservedInstances.
  factory DescribeReservedInstancesRequest({
    List<Filter>? filters,
    OfferingClassType? offeringClass,
    List<String>? reservedInstancesIds,
    bool? dryRun,
    OfferingTypeValues? offeringType,
  }) {
    dryRun ??= false;
    return _$DescribeReservedInstancesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      offeringClass: offeringClass,
      reservedInstancesIds: reservedInstancesIds == null
          ? null
          : _i3.BuiltList(reservedInstancesIds),
      dryRun: dryRun,
      offeringType: offeringType,
    );
  }

  /// Contains the parameters for DescribeReservedInstances.
  factory DescribeReservedInstancesRequest.build(
          [void Function(DescribeReservedInstancesRequestBuilder) updates]) =
      _$DescribeReservedInstancesRequest;

  const DescribeReservedInstancesRequest._();

  factory DescribeReservedInstancesRequest.fromRequest(
    DescribeReservedInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeReservedInstancesRequest>>
      serializers = [DescribeReservedInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more filters.
  ///
  /// *   `availability-zone` \- The Availability Zone where the Reserved Instance can be used.
  ///
  /// *   `duration` \- The duration of the Reserved Instance (one year or three years), in seconds (`31536000` | `94608000`).
  ///
  /// *   `end` \- The time when the Reserved Instance expires (for example, 2015-08-07T11:54:42.000Z).
  ///
  /// *   `fixed-price` \- The purchase price of the Reserved Instance (for example, 9800.0).
  ///
  /// *   `instance-type` \- The instance type that is covered by the reservation.
  ///
  /// *   `scope` \- The scope of the Reserved Instance (`Region` or `Availability Zone`).
  ///
  /// *   `product-description` \- The Reserved Instance product platform description (`Linux/UNIX` | `Linux with SQL Server Standard` | `Linux with SQL Server Web` | `Linux with SQL Server Enterprise` | `SUSE Linux` | `Red Hat Enterprise Linux` | `Red Hat Enterprise Linux with HA` | `Windows` | `Windows with SQL Server Standard` | `Windows with SQL Server Web` | `Windows with SQL Server Enterprise`).
  ///
  /// *   `reserved-instances-id` \- The ID of the Reserved Instance.
  ///
  /// *   `start` \- The time at which the Reserved Instance purchase request was placed (for example, 2014-08-07T11:54:42.000Z).
  ///
  /// *   `state` \- The state of the Reserved Instance (`payment-pending` | `active` | `payment-failed` | `retired`).
  ///
  /// *   `tag:` \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `usage-price` \- The usage price of the Reserved Instance, per hour (for example, 0.84).
  _i3.BuiltList<Filter>? get filters;

  /// Describes whether the Reserved Instance is Standard or Convertible.
  OfferingClassType? get offeringClass;

  /// One or more Reserved Instance IDs.
  ///
  /// Default: Describes all your Reserved Instances, or only those otherwise specified.
  _i3.BuiltList<String>? get reservedInstancesIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.
  OfferingTypeValues? get offeringType;
  @override
  DescribeReservedInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        offeringClass,
        reservedInstancesIds,
        dryRun,
        offeringType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'offeringClass',
            offeringClass,
          )
          ..add(
            'reservedInstancesIds',
            reservedInstancesIds,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'offeringType',
            offeringType,
          );
    return helper.toString();
  }
}

class DescribeReservedInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeReservedInstancesRequest> {
  const DescribeReservedInstancesRequestEc2QuerySerializer()
      : super('DescribeReservedInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesRequest,
        _$DescribeReservedInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesRequestBuilder();
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
        case 'OfferingClass':
          result.offeringClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(OfferingClassType),
          ) as OfferingClassType);
        case 'ReservedInstancesId':
          result.reservedInstancesIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ReservedInstancesId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'offeringType':
          result.offeringType = (serializers.deserialize(
            value,
            specifiedType: const FullType(OfferingTypeValues),
          ) as OfferingTypeValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeReservedInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeReservedInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesRequest(
      :filters,
      :offeringClass,
      :reservedInstancesIds,
      :dryRun,
      :offeringType
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (offeringClass != null) {
      result$
        ..add(const _i1.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          offeringClass,
          specifiedType: const FullType(OfferingClassType),
        ));
    }
    if (reservedInstancesIds != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ReservedInstancesId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (offeringType != null) {
      result$
        ..add(const _i1.XmlElementName('OfferingType'))
        ..add(serializers.serialize(
          offeringType,
          specifiedType: const FullType(OfferingTypeValues),
        ));
    }
    return result$;
  }
}
