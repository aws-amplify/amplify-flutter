// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.start_config_rules_evaluation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'start_config_rules_evaluation_request.g.dart';

abstract class StartConfigRulesEvaluationRequest
    with
        _i1.HttpInput<StartConfigRulesEvaluationRequest>,
        _i2.AWSEquatable<StartConfigRulesEvaluationRequest>
    implements
        Built<StartConfigRulesEvaluationRequest,
            StartConfigRulesEvaluationRequestBuilder> {
  factory StartConfigRulesEvaluationRequest({List<String>? configRuleNames}) {
    return _$StartConfigRulesEvaluationRequest._(
        configRuleNames:
            configRuleNames == null ? null : _i3.BuiltList(configRuleNames));
  }

  factory StartConfigRulesEvaluationRequest.build(
          [void Function(StartConfigRulesEvaluationRequestBuilder) updates]) =
      _$StartConfigRulesEvaluationRequest;

  const StartConfigRulesEvaluationRequest._();

  factory StartConfigRulesEvaluationRequest.fromRequest(
    StartConfigRulesEvaluationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<StartConfigRulesEvaluationRequest>>
      serializers = [StartConfigRulesEvaluationRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartConfigRulesEvaluationRequestBuilder b) {}

  /// The list of names of Config rules that you want to run evaluations for.
  _i3.BuiltList<String>? get configRuleNames;
  @override
  StartConfigRulesEvaluationRequest getPayload() => this;
  @override
  List<Object?> get props => [configRuleNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartConfigRulesEvaluationRequest')
          ..add(
            'configRuleNames',
            configRuleNames,
          );
    return helper.toString();
  }
}

class StartConfigRulesEvaluationRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<StartConfigRulesEvaluationRequest> {
  const StartConfigRulesEvaluationRequestAwsJson11Serializer()
      : super('StartConfigRulesEvaluationRequest');

  @override
  Iterable<Type> get types => const [
        StartConfigRulesEvaluationRequest,
        _$StartConfigRulesEvaluationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  StartConfigRulesEvaluationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartConfigRulesEvaluationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleNames':
          result.configRuleNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StartConfigRulesEvaluationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StartConfigRulesEvaluationRequest(:configRuleNames) = object;
    if (configRuleNames != null) {
      result$
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          configRuleNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
