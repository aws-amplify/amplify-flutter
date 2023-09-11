// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_multicast_domains_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart';

part 'describe_transit_gateway_multicast_domains_result.g.dart';

abstract class DescribeTransitGatewayMulticastDomainsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayMulticastDomainsResult>
    implements
        Built<DescribeTransitGatewayMulticastDomainsResult,
            DescribeTransitGatewayMulticastDomainsResultBuilder> {
  factory DescribeTransitGatewayMulticastDomainsResult({
    List<TransitGatewayMulticastDomain>? transitGatewayMulticastDomains,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayMulticastDomainsResult._(
      transitGatewayMulticastDomains: transitGatewayMulticastDomains == null
          ? null
          : _i2.BuiltList(transitGatewayMulticastDomains),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayMulticastDomainsResult.build(
      [void Function(DescribeTransitGatewayMulticastDomainsResultBuilder)
          updates]) = _$DescribeTransitGatewayMulticastDomainsResult;

  const DescribeTransitGatewayMulticastDomainsResult._();

  /// Constructs a [DescribeTransitGatewayMulticastDomainsResult] from a [payload] and [response].
  factory DescribeTransitGatewayMulticastDomainsResult.fromResponse(
    DescribeTransitGatewayMulticastDomainsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTransitGatewayMulticastDomainsResult>>
      serializers = [
    DescribeTransitGatewayMulticastDomainsResultEc2QuerySerializer()
  ];

  /// Information about the transit gateway multicast domains.
  _i2.BuiltList<TransitGatewayMulticastDomain>?
      get transitGatewayMulticastDomains;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomains,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayMulticastDomainsResult')
      ..add(
        'transitGatewayMulticastDomains',
        transitGatewayMulticastDomains,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeTransitGatewayMulticastDomainsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayMulticastDomainsResult> {
  const DescribeTransitGatewayMulticastDomainsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayMulticastDomainsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayMulticastDomainsResult,
        _$DescribeTransitGatewayMulticastDomainsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayMulticastDomainsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayMulticastDomainsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayMulticastDomains':
          result.transitGatewayMulticastDomains
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayMulticastDomain)],
            ),
          ) as _i2.BuiltList<TransitGatewayMulticastDomain>));
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
    DescribeTransitGatewayMulticastDomainsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayMulticastDomainsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayMulticastDomainsResult(
      :transitGatewayMulticastDomains,
      :nextToken
    ) = object;
    if (transitGatewayMulticastDomains != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomains'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayMulticastDomains,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayMulticastDomain)],
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
