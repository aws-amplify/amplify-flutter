// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? nextToken,
    List<_i2.OrganizationConfigRuleStatus>? organizationConfigRuleStatuses,
  }) {
    return _$DescribeOrganizationConfigRuleStatusesResponse._(
      nextToken: nextToken,
      organizationConfigRuleStatuses: organizationConfigRuleStatuses == null
          ? null
          : _i3.BuiltList(organizationConfigRuleStatuses),
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

  static const List<_i4.SmithySerializer> serializers = [
    DescribeOrganizationConfigRuleStatusesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationConfigRuleStatusesResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// A list of `OrganizationConfigRuleStatus` objects.
  _i3.BuiltList<_i2.OrganizationConfigRuleStatus>?
      get organizationConfigRuleStatuses;
  @override
  List<Object?> get props => [
        nextToken,
        organizationConfigRuleStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConfigRuleStatusesResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'organizationConfigRuleStatuses',
      organizationConfigRuleStatuses,
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
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OrganizationConfigRuleStatuses':
          if (value != null) {
            result.organizationConfigRuleStatuses
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.OrganizationConfigRuleStatus)],
              ),
            ) as _i3.BuiltList<_i2.OrganizationConfigRuleStatus>));
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
    final payload = (object as DescribeOrganizationConfigRuleStatusesResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.organizationConfigRuleStatuses != null) {
      result
        ..add('OrganizationConfigRuleStatuses')
        ..add(serializers.serialize(
          payload.organizationConfigRuleStatuses!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.OrganizationConfigRuleStatus)],
          ),
        ));
    }
    return result;
  }
}
