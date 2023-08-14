// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_insights_analyses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_network_insights_analyses_request.g.dart';

abstract class DescribeNetworkInsightsAnalysesRequest
    with
        _i1.HttpInput<DescribeNetworkInsightsAnalysesRequest>,
        _i2.AWSEquatable<DescribeNetworkInsightsAnalysesRequest>
    implements
        Built<DescribeNetworkInsightsAnalysesRequest,
            DescribeNetworkInsightsAnalysesRequestBuilder> {
  factory DescribeNetworkInsightsAnalysesRequest({
    List<String>? networkInsightsAnalysisIds,
    String? networkInsightsPathId,
    DateTime? analysisStartTime,
    DateTime? analysisEndTime,
    List<Filter>? filters,
    int? maxResults,
    bool? dryRun,
    String? nextToken,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeNetworkInsightsAnalysesRequest._(
      networkInsightsAnalysisIds: networkInsightsAnalysisIds == null
          ? null
          : _i3.BuiltList(networkInsightsAnalysisIds),
      networkInsightsPathId: networkInsightsPathId,
      analysisStartTime: analysisStartTime,
      analysisEndTime: analysisEndTime,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      dryRun: dryRun,
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAnalysesRequest.build(
      [void Function(DescribeNetworkInsightsAnalysesRequestBuilder)
          updates]) = _$DescribeNetworkInsightsAnalysesRequest;

  const DescribeNetworkInsightsAnalysesRequest._();

  factory DescribeNetworkInsightsAnalysesRequest.fromRequest(
    DescribeNetworkInsightsAnalysesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeNetworkInsightsAnalysesRequest>>
      serializers = [
    DescribeNetworkInsightsAnalysesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInsightsAnalysesRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the network insights analyses. You must specify either analysis IDs or a path ID.
  _i3.BuiltList<String>? get networkInsightsAnalysisIds;

  /// The ID of the path. You must specify either a path ID or analysis IDs.
  String? get networkInsightsPathId;

  /// The time when the network insights analyses started.
  DateTime? get analysisStartTime;

  /// The time when the network insights analyses ended.
  DateTime? get analysisEndTime;

  /// The filters. The following are the possible values:
  ///
  /// *   path-found - A Boolean value that indicates whether a feasible path is found.
  ///
  /// *   status - The status of the analysis (running | succeeded | failed).
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeNetworkInsightsAnalysesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAnalysisIds,
        networkInsightsPathId,
        analysisStartTime,
        analysisEndTime,
        filters,
        maxResults,
        dryRun,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInsightsAnalysesRequest')
          ..add(
            'networkInsightsAnalysisIds',
            networkInsightsAnalysisIds,
          )
          ..add(
            'networkInsightsPathId',
            networkInsightsPathId,
          )
          ..add(
            'analysisStartTime',
            analysisStartTime,
          )
          ..add(
            'analysisEndTime',
            analysisEndTime,
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
            'dryRun',
            dryRun,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAnalysesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeNetworkInsightsAnalysesRequest> {
  const DescribeNetworkInsightsAnalysesRequestEc2QuerySerializer()
      : super('DescribeNetworkInsightsAnalysesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAnalysesRequest,
        _$DescribeNetworkInsightsAnalysesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAnalysesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAnalysesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInsightsAnalysisId':
          result.networkInsightsAnalysisIds
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
        case 'NetworkInsightsPathId':
          result.networkInsightsPathId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AnalysisStartTime':
          result.analysisStartTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'AnalysisEndTime':
          result.analysisEndTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    DescribeNetworkInsightsAnalysesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInsightsAnalysesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInsightsAnalysesRequest(
      :networkInsightsAnalysisIds,
      :networkInsightsPathId,
      :analysisStartTime,
      :analysisEndTime,
      :filters,
      :maxResults,
      :dryRun,
      :nextToken
    ) = object;
    if (networkInsightsAnalysisIds != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsAnalysisId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInsightsAnalysisIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (networkInsightsPathId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          networkInsightsPathId,
          specifiedType: const FullType(String),
        ));
    }
    if (analysisStartTime != null) {
      result$
        ..add(const _i1.XmlElementName('AnalysisStartTime'))
        ..add(serializers.serialize(
          analysisStartTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (analysisEndTime != null) {
      result$
        ..add(const _i1.XmlElementName('AnalysisEndTime'))
        ..add(serializers.serialize(
          analysisEndTime,
          specifiedType: const FullType.nullable(DateTime),
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
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
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
