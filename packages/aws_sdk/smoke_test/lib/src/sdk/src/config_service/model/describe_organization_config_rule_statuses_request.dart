// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_organization_config_rule_statuses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_organization_config_rule_statuses_request.g.dart';

abstract class DescribeOrganizationConfigRuleStatusesRequest
    with
        _i1.HttpInput<DescribeOrganizationConfigRuleStatusesRequest>,
        _i2.AWSEquatable<DescribeOrganizationConfigRuleStatusesRequest>
    implements
        Built<DescribeOrganizationConfigRuleStatusesRequest,
            DescribeOrganizationConfigRuleStatusesRequestBuilder> {
  factory DescribeOrganizationConfigRuleStatusesRequest({
    int? limit,
    String? nextToken,
    List<String>? organizationConfigRuleNames,
  }) {
    return _$DescribeOrganizationConfigRuleStatusesRequest._(
      limit: limit,
      nextToken: nextToken,
      organizationConfigRuleNames: organizationConfigRuleNames == null
          ? null
          : _i3.BuiltList(organizationConfigRuleNames),
    );
  }

  factory DescribeOrganizationConfigRuleStatusesRequest.build(
      [void Function(DescribeOrganizationConfigRuleStatusesRequestBuilder)
          updates]) = _$DescribeOrganizationConfigRuleStatusesRequest;

  const DescribeOrganizationConfigRuleStatusesRequest._();

  factory DescribeOrganizationConfigRuleStatusesRequest.fromRequest(
    DescribeOrganizationConfigRuleStatusesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeOrganizationConfigRuleStatusesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationConfigRuleStatusesRequestBuilder b) {}

  /// The maximum number of `OrganizationConfigRuleStatuses` returned on each page. If you do no specify a number, Config uses the default. The default is 100.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The names of organization Config rules for which you want status details. If you do not specify any names, Config returns details for all your organization Config rules.
  _i3.BuiltList<String>? get organizationConfigRuleNames;
  @override
  DescribeOrganizationConfigRuleStatusesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        limit,
        nextToken,
        organizationConfigRuleNames,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConfigRuleStatusesRequest');
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

class DescribeOrganizationConfigRuleStatusesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        DescribeOrganizationConfigRuleStatusesRequest> {
  const DescribeOrganizationConfigRuleStatusesRequestAwsJson11Serializer()
      : super('DescribeOrganizationConfigRuleStatusesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationConfigRuleStatusesRequest,
        _$DescribeOrganizationConfigRuleStatusesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeOrganizationConfigRuleStatusesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationConfigRuleStatusesRequestBuilder();
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
    final payload = (object as DescribeOrganizationConfigRuleStatusesRequest);
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
