// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_organization_config_rule_detailed_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/member_account_status.dart'
    as _i2;

part 'get_organization_config_rule_detailed_status_response.g.dart';

abstract class GetOrganizationConfigRuleDetailedStatusResponse
    with
        _i1.AWSEquatable<GetOrganizationConfigRuleDetailedStatusResponse>
    implements
        Built<GetOrganizationConfigRuleDetailedStatusResponse,
            GetOrganizationConfigRuleDetailedStatusResponseBuilder> {
  factory GetOrganizationConfigRuleDetailedStatusResponse({
    String? nextToken,
    List<_i2.MemberAccountStatus>? organizationConfigRuleDetailedStatus,
  }) {
    return _$GetOrganizationConfigRuleDetailedStatusResponse._(
      nextToken: nextToken,
      organizationConfigRuleDetailedStatus:
          organizationConfigRuleDetailedStatus == null
              ? null
              : _i3.BuiltList(organizationConfigRuleDetailedStatus),
    );
  }

  factory GetOrganizationConfigRuleDetailedStatusResponse.build(
      [void Function(GetOrganizationConfigRuleDetailedStatusResponseBuilder)
          updates]) = _$GetOrganizationConfigRuleDetailedStatusResponse;

  const GetOrganizationConfigRuleDetailedStatusResponse._();

  /// Constructs a [GetOrganizationConfigRuleDetailedStatusResponse] from a [payload] and [response].
  factory GetOrganizationConfigRuleDetailedStatusResponse.fromResponse(
    GetOrganizationConfigRuleDetailedStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetOrganizationConfigRuleDetailedStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOrganizationConfigRuleDetailedStatusResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// A list of `MemberAccountStatus` objects.
  _i3.BuiltList<_i2.MemberAccountStatus>?
      get organizationConfigRuleDetailedStatus;
  @override
  List<Object?> get props => [
        nextToken,
        organizationConfigRuleDetailedStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetOrganizationConfigRuleDetailedStatusResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'organizationConfigRuleDetailedStatus',
      organizationConfigRuleDetailedStatus,
    );
    return helper.toString();
  }
}

class GetOrganizationConfigRuleDetailedStatusResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        GetOrganizationConfigRuleDetailedStatusResponse> {
  const GetOrganizationConfigRuleDetailedStatusResponseAwsJson11Serializer()
      : super('GetOrganizationConfigRuleDetailedStatusResponse');

  @override
  Iterable<Type> get types => const [
        GetOrganizationConfigRuleDetailedStatusResponse,
        _$GetOrganizationConfigRuleDetailedStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetOrganizationConfigRuleDetailedStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationConfigRuleDetailedStatusResponseBuilder();
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
        case 'OrganizationConfigRuleDetailedStatus':
          if (value != null) {
            result.organizationConfigRuleDetailedStatus
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.MemberAccountStatus)],
              ),
            ) as _i3.BuiltList<_i2.MemberAccountStatus>));
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
    final payload = (object as GetOrganizationConfigRuleDetailedStatusResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.organizationConfigRuleDetailedStatus != null) {
      result
        ..add('OrganizationConfigRuleDetailedStatus')
        ..add(serializers.serialize(
          payload.organizationConfigRuleDetailedStatus!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.MemberAccountStatus)],
          ),
        ));
    }
    return result;
  }
}
