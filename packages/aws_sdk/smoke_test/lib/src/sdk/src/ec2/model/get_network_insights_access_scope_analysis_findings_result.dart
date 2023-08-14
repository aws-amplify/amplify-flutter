// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_network_insights_access_scope_analysis_findings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_analysis_finding.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_status.dart';

part 'get_network_insights_access_scope_analysis_findings_result.g.dart';

abstract class GetNetworkInsightsAccessScopeAnalysisFindingsResult
    with
        _i1.AWSEquatable<GetNetworkInsightsAccessScopeAnalysisFindingsResult>
    implements
        Built<GetNetworkInsightsAccessScopeAnalysisFindingsResult,
            GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder> {
  factory GetNetworkInsightsAccessScopeAnalysisFindingsResult({
    String? networkInsightsAccessScopeAnalysisId,
    AnalysisStatus? analysisStatus,
    List<AccessScopeAnalysisFinding>? analysisFindings,
    String? nextToken,
  }) {
    return _$GetNetworkInsightsAccessScopeAnalysisFindingsResult._(
      networkInsightsAccessScopeAnalysisId:
          networkInsightsAccessScopeAnalysisId,
      analysisStatus: analysisStatus,
      analysisFindings:
          analysisFindings == null ? null : _i2.BuiltList(analysisFindings),
      nextToken: nextToken,
    );
  }

  factory GetNetworkInsightsAccessScopeAnalysisFindingsResult.build(
      [void Function(GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder)
          updates]) = _$GetNetworkInsightsAccessScopeAnalysisFindingsResult;

  const GetNetworkInsightsAccessScopeAnalysisFindingsResult._();

  /// Constructs a [GetNetworkInsightsAccessScopeAnalysisFindingsResult] from a [payload] and [response].
  factory GetNetworkInsightsAccessScopeAnalysisFindingsResult.fromResponse(
    GetNetworkInsightsAccessScopeAnalysisFindingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i3.SmithySerializer<
          GetNetworkInsightsAccessScopeAnalysisFindingsResult>> serializers = [
    GetNetworkInsightsAccessScopeAnalysisFindingsResultEc2QuerySerializer()
  ];

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;

  /// The status of Network Access Scope Analysis.
  AnalysisStatus? get analysisStatus;

  /// The findings associated with Network Access Scope Analysis.
  _i2.BuiltList<AccessScopeAnalysisFinding>? get analysisFindings;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisId,
        analysisStatus,
        analysisFindings,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetNetworkInsightsAccessScopeAnalysisFindingsResult')
      ..add(
        'networkInsightsAccessScopeAnalysisId',
        networkInsightsAccessScopeAnalysisId,
      )
      ..add(
        'analysisStatus',
        analysisStatus,
      )
      ..add(
        'analysisFindings',
        analysisFindings,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetNetworkInsightsAccessScopeAnalysisFindingsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        GetNetworkInsightsAccessScopeAnalysisFindingsResult> {
  const GetNetworkInsightsAccessScopeAnalysisFindingsResultEc2QuerySerializer()
      : super('GetNetworkInsightsAccessScopeAnalysisFindingsResult');

  @override
  Iterable<Type> get types => const [
        GetNetworkInsightsAccessScopeAnalysisFindingsResult,
        _$GetNetworkInsightsAccessScopeAnalysisFindingsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNetworkInsightsAccessScopeAnalysisFindingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeAnalysisId':
          result.networkInsightsAccessScopeAnalysisId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'analysisStatus':
          result.analysisStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(AnalysisStatus),
          ) as AnalysisStatus);
        case 'analysisFindingSet':
          result.analysisFindings.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AccessScopeAnalysisFinding)],
            ),
          ) as _i2.BuiltList<AccessScopeAnalysisFinding>));
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
    GetNetworkInsightsAccessScopeAnalysisFindingsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetNetworkInsightsAccessScopeAnalysisFindingsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetNetworkInsightsAccessScopeAnalysisFindingsResult(
      :networkInsightsAccessScopeAnalysisId,
      :analysisStatus,
      :analysisFindings,
      :nextToken
    ) = object;
    if (networkInsightsAccessScopeAnalysisId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisId,
          specifiedType: const FullType(String),
        ));
    }
    if (analysisStatus != null) {
      result$
        ..add(const _i3.XmlElementName('AnalysisStatus'))
        ..add(serializers.serialize(
          analysisStatus,
          specifiedType: const FullType.nullable(AnalysisStatus),
        ));
    }
    if (analysisFindings != null) {
      result$
        ..add(const _i3.XmlElementName('AnalysisFindingSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          analysisFindings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AccessScopeAnalysisFinding)],
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
