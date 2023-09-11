// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_price_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';

part 'describe_spot_price_history_request.g.dart';

/// Contains the parameters for DescribeSpotPriceHistory.
abstract class DescribeSpotPriceHistoryRequest
    with
        _i1.HttpInput<DescribeSpotPriceHistoryRequest>,
        _i2.AWSEquatable<DescribeSpotPriceHistoryRequest>
    implements
        Built<DescribeSpotPriceHistoryRequest,
            DescribeSpotPriceHistoryRequestBuilder> {
  /// Contains the parameters for DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryRequest({
    List<Filter>? filters,
    String? availabilityZone,
    bool? dryRun,
    DateTime? endTime,
    List<InstanceType>? instanceTypes,
    int? maxResults,
    String? nextToken,
    List<String>? productDescriptions,
    DateTime? startTime,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotPriceHistoryRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      availabilityZone: availabilityZone,
      dryRun: dryRun,
      endTime: endTime,
      instanceTypes:
          instanceTypes == null ? null : _i3.BuiltList(instanceTypes),
      maxResults: maxResults,
      nextToken: nextToken,
      productDescriptions: productDescriptions == null
          ? null
          : _i3.BuiltList(productDescriptions),
      startTime: startTime,
    );
  }

  /// Contains the parameters for DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryRequest.build(
          [void Function(DescribeSpotPriceHistoryRequestBuilder) updates]) =
      _$DescribeSpotPriceHistoryRequest;

  const DescribeSpotPriceHistoryRequest._();

  factory DescribeSpotPriceHistoryRequest.fromRequest(
    DescribeSpotPriceHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeSpotPriceHistoryRequest>>
      serializers = [DescribeSpotPriceHistoryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotPriceHistoryRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `availability-zone` \- The Availability Zone for which prices should be returned.
  ///
  /// *   `instance-type` \- The type of instance (for example, `m3.medium`).
  ///
  /// *   `product-description` \- The product description for the Spot price (`Linux/UNIX` | `Red Hat Enterprise Linux` | `SUSE Linux` | `Windows` | `Linux/UNIX (Amazon VPC)` | `Red Hat Enterprise Linux (Amazon VPC)` | `SUSE Linux (Amazon VPC)` | `Windows (Amazon VPC)`).
  ///
  /// *   `spot-price` \- The Spot price. The value must match exactly (or use wildcards; greater than or less than comparison is not supported).
  ///
  /// *   `timestamp` \- The time stamp of the Spot price history, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). You can use wildcards (* and ?). Greater than or less than comparison is not supported.
  _i3.BuiltList<Filter>? get filters;

  /// Filters the results by the specified Availability Zone.
  String? get availabilityZone;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The date and time, up to the current date, from which to stop retrieving the price history data, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get endTime;

  /// Filters the results by the specified instance types.
  _i3.BuiltList<InstanceType>? get instanceTypes;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// Filters the results by the specified basic product descriptions.
  _i3.BuiltList<String>? get productDescriptions;

  /// The date and time, up to the past 90 days, from which to start retrieving the price history data, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get startTime;
  @override
  DescribeSpotPriceHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        availabilityZone,
        dryRun,
        endTime,
        instanceTypes,
        maxResults,
        nextToken,
        productDescriptions,
        startTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotPriceHistoryRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'availabilityZone',
            availabilityZone,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'endTime',
            endTime,
          )
          ..add(
            'instanceTypes',
            instanceTypes,
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
            'productDescriptions',
            productDescriptions,
          )
          ..add(
            'startTime',
            startTime,
          );
    return helper.toString();
  }
}

class DescribeSpotPriceHistoryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSpotPriceHistoryRequest> {
  const DescribeSpotPriceHistoryRequestEc2QuerySerializer()
      : super('DescribeSpotPriceHistoryRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotPriceHistoryRequest,
        _$DescribeSpotPriceHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotPriceHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotPriceHistoryRequestBuilder();
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
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'endTime':
          result.endTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'InstanceType':
          result.instanceTypes.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceType)],
            ),
          ) as _i3.BuiltList<InstanceType>));
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
        case 'ProductDescription':
          result.productDescriptions.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotPriceHistoryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotPriceHistoryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotPriceHistoryRequest(
      :filters,
      :availabilityZone,
      :dryRun,
      :endTime,
      :instanceTypes,
      :maxResults,
      :nextToken,
      :productDescriptions,
      :startTime
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
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (endTime != null) {
      result$
        ..add(const _i1.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (instanceTypes != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          instanceTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(InstanceType)],
          ),
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
    if (productDescriptions != null) {
      result$
        ..add(const _i1.XmlElementName('ProductDescription'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          productDescriptions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
