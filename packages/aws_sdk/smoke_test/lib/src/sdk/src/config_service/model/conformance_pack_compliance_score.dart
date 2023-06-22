// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.conformance_pack_compliance_score; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'conformance_pack_compliance_score.g.dart';

/// A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack. This metric provides you with a high-level view of the compliance state of your conformance packs. You can use it to identify, investigate, and understand the level of compliance in your conformance packs.
abstract class ConformancePackComplianceScore
    with
        _i1.AWSEquatable<ConformancePackComplianceScore>
    implements
        Built<ConformancePackComplianceScore,
            ConformancePackComplianceScoreBuilder> {
  /// A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack. This metric provides you with a high-level view of the compliance state of your conformance packs. You can use it to identify, investigate, and understand the level of compliance in your conformance packs.
  factory ConformancePackComplianceScore({
    String? score,
    String? conformancePackName,
    DateTime? lastUpdatedTime,
  }) {
    return _$ConformancePackComplianceScore._(
      score: score,
      conformancePackName: conformancePackName,
      lastUpdatedTime: lastUpdatedTime,
    );
  }

  /// A compliance score is the percentage of the number of compliant rule-resource combinations in a conformance pack compared to the number of total possible rule-resource combinations in the conformance pack. This metric provides you with a high-level view of the compliance state of your conformance packs. You can use it to identify, investigate, and understand the level of compliance in your conformance packs.
  factory ConformancePackComplianceScore.build(
          [void Function(ConformancePackComplianceScoreBuilder) updates]) =
      _$ConformancePackComplianceScore;

  const ConformancePackComplianceScore._();

  static const List<_i2.SmithySerializer<ConformancePackComplianceScore>>
      serializers = [ConformancePackComplianceScoreAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackComplianceScoreBuilder b) {}

  /// Compliance score for the conformance pack. Conformance packs with no evaluation results will have a compliance score of `INSUFFICIENT_DATA`.
  String? get score;

  /// The name of the conformance pack.
  String? get conformancePackName;

  /// The time that the conformance pack compliance score was last updated.
  DateTime? get lastUpdatedTime;
  @override
  List<Object?> get props => [
        score,
        conformancePackName,
        lastUpdatedTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackComplianceScore')
      ..add(
        'score',
        score,
      )
      ..add(
        'conformancePackName',
        conformancePackName,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      );
    return helper.toString();
  }
}

class ConformancePackComplianceScoreAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConformancePackComplianceScore> {
  const ConformancePackComplianceScoreAwsJson11Serializer()
      : super('ConformancePackComplianceScore');

  @override
  Iterable<Type> get types => const [
        ConformancePackComplianceScore,
        _$ConformancePackComplianceScore,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackComplianceScore deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackComplianceScoreBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Score':
          result.score = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConformancePackComplianceScore object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackComplianceScore(
      :score,
      :conformancePackName,
      :lastUpdatedTime
    ) = object;
    if (score != null) {
      result$
        ..add('Score')
        ..add(serializers.serialize(
          score,
          specifiedType: const FullType(String),
        ));
    }
    if (conformancePackName != null) {
      result$
        ..add('ConformancePackName')
        ..add(serializers.serialize(
          conformancePackName,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add('LastUpdatedTime')
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
