// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_insights_access_scope_analyses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart';

part 'describe_network_insights_access_scope_analyses_result.g.dart';

abstract class DescribeNetworkInsightsAccessScopeAnalysesResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsAccessScopeAnalysesResult>
    implements
        Built<DescribeNetworkInsightsAccessScopeAnalysesResult,
            DescribeNetworkInsightsAccessScopeAnalysesResultBuilder> {
  factory DescribeNetworkInsightsAccessScopeAnalysesResult({
    List<NetworkInsightsAccessScopeAnalysis>?
        networkInsightsAccessScopeAnalyses,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsAccessScopeAnalysesResult._(
      networkInsightsAccessScopeAnalyses:
          networkInsightsAccessScopeAnalyses == null
              ? null
              : _i2.BuiltList(networkInsightsAccessScopeAnalyses),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAccessScopeAnalysesResult.build(
      [void Function(DescribeNetworkInsightsAccessScopeAnalysesResultBuilder)
          updates]) = _$DescribeNetworkInsightsAccessScopeAnalysesResult;

  const DescribeNetworkInsightsAccessScopeAnalysesResult._();

  /// Constructs a [DescribeNetworkInsightsAccessScopeAnalysesResult] from a [payload] and [response].
  factory DescribeNetworkInsightsAccessScopeAnalysesResult.fromResponse(
    DescribeNetworkInsightsAccessScopeAnalysesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3
          .SmithySerializer<DescribeNetworkInsightsAccessScopeAnalysesResult>>
      serializers = [
    DescribeNetworkInsightsAccessScopeAnalysesResultEc2QuerySerializer()
  ];

  /// The Network Access Scope analyses.
  _i2.BuiltList<NetworkInsightsAccessScopeAnalysis>?
      get networkInsightsAccessScopeAnalyses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalyses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInsightsAccessScopeAnalysesResult')
      ..add(
        'networkInsightsAccessScopeAnalyses',
        networkInsightsAccessScopeAnalyses,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAccessScopeAnalysesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeNetworkInsightsAccessScopeAnalysesResult> {
  const DescribeNetworkInsightsAccessScopeAnalysesResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsAccessScopeAnalysesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAccessScopeAnalysesResult,
        _$DescribeNetworkInsightsAccessScopeAnalysesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAccessScopeAnalysesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAccessScopeAnalysesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeAnalysisSet':
          result.networkInsightsAccessScopeAnalyses
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInsightsAccessScopeAnalysis)],
            ),
          ) as _i2.BuiltList<NetworkInsightsAccessScopeAnalysis>));
        case 'nextToken':
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
    DescribeNetworkInsightsAccessScopeAnalysesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkInsightsAccessScopeAnalysesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInsightsAccessScopeAnalysesResult(
      :networkInsightsAccessScopeAnalyses,
      :nextToken
    ) = object;
    if (networkInsightsAccessScopeAnalyses != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeAnalysisSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInsightsAccessScopeAnalyses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkInsightsAccessScopeAnalysis)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
