// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    List<_i2.OrganizationConformancePackStatus>?
        organizationConformancePackStatuses,
    String? nextToken,
  }) {
    return _$DescribeOrganizationConformancePackStatusesResponse._(
      organizationConformancePackStatuses:
          organizationConformancePackStatuses == null
              ? null
              : _i3.BuiltList(organizationConformancePackStatuses),
      nextToken: nextToken,
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

  static const List<
      _i4.SmithySerializer<
          DescribeOrganizationConformancePackStatusesResponse>> serializers = [
    DescribeOrganizationConformancePackStatusesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeOrganizationConformancePackStatusesResponseBuilder b) {}

  /// A list of `OrganizationConformancePackStatus` objects.
  _i3.BuiltList<_i2.OrganizationConformancePackStatus>?
      get organizationConformancePackStatuses;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        organizationConformancePackStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConformancePackStatusesResponse')
      ..add(
        'organizationConformancePackStatuses',
        organizationConformancePackStatuses,
      )
      ..add(
        'nextToken',
        nextToken,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePackStatuses':
          result.organizationConformancePackStatuses
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.OrganizationConformancePackStatus)],
            ),
          ) as _i3.BuiltList<_i2.OrganizationConformancePackStatus>));
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
    DescribeOrganizationConformancePackStatusesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeOrganizationConformancePackStatusesResponse(
      :organizationConformancePackStatuses,
      :nextToken
    ) = object;
    if (organizationConformancePackStatuses != null) {
      result$
        ..add('OrganizationConformancePackStatuses')
        ..add(serializers.serialize(
          organizationConformancePackStatuses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.OrganizationConformancePackStatus)],
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
