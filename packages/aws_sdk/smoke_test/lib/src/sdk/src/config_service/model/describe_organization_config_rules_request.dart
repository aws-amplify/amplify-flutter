// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_organization_config_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_organization_config_rules_request.g.dart';

abstract class DescribeOrganizationConfigRulesRequest
    with
        _i1.HttpInput<DescribeOrganizationConfigRulesRequest>,
        _i2.AWSEquatable<DescribeOrganizationConfigRulesRequest>
    implements
        Built<DescribeOrganizationConfigRulesRequest,
            DescribeOrganizationConfigRulesRequestBuilder> {
  factory DescribeOrganizationConfigRulesRequest({
    int? limit,
    String? nextToken,
    List<String>? organizationConfigRuleNames,
  }) {
    return _$DescribeOrganizationConfigRulesRequest._(
      limit: limit,
      nextToken: nextToken,
      organizationConfigRuleNames: organizationConfigRuleNames == null
          ? null
          : _i3.BuiltList(organizationConfigRuleNames),
    );
  }

  factory DescribeOrganizationConfigRulesRequest.build(
      [void Function(DescribeOrganizationConfigRulesRequestBuilder)
          updates]) = _$DescribeOrganizationConfigRulesRequest;

  const DescribeOrganizationConfigRulesRequest._();

  factory DescribeOrganizationConfigRulesRequest.fromRequest(
    DescribeOrganizationConfigRulesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeOrganizationConfigRulesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationConfigRulesRequestBuilder b) {}

  /// The maximum number of organization Config rules returned on each page. If you do no specify a number, Config uses the default. The default is 100.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The names of organization Config rules for which you want details. If you do not specify any names, Config returns details for all your organization Config rules.
  _i3.BuiltList<String>? get organizationConfigRuleNames;
  @override
  DescribeOrganizationConfigRulesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        limit,
        nextToken,
        organizationConfigRuleNames,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeOrganizationConfigRulesRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'organizationConfigRuleNames',
      organizationConfigRuleNames,
    );
    return helper.toString();
  }
}

class DescribeOrganizationConfigRulesRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeOrganizationConfigRulesRequest> {
  const DescribeOrganizationConfigRulesRequestAwsJson11Serializer()
      : super('DescribeOrganizationConfigRulesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationConfigRulesRequest,
        _$DescribeOrganizationConfigRulesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeOrganizationConfigRulesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationConfigRulesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
        case 'OrganizationConfigRuleNames':
          if (value != null) {
            result.organizationConfigRuleNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as DescribeOrganizationConfigRulesRequest);
    final result = <Object?>[];
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
    if (payload.organizationConfigRuleNames != null) {
      result
        ..add('OrganizationConfigRuleNames')
        ..add(serializers.serialize(
          payload.organizationConfigRuleNames!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
