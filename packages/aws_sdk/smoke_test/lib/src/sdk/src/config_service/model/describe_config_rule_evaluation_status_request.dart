// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    int? limit,
    String? nextToken,
  }) {
    return _$DescribeConfigRuleEvaluationStatusRequest._(
      configRuleNames:
          configRuleNames == null ? null : _i3.BuiltList(configRuleNames),
      limit: limit,
      nextToken: nextToken,
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

  static const List<_i1.SmithySerializer> serializers = [
    DescribeConfigRuleEvaluationStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigRuleEvaluationStatusRequestBuilder b) {}

  /// The name of the Config managed rules for which you want status information. If you do not specify any names, Config returns status information for all Config managed rules that you use.
  _i3.BuiltList<String>? get configRuleNames;

  /// The number of rule evaluation results that you want returned.
  ///
  /// This parameter is required if the rule limit for your account is more than the default of 150 rules.
  ///
  /// For information about requesting a rule limit increase, see [Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config) in the _Amazon Web Services General Reference Guide_.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeConfigRuleEvaluationStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleNames,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeConfigRuleEvaluationStatusRequest');
    helper.add(
      'configRuleNames',
      configRuleNames,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
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
      switch (key) {
        case 'ConfigRuleNames':
          if (value != null) {
            result.configRuleNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeConfigRuleEvaluationStatusRequest);
    final result = <Object?>[];
    if (payload.configRuleNames != null) {
      result
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          payload.configRuleNames!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
