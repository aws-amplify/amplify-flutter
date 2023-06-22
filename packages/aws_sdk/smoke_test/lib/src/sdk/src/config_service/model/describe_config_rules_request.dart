// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_config_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/describe_config_rules_filters.dart'
    as _i3;

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
    _i3.DescribeConfigRulesFilters? filters,
  }) {
    return _$DescribeConfigRulesRequest._(
      configRuleNames:
          configRuleNames == null ? null : _i4.BuiltList(configRuleNames),
      nextToken: nextToken,
      filters: filters,
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

  static const List<_i1.SmithySerializer<DescribeConfigRulesRequest>>
      serializers = [DescribeConfigRulesRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigRulesRequestBuilder b) {}

  /// The names of the Config rules for which you want details. If you do not specify any names, Config returns details for all your rules.
  _i4.BuiltList<String>? get configRuleNames;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// Returns a list of Detective or Proactive Config rules. By default, this API returns an unfiltered list. For more information on Detective or Proactive Config rules, see [**Evaluation Mode**](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html) in the _Config Developer Guide_.
  _i3.DescribeConfigRulesFilters? get filters;
  @override
  DescribeConfigRulesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleNames,
        nextToken,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConfigRulesRequest')
      ..add(
        'configRuleNames',
        configRuleNames,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'filters',
        filters,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleNames':
          result.configRuleNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DescribeConfigRulesFilters),
          ) as _i3.DescribeConfigRulesFilters));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeConfigRulesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigRulesRequest(:configRuleNames, :nextToken, :filters) =
        object;
    if (configRuleNames != null) {
      result$
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          configRuleNames,
          specifiedType: const FullType(
            _i4.BuiltList,
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
    if (filters != null) {
      result$
        ..add('Filters')
        ..add(serializers.serialize(
          filters,
          specifiedType: const FullType(_i3.DescribeConfigRulesFilters),
        ));
    }
    return result$;
  }
}
