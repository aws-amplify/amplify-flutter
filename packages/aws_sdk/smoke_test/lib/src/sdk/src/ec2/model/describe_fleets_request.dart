// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fleets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_fleets_request.g.dart';

abstract class DescribeFleetsRequest
    with
        _i1.HttpInput<DescribeFleetsRequest>,
        _i2.AWSEquatable<DescribeFleetsRequest>
    implements Built<DescribeFleetsRequest, DescribeFleetsRequestBuilder> {
  factory DescribeFleetsRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    List<String>? fleetIds,
    List<Filter>? filters,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeFleetsRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      fleetIds: fleetIds == null ? null : _i3.BuiltList(fleetIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribeFleetsRequest.build(
          [void Function(DescribeFleetsRequestBuilder) updates]) =
      _$DescribeFleetsRequest;

  const DescribeFleetsRequest._();

  factory DescribeFleetsRequest.fromRequest(
    DescribeFleetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeFleetsRequest>> serializers = [
    DescribeFleetsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The IDs of the EC2 Fleets.
  ///
  /// If a fleet is of type `instant`, you must specify the fleet ID, otherwise it does not appear in the response.
  _i3.BuiltList<String>? get fleetIds;

  /// The filters.
  ///
  /// *   `activity-status` \- The progress of the EC2 Fleet ( `error` | `pending-fulfillment` | `pending-termination` | `fulfilled`).
  ///
  /// *   `excess-capacity-termination-policy` \- Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (`true` | `false`).
  ///
  /// *   `fleet-state` \- The state of the EC2 Fleet (`submitted` | `active` | `deleted` | `failed` | `deleted-running` | `deleted-terminating` | `modifying`).
  ///
  /// *   `replace-unhealthy-instances` \- Indicates whether EC2 Fleet should replace unhealthy instances (`true` | `false`).
  ///
  /// *   `type` \- The type of request (`instant` | `request` | `maintain`).
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribeFleetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        fleetIds,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetsRequest')
      ..add(
        'dryRun',
        dryRun,
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
        'fleetIds',
        fleetIds,
      )
      ..add(
        'filters',
        filters,
      );
    return helper.toString();
  }
}

class DescribeFleetsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFleetsRequest> {
  const DescribeFleetsRequestEc2QuerySerializer()
      : super('DescribeFleetsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFleetsRequest,
        _$DescribeFleetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetsRequestBuilder();
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
        case 'FleetId':
          result.fleetIds.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFleetsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeFleetsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFleetsRequest(
      :dryRun,
      :maxResults,
      :nextToken,
      :fleetIds,
      :filters
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    if (fleetIds != null) {
      result$
        ..add(const _i1.XmlElementName('FleetId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          fleetIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    return result$;
  }
}
