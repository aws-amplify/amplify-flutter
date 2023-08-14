// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_type_offerings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/location_type.dart';

part 'describe_instance_type_offerings_request.g.dart';

abstract class DescribeInstanceTypeOfferingsRequest
    with
        _i1.HttpInput<DescribeInstanceTypeOfferingsRequest>,
        _i2.AWSEquatable<DescribeInstanceTypeOfferingsRequest>
    implements
        Built<DescribeInstanceTypeOfferingsRequest,
            DescribeInstanceTypeOfferingsRequestBuilder> {
  factory DescribeInstanceTypeOfferingsRequest({
    bool? dryRun,
    LocationType? locationType,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    return _$DescribeInstanceTypeOfferingsRequest._(
      dryRun: dryRun,
      locationType: locationType,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypeOfferingsRequest.build(
      [void Function(DescribeInstanceTypeOfferingsRequestBuilder)
          updates]) = _$DescribeInstanceTypeOfferingsRequest;

  const DescribeInstanceTypeOfferingsRequest._();

  factory DescribeInstanceTypeOfferingsRequest.fromRequest(
    DescribeInstanceTypeOfferingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeInstanceTypeOfferingsRequest>>
      serializers = [DescribeInstanceTypeOfferingsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceTypeOfferingsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The location type.
  LocationType? get locationType;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `location` \- This depends on the location type. For example, if the location type is `region` (default), the location is the Region code (for example, `us-east-2`.)
  ///
  /// *   `instance-type` \- The instance type. For example, `c5.2xlarge`.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int? get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;
  @override
  DescribeInstanceTypeOfferingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        locationType,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceTypeOfferingsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'locationType',
            locationType,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeInstanceTypeOfferingsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeInstanceTypeOfferingsRequest> {
  const DescribeInstanceTypeOfferingsRequestEc2QuerySerializer()
      : super('DescribeInstanceTypeOfferingsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypeOfferingsRequest,
        _$DescribeInstanceTypeOfferingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypeOfferingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypeOfferingsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'LocationType':
          result.locationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocationType),
          ) as LocationType);
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
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
    DescribeInstanceTypeOfferingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceTypeOfferingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceTypeOfferingsRequest(
      :dryRun,
      :locationType,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (locationType != null) {
      result$
        ..add(const _i1.XmlElementName('LocationType'))
        ..add(serializers.serialize(
          locationType,
          specifiedType: const FullType.nullable(LocationType),
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (maxResults != null) {
      result$
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          maxResults,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
