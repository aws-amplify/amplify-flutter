// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_organization_conformance_pack_statuses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_organization_conformance_pack_statuses_request.g.dart';

abstract class DescribeOrganizationConformancePackStatusesRequest
    with
        _i1.HttpInput<DescribeOrganizationConformancePackStatusesRequest>,
        _i2.AWSEquatable<DescribeOrganizationConformancePackStatusesRequest>
    implements
        Built<DescribeOrganizationConformancePackStatusesRequest,
            DescribeOrganizationConformancePackStatusesRequestBuilder> {
  factory DescribeOrganizationConformancePackStatusesRequest({
    List<String>? organizationConformancePackNames,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeOrganizationConformancePackStatusesRequest._(
      organizationConformancePackNames: organizationConformancePackNames == null
          ? null
          : _i3.BuiltList(organizationConformancePackNames),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeOrganizationConformancePackStatusesRequest.build(
      [void Function(DescribeOrganizationConformancePackStatusesRequestBuilder)
          updates]) = _$DescribeOrganizationConformancePackStatusesRequest;

  const DescribeOrganizationConformancePackStatusesRequest._();

  factory DescribeOrganizationConformancePackStatusesRequest.fromRequest(
    DescribeOrganizationConformancePackStatusesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          DescribeOrganizationConformancePackStatusesRequest>> serializers = [
    DescribeOrganizationConformancePackStatusesRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeOrganizationConformancePackStatusesRequestBuilder b) {
    b.limit = 0;
  }

  /// The names of organization conformance packs for which you want status details. If you do not specify any names, Config returns details for all your organization conformance packs.
  _i3.BuiltList<String>? get organizationConformancePackNames;

  /// The maximum number of OrganizationConformancePackStatuses returned on each page. If you do no specify a number, Config uses the default. The default is 100.
  int get limit;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeOrganizationConformancePackStatusesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        organizationConformancePackNames,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeOrganizationConformancePackStatusesRequest')
      ..add(
        'organizationConformancePackNames',
        organizationConformancePackNames,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeOrganizationConformancePackStatusesRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        DescribeOrganizationConformancePackStatusesRequest> {
  const DescribeOrganizationConformancePackStatusesRequestAwsJson11Serializer()
      : super('DescribeOrganizationConformancePackStatusesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationConformancePackStatusesRequest,
        _$DescribeOrganizationConformancePackStatusesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeOrganizationConformancePackStatusesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationConformancePackStatusesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePackNames':
          result.organizationConformancePackNames
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    DescribeOrganizationConformancePackStatusesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeOrganizationConformancePackStatusesRequest(
      :organizationConformancePackNames,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (organizationConformancePackNames != null) {
      result$
        ..add('OrganizationConformancePackNames')
        ..add(serializers.serialize(
          organizationConformancePackNames,
          specifiedType: const FullType(
            _i3.BuiltList,
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
    return result$;
  }
}
