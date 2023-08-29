// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_integration_test.cognito_identity_provider.model.event_risk_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_decision_type.dart';
import 'package:amplify_integration_test/src/sdk/src/cognito_identity_provider/model/risk_level_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'event_risk_type.g.dart';

/// The event risk type.
abstract class EventRiskType
    with _i1.AWSEquatable<EventRiskType>
    implements Built<EventRiskType, EventRiskTypeBuilder> {
  /// The event risk type.
  factory EventRiskType({
    RiskDecisionType? riskDecision,
    RiskLevelType? riskLevel,
    bool? compromisedCredentialsDetected,
  }) {
    return _$EventRiskType._(
      riskDecision: riskDecision,
      riskLevel: riskLevel,
      compromisedCredentialsDetected: compromisedCredentialsDetected,
    );
  }

  /// The event risk type.
  factory EventRiskType.build([void Function(EventRiskTypeBuilder) updates]) =
      _$EventRiskType;

  const EventRiskType._();

  static const List<_i2.SmithySerializer<EventRiskType>> serializers = [
    EventRiskTypeAwsJson11Serializer()
  ];

  /// The risk decision.
  RiskDecisionType? get riskDecision;

  /// The risk level.
  RiskLevelType? get riskLevel;

  /// Indicates whether compromised credentials were detected during an authentication event.
  bool? get compromisedCredentialsDetected;
  @override
  List<Object?> get props => [
        riskDecision,
        riskLevel,
        compromisedCredentialsDetected,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventRiskType')
      ..add(
        'riskDecision',
        riskDecision,
      )
      ..add(
        'riskLevel',
        riskLevel,
      )
      ..add(
        'compromisedCredentialsDetected',
        compromisedCredentialsDetected,
      );
    return helper.toString();
  }
}

class EventRiskTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<EventRiskType> {
  const EventRiskTypeAwsJson11Serializer() : super('EventRiskType');

  @override
  Iterable<Type> get types => const [
        EventRiskType,
        _$EventRiskType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EventRiskType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventRiskTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RiskDecision':
          result.riskDecision = (serializers.deserialize(
            value,
            specifiedType: const FullType(RiskDecisionType),
          ) as RiskDecisionType);
        case 'RiskLevel':
          result.riskLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(RiskLevelType),
          ) as RiskLevelType);
        case 'CompromisedCredentialsDetected':
          result.compromisedCredentialsDetected = (serializers.deserialize(
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
    EventRiskType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EventRiskType(
      :riskDecision,
      :riskLevel,
      :compromisedCredentialsDetected
    ) = object;
    if (riskDecision != null) {
      result$
        ..add('RiskDecision')
        ..add(serializers.serialize(
          riskDecision,
          specifiedType: const FullType(RiskDecisionType),
        ));
    }
    if (riskLevel != null) {
      result$
        ..add('RiskLevel')
        ..add(serializers.serialize(
          riskLevel,
          specifiedType: const FullType(RiskLevelType),
        ));
    }
    if (compromisedCredentialsDetected != null) {
      result$
        ..add('CompromisedCredentialsDetected')
        ..add(serializers.serialize(
          compromisedCredentialsDetected,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
