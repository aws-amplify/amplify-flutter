// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_traffic_mirror_targets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_traffic_mirror_targets_request.g.dart';

abstract class DescribeTrafficMirrorTargetsRequest
    with
        _i1.HttpInput<DescribeTrafficMirrorTargetsRequest>,
        _i2.AWSEquatable<DescribeTrafficMirrorTargetsRequest>
    implements
        Built<DescribeTrafficMirrorTargetsRequest,
            DescribeTrafficMirrorTargetsRequestBuilder> {
  factory DescribeTrafficMirrorTargetsRequest({
    List<String>? trafficMirrorTargetIds,
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeTrafficMirrorTargetsRequest._(
      trafficMirrorTargetIds: trafficMirrorTargetIds == null
          ? null
          : _i3.BuiltList(trafficMirrorTargetIds),
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeTrafficMirrorTargetsRequest.build(
          [void Function(DescribeTrafficMirrorTargetsRequestBuilder) updates]) =
      _$DescribeTrafficMirrorTargetsRequest;

  const DescribeTrafficMirrorTargetsRequest._();

  factory DescribeTrafficMirrorTargetsRequest.fromRequest(
    DescribeTrafficMirrorTargetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeTrafficMirrorTargetsRequest>>
      serializers = [DescribeTrafficMirrorTargetsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTrafficMirrorTargetsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The ID of the Traffic Mirror targets.
  _i3.BuiltList<String>? get trafficMirrorTargetIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters. The possible values are:
  ///
  /// *   `description`: The Traffic Mirror target description.
  ///
  /// *   `network-interface-id`: The ID of the Traffic Mirror session network interface.
  ///
  /// *   `network-load-balancer-arn`: The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the session.
  ///
  /// *   `owner-id`: The ID of the account that owns the Traffic Mirror session.
  ///
  /// *   `traffic-mirror-target-id`: The ID of the Traffic Mirror target.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeTrafficMirrorTargetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorTargetIds,
        dryRun,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrafficMirrorTargetsRequest')
          ..add(
            'trafficMirrorTargetIds',
            trafficMirrorTargetIds,
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

class DescribeTrafficMirrorTargetsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeTrafficMirrorTargetsRequest> {
  const DescribeTrafficMirrorTargetsRequestEc2QuerySerializer()
      : super('DescribeTrafficMirrorTargetsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTrafficMirrorTargetsRequest,
        _$DescribeTrafficMirrorTargetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrafficMirrorTargetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrafficMirrorTargetsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TrafficMirrorTargetId':
          result.trafficMirrorTargetIds
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
    DescribeTrafficMirrorTargetsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeTrafficMirrorTargetsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTrafficMirrorTargetsRequest(
      :trafficMirrorTargetIds,
      :dryRun,
      :filters,
      :maxResults,
      :nextToken
    ) = object;
    if (trafficMirrorTargetIds != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorTargetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          trafficMirrorTargetIds,
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
