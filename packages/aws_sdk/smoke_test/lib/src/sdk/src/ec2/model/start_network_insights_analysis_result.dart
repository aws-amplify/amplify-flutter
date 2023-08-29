// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.start_network_insights_analysis_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_analysis.dart';

part 'start_network_insights_analysis_result.g.dart';

abstract class StartNetworkInsightsAnalysisResult
    with
        _i1.AWSEquatable<StartNetworkInsightsAnalysisResult>
    implements
        Built<StartNetworkInsightsAnalysisResult,
            StartNetworkInsightsAnalysisResultBuilder> {
  factory StartNetworkInsightsAnalysisResult(
      {NetworkInsightsAnalysis? networkInsightsAnalysis}) {
    return _$StartNetworkInsightsAnalysisResult._(
        networkInsightsAnalysis: networkInsightsAnalysis);
  }

  factory StartNetworkInsightsAnalysisResult.build(
          [void Function(StartNetworkInsightsAnalysisResultBuilder) updates]) =
      _$StartNetworkInsightsAnalysisResult;

  const StartNetworkInsightsAnalysisResult._();

  /// Constructs a [StartNetworkInsightsAnalysisResult] from a [payload] and [response].
  factory StartNetworkInsightsAnalysisResult.fromResponse(
    StartNetworkInsightsAnalysisResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<StartNetworkInsightsAnalysisResult>>
      serializers = [StartNetworkInsightsAnalysisResultEc2QuerySerializer()];

  /// Information about the network insights analysis.
  NetworkInsightsAnalysis? get networkInsightsAnalysis;
  @override
  List<Object?> get props => [networkInsightsAnalysis];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartNetworkInsightsAnalysisResult')
          ..add(
            'networkInsightsAnalysis',
            networkInsightsAnalysis,
          );
    return helper.toString();
  }
}

class StartNetworkInsightsAnalysisResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<StartNetworkInsightsAnalysisResult> {
  const StartNetworkInsightsAnalysisResultEc2QuerySerializer()
      : super('StartNetworkInsightsAnalysisResult');

  @override
  Iterable<Type> get types => const [
        StartNetworkInsightsAnalysisResult,
        _$StartNetworkInsightsAnalysisResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartNetworkInsightsAnalysisResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartNetworkInsightsAnalysisResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAnalysis':
          result.networkInsightsAnalysis.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInsightsAnalysis),
          ) as NetworkInsightsAnalysis));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StartNetworkInsightsAnalysisResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StartNetworkInsightsAnalysisResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StartNetworkInsightsAnalysisResult(:networkInsightsAnalysis) = object;
    if (networkInsightsAnalysis != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAnalysis'))
        ..add(serializers.serialize(
          networkInsightsAnalysis,
          specifiedType: const FullType(NetworkInsightsAnalysis),
        ));
    }
    return result$;
  }
}
