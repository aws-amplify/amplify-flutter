// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_offerings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';

part 'describe_reserved_instances_offerings_request.g.dart';

/// Contains the parameters for DescribeReservedInstancesOfferings.
abstract class DescribeReservedInstancesOfferingsRequest
    with
        _i1.HttpInput<DescribeReservedInstancesOfferingsRequest>,
        _i2.AWSEquatable<DescribeReservedInstancesOfferingsRequest>
    implements
        Built<DescribeReservedInstancesOfferingsRequest,
            DescribeReservedInstancesOfferingsRequestBuilder> {
  /// Contains the parameters for DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsRequest({
    String? availabilityZone,
    List<Filter>? filters,
    bool? includeMarketplace,
    InstanceType? instanceType,
    _i3.Int64? maxDuration,
    int? maxInstanceCount,
    _i3.Int64? minDuration,
    OfferingClassType? offeringClass,
    RiProductDescription? productDescription,
    List<String>? reservedInstancesOfferingIds,
    bool? dryRun,
    Tenancy? instanceTenancy,
    int? maxResults,
    String? nextToken,
    OfferingTypeValues? offeringType,
  }) {
    includeMarketplace ??= false;
    maxDuration ??= _i3.Int64.ZERO;
    maxInstanceCount ??= 0;
    minDuration ??= _i3.Int64.ZERO;
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeReservedInstancesOfferingsRequest._(
      availabilityZone: availabilityZone,
      filters: filters == null ? null : _i4.BuiltList(filters),
      includeMarketplace: includeMarketplace,
      instanceType: instanceType,
      maxDuration: maxDuration,
      maxInstanceCount: maxInstanceCount,
      minDuration: minDuration,
      offeringClass: offeringClass,
      productDescription: productDescription,
      reservedInstancesOfferingIds: reservedInstancesOfferingIds == null
          ? null
          : _i4.BuiltList(reservedInstancesOfferingIds),
      dryRun: dryRun,
      instanceTenancy: instanceTenancy,
      maxResults: maxResults,
      nextToken: nextToken,
      offeringType: offeringType,
    );
  }

  /// Contains the parameters for DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsRequest.build(
      [void Function(DescribeReservedInstancesOfferingsRequestBuilder)
          updates]) = _$DescribeReservedInstancesOfferingsRequest;

  const DescribeReservedInstancesOfferingsRequest._();

  factory DescribeReservedInstancesOfferingsRequest.fromRequest(
    DescribeReservedInstancesOfferingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeReservedInstancesOfferingsRequest>>
      serializers = [
    DescribeReservedInstancesOfferingsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesOfferingsRequestBuilder b) {
    b
      ..includeMarketplace = false
      ..maxDuration = _i3.Int64.ZERO
      ..maxInstanceCount = 0
      ..minDuration = _i3.Int64.ZERO
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The Availability Zone in which the Reserved Instance can be used.
  String? get availabilityZone;

  /// One or more filters.
  ///
  /// *   `availability-zone` \- The Availability Zone where the Reserved Instance can be used.
  ///
  /// *   `duration` \- The duration of the Reserved Instance (for example, one year or three years), in seconds (`31536000` | `94608000`).
  ///
  /// *   `fixed-price` \- The purchase price of the Reserved Instance (for example, 9800.0).
  ///
  /// *   `instance-type` \- The instance type that is covered by the reservation.
  ///
  /// *   `marketplace` \- Set to `true` to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both Amazon Web Services and the Reserved Instance Marketplace are listed.
  ///
  /// *   `product-description` \- The Reserved Instance product platform description (`Linux/UNIX` | `Linux with SQL Server Standard` | `Linux with SQL Server Web` | `Linux with SQL Server Enterprise` | `SUSE Linux` | `Red Hat Enterprise Linux` | `Red Hat Enterprise Linux with HA` | `Windows` | `Windows with SQL Server Standard` | `Windows with SQL Server Web` | `Windows with SQL Server Enterprise`).
  ///
  /// *   `reserved-instances-offering-id` \- The Reserved Instances offering ID.
  ///
  /// *   `scope` \- The scope of the Reserved Instance (`Availability Zone` or `Region`).
  ///
  /// *   `usage-price` \- The usage price of the Reserved Instance, per hour (for example, 0.84).
  _i4.BuiltList<Filter>? get filters;

  /// Include Reserved Instance Marketplace offerings in the response.
  bool get includeMarketplace;

  /// The instance type that the reservation will cover (for example, `m1.small`). For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  InstanceType? get instanceType;

  /// The maximum duration (in seconds) to filter when searching for offerings.
  ///
  /// Default: 94608000 (3 years)
  _i3.Int64 get maxDuration;

  /// The maximum number of instances to filter when searching for offerings.
  ///
  /// Default: 20
  int get maxInstanceCount;

  /// The minimum duration (in seconds) to filter when searching for offerings.
  ///
  /// Default: 2592000 (1 month)
  _i3.Int64 get minDuration;

  /// The offering class of the Reserved Instance. Can be `standard` or `convertible`.
  OfferingClassType? get offeringClass;

  /// The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the description are for use with Amazon VPC.
  RiProductDescription? get productDescription;

  /// One or more Reserved Instances offering IDs.
  _i4.BuiltList<String>? get reservedInstancesOfferingIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of `dedicated` is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
  ///
  /// **Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.
  ///
  /// Default: `default`
  Tenancy? get instanceTenancy;

  /// The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. The maximum is 100.
  ///
  /// Default: 100
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.
  OfferingTypeValues? get offeringType;
  @override
  DescribeReservedInstancesOfferingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        filters,
        includeMarketplace,
        instanceType,
        maxDuration,
        maxInstanceCount,
        minDuration,
        offeringClass,
        productDescription,
        reservedInstancesOfferingIds,
        dryRun,
        instanceTenancy,
        maxResults,
        nextToken,
        offeringType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesOfferingsRequest')
          ..add(
            'availabilityZone',
            availabilityZone,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'includeMarketplace',
            includeMarketplace,
          )
          ..add(
            'instanceType',
            instanceType,
          )
          ..add(
            'maxDuration',
            maxDuration,
          )
          ..add(
            'maxInstanceCount',
            maxInstanceCount,
          )
          ..add(
            'minDuration',
            minDuration,
          )
          ..add(
            'offeringClass',
            offeringClass,
          )
          ..add(
            'productDescription',
            productDescription,
          )
          ..add(
            'reservedInstancesOfferingIds',
            reservedInstancesOfferingIds,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'instanceTenancy',
            instanceTenancy,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'offeringType',
            offeringType,
          );
    return helper.toString();
  }
}

class DescribeReservedInstancesOfferingsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeReservedInstancesOfferingsRequest> {
  const DescribeReservedInstancesOfferingsRequestEc2QuerySerializer()
      : super('DescribeReservedInstancesOfferingsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesOfferingsRequest,
        _$DescribeReservedInstancesOfferingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesOfferingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesOfferingsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i4.BuiltList<Filter>));
        case 'IncludeMarketplace':
          result.includeMarketplace = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'MaxDuration':
          result.maxDuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'MaxInstanceCount':
          result.maxInstanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MinDuration':
          result.minDuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'OfferingClass':
          result.offeringClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(OfferingClassType),
          ) as OfferingClassType);
        case 'ProductDescription':
          result.productDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(RiProductDescription),
          ) as RiProductDescription);
        case 'ReservedInstancesOfferingId':
          result.reservedInstancesOfferingIds.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.ec2QueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(Tenancy),
          ) as Tenancy);
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DescribeReservedInstancesOfferingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeReservedInstancesOfferingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesOfferingsRequest(
      :availabilityZone,
      :filters,
      :includeMarketplace,
      :instanceType,
      :maxDuration,
      :maxInstanceCount,
      :minDuration,
      :offeringClass,
      :productDescription,
      :reservedInstancesOfferingIds,
      :dryRun,
      :instanceTenancy,
      :maxResults,
      :nextToken,
      :offeringType
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
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
            _i4.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('IncludeMarketplace'))
      ..add(serializers.serialize(
        includeMarketplace,
        specifiedType: const FullType(bool),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxDuration'))
      ..add(serializers.serialize(
        maxDuration,
        specifiedType: const FullType(_i3.Int64),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxInstanceCount'))
      ..add(serializers.serialize(
        maxInstanceCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MinDuration'))
      ..add(serializers.serialize(
        minDuration,
        specifiedType: const FullType(_i3.Int64),
      ));
    if (offeringClass != null) {
      result$
        ..add(const _i1.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          offeringClass,
          specifiedType: const FullType(OfferingClassType),
        ));
    }
    if (productDescription != null) {
      result$
        ..add(const _i1.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          productDescription,
          specifiedType: const FullType(RiProductDescription),
        ));
    }
    if (reservedInstancesOfferingIds != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesOfferingId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          reservedInstancesOfferingIds,
          specifiedType: const FullType(
            _i4.BuiltList,
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
    if (instanceTenancy != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType(Tenancy),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
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
