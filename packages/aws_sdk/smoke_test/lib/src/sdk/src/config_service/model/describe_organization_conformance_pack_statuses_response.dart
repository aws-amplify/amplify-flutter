// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_organization_conformance_pack_statuses_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_status.dart'
    as _i2;

part 'describe_organization_conformance_pack_statuses_response.g.dart';

abstract class DescribeOrganizationConformancePackStatusesResponse
    with
        _i1.AWSEquatable<DescribeOrganizationConformancePackStatusesResponse>
    implements
        Built<DescribeOrganizationConformancePackStatusesResponse,
            DescribeOrganizationConformancePackStatusesResponseBuilder> {
  factory DescribeOrganizationConformancePackStatusesResponse({
    String? nextToken,
    List<_i2.OrganizationConformancePackStatus>?
        organizationConformancePackStatuses,
  }) {
    return _$DescribeOrganizationConformancePackStatusesResponse._(
      nextToken: nextToken,
      organizationConformancePackStatuses:
          organizationConformancePackStatuses == null
              ? null
              : _i3.BuiltList(organizationConformancePackStatuses),
    );
  }

  factory DescribeOrganizationConformancePackStatusesResponse.build(
      [void Function(DescribeOrganizationConformancePackStatusesResponseBuilder)
          updates]) = _$DescribeOrganizationConformancePackStatusesResponse;

  const DescribeOrganizationConformancePackStatusesResponse._();

  /// Constructs a [DescribeOrganizationConformancePackStatusesResponse] from a [payload] and [response].
  factory DescribeOrganizationConformancePackStatusesResponse.fromResponse(
    DescribeOrganizationConformancePackStatusesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeOrganizationConformancePackStatusesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeOrganizationConformancePackStatusesResponseBuilder b) {}

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// A list of `OrganizationConformancePackStatus` objects.
  _i3.BuiltList<_i2.OrganizationConformancePackStatus>?
      get organizationConformancePackStatuses;
  @override
  List<Object?> get props => [
        nextToken,
        organizationConformancePackStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConformancePackStatusesResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'organizationConformancePackStatuses',
      organizationConformancePackStatuses,
    );
    return helper.toString();
  }
}

class DescribeOrganizationConformancePackStatusesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeOrganizationConformancePackStatusesResponse> {
  const DescribeOrganizationConformancePackStatusesResponseAwsJson11Serializer()
      : super('DescribeOrganizationConformancePackStatusesResponse');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationConformancePackStatusesResponse,
        _$DescribeOrganizationConformancePackStatusesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeOrganizationConformancePackStatusesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationConformancePackStatusesResponseBuilder();
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
        case 'OrganizationConformancePackStatuses':
          if (value != null) {
            result.organizationConformancePackStatuses
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.OrganizationConformancePackStatus)],
              ),
            ) as _i3.BuiltList<_i2.OrganizationConformancePackStatus>));
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
    final payload =
        (object as DescribeOrganizationConformancePackStatusesResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.organizationConformancePackStatuses != null) {
      result
        ..add('OrganizationConformancePackStatuses')
        ..add(serializers.serialize(
          payload.organizationConformancePackStatuses!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.OrganizationConformancePackStatus)],
          ),
        ));
    }
    return result;
  }
}
