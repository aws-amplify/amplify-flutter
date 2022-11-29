// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.describe_config_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_config_rules_request.g.dart';

abstract class DescribeConfigRulesRequest
    with
        _i1.HttpInput<DescribeConfigRulesRequest>,
        _i2.AWSEquatable<DescribeConfigRulesRequest>
    implements
        Built<DescribeConfigRulesRequest, DescribeConfigRulesRequestBuilder> {
  factory DescribeConfigRulesRequest({
    List<String>? configRuleNames,
    String? nextToken,
  }) {
    return _$DescribeConfigRulesRequest._(
      configRuleNames:
          configRuleNames == null ? null : _i3.BuiltList(configRuleNames),
      nextToken: nextToken,
    );
  }

  factory DescribeConfigRulesRequest.build(
          [void Function(DescribeConfigRulesRequestBuilder) updates]) =
      _$DescribeConfigRulesRequest;

  const DescribeConfigRulesRequest._();

  factory DescribeConfigRulesRequest.fromRequest(
    DescribeConfigRulesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeConfigRulesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigRulesRequestBuilder b) {}

  /// The names of the Config rules for which you want details. If you do not specify any names, Config returns details for all your rules.
  _i3.BuiltList<String>? get configRuleNames;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeConfigRulesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleNames,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConfigRulesRequest');
    helper.add(
      'configRuleNames',
      configRuleNames,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeConfigRulesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DescribeConfigRulesRequest> {
  const DescribeConfigRulesRequestAwsJson11Serializer()
      : super('DescribeConfigRulesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeConfigRulesRequest,
        _$DescribeConfigRulesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigRulesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigRulesRequestBuilder();
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
    final payload = (object as DescribeConfigRulesRequest);
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
