// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_organization_conformance_packs_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack.dart'
    as _i2;

part 'describe_organization_conformance_packs_response.g.dart';

abstract class DescribeOrganizationConformancePacksResponse
    with
        _i1.AWSEquatable<DescribeOrganizationConformancePacksResponse>
    implements
        Built<DescribeOrganizationConformancePacksResponse,
            DescribeOrganizationConformancePacksResponseBuilder> {
  factory DescribeOrganizationConformancePacksResponse({
    List<_i2.OrganizationConformancePack>? organizationConformancePacks,
    String? nextToken,
  }) {
    return _$DescribeOrganizationConformancePacksResponse._(
      organizationConformancePacks: organizationConformancePacks == null
          ? null
          : _i3.BuiltList(organizationConformancePacks),
      nextToken: nextToken,
    );
  }

  factory DescribeOrganizationConformancePacksResponse.build(
      [void Function(DescribeOrganizationConformancePacksResponseBuilder)
          updates]) = _$DescribeOrganizationConformancePacksResponse;

  const DescribeOrganizationConformancePacksResponse._();

  /// Constructs a [DescribeOrganizationConformancePacksResponse] from a [payload] and [response].
  factory DescribeOrganizationConformancePacksResponse.fromResponse(
    DescribeOrganizationConformancePacksResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeOrganizationConformancePacksResponse>>
      serializers = [
    DescribeOrganizationConformancePacksResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationConformancePacksResponseBuilder b) {}

  /// Returns a list of OrganizationConformancePacks objects.
  _i3.BuiltList<_i2.OrganizationConformancePack>?
      get organizationConformancePacks;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        organizationConformancePacks,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConformancePacksResponse')
      ..add(
        'organizationConformancePacks',
        organizationConformancePacks,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeOrganizationConformancePacksResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeOrganizationConformancePacksResponse> {
  const DescribeOrganizationConformancePacksResponseAwsJson11Serializer()
      : super('DescribeOrganizationConformancePacksResponse');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationConformancePacksResponse,
        _$DescribeOrganizationConformancePacksResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeOrganizationConformancePacksResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationConformancePacksResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePacks':
          result.organizationConformancePacks.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.OrganizationConformancePack)],
            ),
          ) as _i3.BuiltList<_i2.OrganizationConformancePack>));
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
    DescribeOrganizationConformancePacksResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeOrganizationConformancePacksResponse(
      :organizationConformancePacks,
      :nextToken
    ) = object;
    if (organizationConformancePacks != null) {
      result$
        ..add('OrganizationConformancePacks')
        ..add(serializers.serialize(
          organizationConformancePacks,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.OrganizationConformancePack)],
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
