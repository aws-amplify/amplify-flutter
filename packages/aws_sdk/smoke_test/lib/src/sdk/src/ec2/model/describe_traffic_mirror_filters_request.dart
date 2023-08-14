// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_traffic_mirror_filters_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_traffic_mirror_filters_request.g.dart';

abstract class DescribeTrafficMirrorFiltersRequest
    with
        _i1.HttpInput<DescribeTrafficMirrorFiltersRequest>,
        _i2.AWSEquatable<DescribeTrafficMirrorFiltersRequest>
    implements
        Built<DescribeTrafficMirrorFiltersRequest,
            DescribeTrafficMirrorFiltersRequestBuilder> {
  factory DescribeTrafficMirrorFiltersRequest({
    List<String>? trafficMirrorFilterIds,
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeTrafficMirrorFiltersRequest._(
      trafficMirrorFilterIds: trafficMirrorFilterIds == null
          ? null
          : _i3.BuiltList(trafficMirrorFilterIds),
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeTrafficMirrorFiltersRequest.build(
          [void Function(DescribeTrafficMirrorFiltersRequestBuilder) updates]) =
      _$DescribeTrafficMirrorFiltersRequest;

  const DescribeTrafficMirrorFiltersRequest._();

  factory DescribeTrafficMirrorFiltersRequest.fromRequest(
    DescribeTrafficMirrorFiltersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeTrafficMirrorFiltersRequest>>
      serializers = [DescribeTrafficMirrorFiltersRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTrafficMirrorFiltersRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The ID of the Traffic Mirror filter.
  _i3.BuiltList<String>? get trafficMirrorFilterIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters. The possible values are:
  ///
  /// *   `description`: The Traffic Mirror filter description.
  ///
  /// *   `traffic-mirror-filter-id`: The ID of the Traffic Mirror filter.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeTrafficMirrorFiltersRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterIds,
        dryRun,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrafficMirrorFiltersRequest')
          ..add(
            'trafficMirrorFilterIds',
            trafficMirrorFilterIds,
          )
          ..add(
            'dryRun',
            dryRun,
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

class DescribeTrafficMirrorFiltersRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeTrafficMirrorFiltersRequest> {
  const DescribeTrafficMirrorFiltersRequestEc2QuerySerializer()
      : super('DescribeTrafficMirrorFiltersRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTrafficMirrorFiltersRequest,
        _$DescribeTrafficMirrorFiltersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrafficMirrorFiltersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrafficMirrorFiltersRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorFilterId':
          result.trafficMirrorFilterIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    DescribeTrafficMirrorFiltersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeTrafficMirrorFiltersRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTrafficMirrorFiltersRequest(
      :trafficMirrorFilterIds,
      :dryRun,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    if (trafficMirrorFilterIds != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          trafficMirrorFilterIds,
          specifiedType: const FullType.nullable(
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
    return result$;
  }
}
