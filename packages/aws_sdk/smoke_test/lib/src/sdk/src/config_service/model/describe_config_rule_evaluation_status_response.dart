// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_config_rule_evaluation_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule_evaluation_status.dart'
    as _i2;

part 'describe_config_rule_evaluation_status_response.g.dart';

abstract class DescribeConfigRuleEvaluationStatusResponse
    with
        _i1.AWSEquatable<DescribeConfigRuleEvaluationStatusResponse>
    implements
        Built<DescribeConfigRuleEvaluationStatusResponse,
            DescribeConfigRuleEvaluationStatusResponseBuilder> {
  factory DescribeConfigRuleEvaluationStatusResponse({
    List<_i2.ConfigRuleEvaluationStatus>? configRulesEvaluationStatus,
    String? nextToken,
  }) {
    return _$DescribeConfigRuleEvaluationStatusResponse._(
      configRulesEvaluationStatus: configRulesEvaluationStatus == null
          ? null
          : _i3.BuiltList(configRulesEvaluationStatus),
      nextToken: nextToken,
    );
  }

  factory DescribeConfigRuleEvaluationStatusResponse.build(
      [void Function(DescribeConfigRuleEvaluationStatusResponseBuilder)
          updates]) = _$DescribeConfigRuleEvaluationStatusResponse;

  const DescribeConfigRuleEvaluationStatusResponse._();

  /// Constructs a [DescribeConfigRuleEvaluationStatusResponse] from a [payload] and [response].
  factory DescribeConfigRuleEvaluationStatusResponse.fromResponse(
    DescribeConfigRuleEvaluationStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeConfigRuleEvaluationStatusResponse>>
      serializers = [
    DescribeConfigRuleEvaluationStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigRuleEvaluationStatusResponseBuilder b) {}

  /// Status information about your Config managed rules.
  _i3.BuiltList<_i2.ConfigRuleEvaluationStatus>?
      get configRulesEvaluationStatus;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        configRulesEvaluationStatus,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigRuleEvaluationStatusResponse')
      ..add(
        'configRulesEvaluationStatus',
        configRulesEvaluationStatus,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeConfigRuleEvaluationStatusResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeConfigRuleEvaluationStatusResponse> {
  const DescribeConfigRuleEvaluationStatusResponseAwsJson11Serializer()
      : super('DescribeConfigRuleEvaluationStatusResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigRuleEvaluationStatusResponse,
        _$DescribeConfigRuleEvaluationStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigRuleEvaluationStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigRuleEvaluationStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRulesEvaluationStatus':
          result.configRulesEvaluationStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConfigRuleEvaluationStatus)],
            ),
          ) as _i3.BuiltList<_i2.ConfigRuleEvaluationStatus>));
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
    DescribeConfigRuleEvaluationStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigRuleEvaluationStatusResponse(
      :configRulesEvaluationStatus,
      :nextToken
    ) = object;
    if (configRulesEvaluationStatus != null) {
      result$
        ..add('ConfigRulesEvaluationStatus')
        ..add(serializers.serialize(
          configRulesEvaluationStatus,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConfigRuleEvaluationStatus)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
