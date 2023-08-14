// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_network_insights_access_scope_analysis_findings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_network_insights_access_scope_analysis_findings_request.g.dart';

abstract class GetNetworkInsightsAccessScopeAnalysisFindingsRequest
    with
        _i1.HttpInput<GetNetworkInsightsAccessScopeAnalysisFindingsRequest>,
        _i2.AWSEquatable<GetNetworkInsightsAccessScopeAnalysisFindingsRequest>
    implements
        Built<GetNetworkInsightsAccessScopeAnalysisFindingsRequest,
            GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder> {
  factory GetNetworkInsightsAccessScopeAnalysisFindingsRequest({
    String? networkInsightsAccessScopeAnalysisId,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest._(
      networkInsightsAccessScopeAnalysisId:
          networkInsightsAccessScopeAnalysisId,
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory GetNetworkInsightsAccessScopeAnalysisFindingsRequest.build(
      [void Function(
              GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder)
          updates]) = _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest;

  const GetNetworkInsightsAccessScopeAnalysisFindingsRequest._();

  factory GetNetworkInsightsAccessScopeAnalysisFindingsRequest.fromRequest(
    GetNetworkInsightsAccessScopeAnalysisFindingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          GetNetworkInsightsAccessScopeAnalysisFindingsRequest>> serializers = [
    GetNetworkInsightsAccessScopeAnalysisFindingsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisId,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetNetworkInsightsAccessScopeAnalysisFindingsRequest')
      ..add(
        'networkInsightsAccessScopeAnalysisId',
        networkInsightsAccessScopeAnalysisId,
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
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class GetNetworkInsightsAccessScopeAnalysisFindingsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        GetNetworkInsightsAccessScopeAnalysisFindingsRequest> {
  const GetNetworkInsightsAccessScopeAnalysisFindingsRequestEc2QuerySerializer()
      : super('GetNetworkInsightsAccessScopeAnalysisFindingsRequest');

  @override
  Iterable<Type> get types => const [
        GetNetworkInsightsAccessScopeAnalysisFindingsRequest,
        _$GetNetworkInsightsAccessScopeAnalysisFindingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetNetworkInsightsAccessScopeAnalysisFindingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GetNetworkInsightsAccessScopeAnalysisFindingsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInsightsAccessScopeAnalysisId':
          result.networkInsightsAccessScopeAnalysisId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetNetworkInsightsAccessScopeAnalysisFindingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetNetworkInsightsAccessScopeAnalysisFindingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetNetworkInsightsAccessScopeAnalysisFindingsRequest(
      :networkInsightsAccessScopeAnalysisId,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (networkInsightsAccessScopeAnalysisId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysisId,
          specifiedType: const FullType(String),
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
