// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_config_rule_evaluation_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_config_rule_evaluation_status_request.g.dart';

abstract class DescribeConfigRuleEvaluationStatusRequest
    with
        _i1.HttpInput<DescribeConfigRuleEvaluationStatusRequest>,
        _i2.AWSEquatable<DescribeConfigRuleEvaluationStatusRequest>
    implements
        Built<DescribeConfigRuleEvaluationStatusRequest,
            DescribeConfigRuleEvaluationStatusRequestBuilder> {
  factory DescribeConfigRuleEvaluationStatusRequest({
    List<String>? configRuleNames,
    String? nextToken,
    int? limit,
  }) {
    limit ??= 0;
    return _$DescribeConfigRuleEvaluationStatusRequest._(
      configRuleNames:
          configRuleNames == null ? null : _i3.BuiltList(configRuleNames),
      nextToken: nextToken,
      limit: limit,
    );
  }

  factory DescribeConfigRuleEvaluationStatusRequest.build(
      [void Function(DescribeConfigRuleEvaluationStatusRequestBuilder)
          updates]) = _$DescribeConfigRuleEvaluationStatusRequest;

  const DescribeConfigRuleEvaluationStatusRequest._();

  factory DescribeConfigRuleEvaluationStatusRequest.fromRequest(
    DescribeConfigRuleEvaluationStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeConfigRuleEvaluationStatusRequest>>
      serializers = [
    DescribeConfigRuleEvaluationStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigRuleEvaluationStatusRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the Config managed rules for which you want status information. If you do not specify any names, Config returns status information for all Config managed rules that you use.
  _i3.BuiltList<String>? get configRuleNames;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The number of rule evaluation results that you want returned.
  ///
  /// This parameter is required if the rule limit for your account is more than the default of 150 rules.
  ///
  /// For information about requesting a rule limit increase, see [Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the _Amazon Web Services General Reference Guide_.
  int get limit;
  @override
  DescribeConfigRuleEvaluationStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleNames,
        nextToken,
        limit,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConfigRuleEvaluationStatusRequest')
          ..add(
            'configRuleNames',
            configRuleNames,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'limit',
            limit,
          );
    return helper.toString();
  }
}

class DescribeConfigRuleEvaluationStatusRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeConfigRuleEvaluationStatusRequest> {
  const DescribeConfigRuleEvaluationStatusRequestAwsJson11Serializer()
      : super('DescribeConfigRuleEvaluationStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConfigRuleEvaluationStatusRequest,
        _$DescribeConfigRuleEvaluationStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigRuleEvaluationStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigRuleEvaluationStatusRequestBuilder();
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
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeConfigRuleEvaluationStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigRuleEvaluationStatusRequest(
      :configRuleNames,
      :nextToken,
      :limit
    ) = object;
    result$.addAll([
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
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
