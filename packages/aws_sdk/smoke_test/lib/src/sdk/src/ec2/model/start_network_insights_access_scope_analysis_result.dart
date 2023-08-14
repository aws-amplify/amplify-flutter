// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.start_network_insights_access_scope_analysis_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart';

part 'start_network_insights_access_scope_analysis_result.g.dart';

abstract class StartNetworkInsightsAccessScopeAnalysisResult
    with
        _i1.AWSEquatable<StartNetworkInsightsAccessScopeAnalysisResult>
    implements
        Built<StartNetworkInsightsAccessScopeAnalysisResult,
            StartNetworkInsightsAccessScopeAnalysisResultBuilder> {
  factory StartNetworkInsightsAccessScopeAnalysisResult(
      {NetworkInsightsAccessScopeAnalysis?
          networkInsightsAccessScopeAnalysis}) {
    return _$StartNetworkInsightsAccessScopeAnalysisResult._(
        networkInsightsAccessScopeAnalysis: networkInsightsAccessScopeAnalysis);
  }

  factory StartNetworkInsightsAccessScopeAnalysisResult.build(
      [void Function(StartNetworkInsightsAccessScopeAnalysisResultBuilder)
          updates]) = _$StartNetworkInsightsAccessScopeAnalysisResult;

  const StartNetworkInsightsAccessScopeAnalysisResult._();

  /// Constructs a [StartNetworkInsightsAccessScopeAnalysisResult] from a [payload] and [response].
  factory StartNetworkInsightsAccessScopeAnalysisResult.fromResponse(
    StartNetworkInsightsAccessScopeAnalysisResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<StartNetworkInsightsAccessScopeAnalysisResult>>
      serializers = [
    StartNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer()
  ];

  /// The Network Access Scope analysis.
  NetworkInsightsAccessScopeAnalysis? get networkInsightsAccessScopeAnalysis;
  @override
  List<Object?> get props => [networkInsightsAccessScopeAnalysis];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'StartNetworkInsightsAccessScopeAnalysisResult')
      ..add(
        'networkInsightsAccessScopeAnalysis',
        networkInsightsAccessScopeAnalysis,
      );
    return helper.toString();
  }
}

class StartNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        StartNetworkInsightsAccessScopeAnalysisResult> {
  const StartNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer()
      : super('StartNetworkInsightsAccessScopeAnalysisResult');

  @override
  Iterable<Type> get types => const [
        StartNetworkInsightsAccessScopeAnalysisResult,
        _$StartNetworkInsightsAccessScopeAnalysisResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartNetworkInsightsAccessScopeAnalysisResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartNetworkInsightsAccessScopeAnalysisResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeAnalysis':
          result.networkInsightsAccessScopeAnalysis
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInsightsAccessScopeAnalysis),
          ) as NetworkInsightsAccessScopeAnalysis));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StartNetworkInsightsAccessScopeAnalysisResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StartNetworkInsightsAccessScopeAnalysisResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StartNetworkInsightsAccessScopeAnalysisResult(
      :networkInsightsAccessScopeAnalysis
    ) = object;
    if (networkInsightsAccessScopeAnalysis != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAccessScopeAnalysis'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeAnalysis,
          specifiedType: const FullType(NetworkInsightsAccessScopeAnalysis),
        ));
    }
    return result$;
  }
}
