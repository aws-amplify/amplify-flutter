// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_config_rules_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/config_rule.dart';

part 'describe_config_rules_response.g.dart';

abstract class DescribeConfigRulesResponse
    with _i1.AWSEquatable<DescribeConfigRulesResponse>
    implements
        Built<DescribeConfigRulesResponse, DescribeConfigRulesResponseBuilder> {
  factory DescribeConfigRulesResponse({
    List<ConfigRule>? configRules,
    String? nextToken,
  }) {
    return _$DescribeConfigRulesResponse._(
      configRules: configRules == null ? null : _i2.BuiltList(configRules),
      nextToken: nextToken,
    );
  }

  factory DescribeConfigRulesResponse.build(
          [void Function(DescribeConfigRulesResponseBuilder) updates]) =
      _$DescribeConfigRulesResponse;

  const DescribeConfigRulesResponse._();

  /// Constructs a [DescribeConfigRulesResponse] from a [payload] and [response].
  factory DescribeConfigRulesResponse.fromResponse(
    DescribeConfigRulesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeConfigRulesResponse>>
      serializers = [DescribeConfigRulesResponseAwsJson11Serializer()];

  /// The details about your Config rules.
  _i2.BuiltList<ConfigRule>? get configRules;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        configRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConfigRulesResponse')
      ..add(
        'configRules',
        configRules,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeConfigRulesResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<DescribeConfigRulesResponse> {
  const DescribeConfigRulesResponseAwsJson11Serializer()
      : super('DescribeConfigRulesResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConfigRulesResponse,
        _$DescribeConfigRulesResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigRulesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigRulesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRules':
          result.configRules.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConfigRule)],
            ),
          ) as _i2.BuiltList<ConfigRule>));
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
    DescribeConfigRulesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigRulesResponse(:configRules, :nextToken) = object;
    if (configRules != null) {
      result$
        ..add('ConfigRules')
        ..add(serializers.serialize(
          configRules,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConfigRule)],
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
