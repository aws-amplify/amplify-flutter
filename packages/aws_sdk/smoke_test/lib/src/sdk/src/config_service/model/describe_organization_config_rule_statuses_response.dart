// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_organization_config_rule_statuses_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_config_rule_status.dart'
    as _i2;

part 'describe_organization_config_rule_statuses_response.g.dart';

abstract class DescribeOrganizationConfigRuleStatusesResponse
    with
        _i1.AWSEquatable<DescribeOrganizationConfigRuleStatusesResponse>
    implements
        Built<DescribeOrganizationConfigRuleStatusesResponse,
            DescribeOrganizationConfigRuleStatusesResponseBuilder> {
  factory DescribeOrganizationConfigRuleStatusesResponse({
    List<_i2.OrganizationConfigRuleStatus>? organizationConfigRuleStatuses,
    String? nextToken,
  }) {
    return _$DescribeOrganizationConfigRuleStatusesResponse._(
      organizationConfigRuleStatuses: organizationConfigRuleStatuses == null
          ? null
          : _i3.BuiltList(organizationConfigRuleStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeOrganizationConfigRuleStatusesResponse.build(
      [void Function(DescribeOrganizationConfigRuleStatusesResponseBuilder)
          updates]) = _$DescribeOrganizationConfigRuleStatusesResponse;

  const DescribeOrganizationConfigRuleStatusesResponse._();

  /// Constructs a [DescribeOrganizationConfigRuleStatusesResponse] from a [payload] and [response].
  factory DescribeOrganizationConfigRuleStatusesResponse.fromResponse(
    DescribeOrganizationConfigRuleStatusesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeOrganizationConfigRuleStatusesResponse>>
      serializers = [
    DescribeOrganizationConfigRuleStatusesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationConfigRuleStatusesResponseBuilder b) {}

  /// A list of `OrganizationConfigRuleStatus` objects.
  _i3.BuiltList<_i2.OrganizationConfigRuleStatus>?
      get organizationConfigRuleStatuses;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        organizationConfigRuleStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConfigRuleStatusesResponse')
      ..add(
        'organizationConfigRuleStatuses',
        organizationConfigRuleStatuses,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeOrganizationConfigRuleStatusesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeOrganizationConfigRuleStatusesResponse> {
  const DescribeOrganizationConfigRuleStatusesResponseAwsJson11Serializer()
      : super('DescribeOrganizationConfigRuleStatusesResponse');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationConfigRuleStatusesResponse,
        _$DescribeOrganizationConfigRuleStatusesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeOrganizationConfigRuleStatusesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationConfigRuleStatusesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConfigRuleStatuses':
          result.organizationConfigRuleStatuses
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.OrganizationConfigRuleStatus)],
            ),
          ) as _i3.BuiltList<_i2.OrganizationConfigRuleStatus>));
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
    DescribeOrganizationConfigRuleStatusesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeOrganizationConfigRuleStatusesResponse(
      :organizationConfigRuleStatuses,
      :nextToken
    ) = object;
    if (organizationConfigRuleStatuses != null) {
      result$
        ..add('OrganizationConfigRuleStatuses')
        ..add(serializers.serialize(
          organizationConfigRuleStatuses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.OrganizationConfigRuleStatus)],
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
