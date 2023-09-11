// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoint_service_permissions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/allowed_principal.dart';

part 'describe_vpc_endpoint_service_permissions_result.g.dart';

abstract class DescribeVpcEndpointServicePermissionsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointServicePermissionsResult>
    implements
        Built<DescribeVpcEndpointServicePermissionsResult,
            DescribeVpcEndpointServicePermissionsResultBuilder> {
  factory DescribeVpcEndpointServicePermissionsResult({
    List<AllowedPrincipal>? allowedPrincipals,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointServicePermissionsResult._(
      allowedPrincipals:
          allowedPrincipals == null ? null : _i2.BuiltList(allowedPrincipals),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointServicePermissionsResult.build(
      [void Function(DescribeVpcEndpointServicePermissionsResultBuilder)
          updates]) = _$DescribeVpcEndpointServicePermissionsResult;

  const DescribeVpcEndpointServicePermissionsResult._();

  /// Constructs a [DescribeVpcEndpointServicePermissionsResult] from a [payload] and [response].
  factory DescribeVpcEndpointServicePermissionsResult.fromResponse(
    DescribeVpcEndpointServicePermissionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeVpcEndpointServicePermissionsResult>>
      serializers = [
    DescribeVpcEndpointServicePermissionsResultEc2QuerySerializer()
  ];

  /// Information about the allowed principals.
  _i2.BuiltList<AllowedPrincipal>? get allowedPrincipals;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        allowedPrincipals,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointServicePermissionsResult')
      ..add(
        'allowedPrincipals',
        allowedPrincipals,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVpcEndpointServicePermissionsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeVpcEndpointServicePermissionsResult> {
  const DescribeVpcEndpointServicePermissionsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointServicePermissionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServicePermissionsResult,
        _$DescribeVpcEndpointServicePermissionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServicePermissionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServicePermissionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allowedPrincipals':
          result.allowedPrincipals.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AllowedPrincipal)],
            ),
          ) as _i2.BuiltList<AllowedPrincipal>));
        case 'nextToken':
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
    DescribeVpcEndpointServicePermissionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcEndpointServicePermissionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointServicePermissionsResult(
      :allowedPrincipals,
      :nextToken
    ) = object;
    if (allowedPrincipals != null) {
      result$
        ..add(const _i3.XmlElementName('AllowedPrincipals'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allowedPrincipals,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AllowedPrincipal)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
