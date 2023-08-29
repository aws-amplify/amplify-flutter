// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_classic_link_dns_support_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_dns_support.dart';

part 'describe_vpc_classic_link_dns_support_result.g.dart';

abstract class DescribeVpcClassicLinkDnsSupportResult
    with
        _i1.AWSEquatable<DescribeVpcClassicLinkDnsSupportResult>
    implements
        Built<DescribeVpcClassicLinkDnsSupportResult,
            DescribeVpcClassicLinkDnsSupportResultBuilder> {
  factory DescribeVpcClassicLinkDnsSupportResult({
    String? nextToken,
    List<ClassicLinkDnsSupport>? vpcs,
  }) {
    return _$DescribeVpcClassicLinkDnsSupportResult._(
      nextToken: nextToken,
      vpcs: vpcs == null ? null : _i2.BuiltList(vpcs),
    );
  }

  factory DescribeVpcClassicLinkDnsSupportResult.build(
      [void Function(DescribeVpcClassicLinkDnsSupportResultBuilder)
          updates]) = _$DescribeVpcClassicLinkDnsSupportResult;

  const DescribeVpcClassicLinkDnsSupportResult._();

  /// Constructs a [DescribeVpcClassicLinkDnsSupportResult] from a [payload] and [response].
  factory DescribeVpcClassicLinkDnsSupportResult.fromResponse(
    DescribeVpcClassicLinkDnsSupportResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeVpcClassicLinkDnsSupportResult>>
      serializers = [
    DescribeVpcClassicLinkDnsSupportResultEc2QuerySerializer()
  ];

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// Information about the ClassicLink DNS support status of the VPCs.
  _i2.BuiltList<ClassicLinkDnsSupport>? get vpcs;
  @override
  List<Object?> get props => [
        nextToken,
        vpcs,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcClassicLinkDnsSupportResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'vpcs',
            vpcs,
          );
    return helper.toString();
  }
}

class DescribeVpcClassicLinkDnsSupportResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeVpcClassicLinkDnsSupportResult> {
  const DescribeVpcClassicLinkDnsSupportResultEc2QuerySerializer()
      : super('DescribeVpcClassicLinkDnsSupportResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcClassicLinkDnsSupportResult,
        _$DescribeVpcClassicLinkDnsSupportResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcClassicLinkDnsSupportResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcClassicLinkDnsSupportResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcs':
          result.vpcs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ClassicLinkDnsSupport)],
            ),
          ) as _i2.BuiltList<ClassicLinkDnsSupport>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpcClassicLinkDnsSupportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcClassicLinkDnsSupportResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcClassicLinkDnsSupportResult(:nextToken, :vpcs) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcs != null) {
      result$
        ..add(const _i3.XmlElementName('Vpcs'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ClassicLinkDnsSupport)],
          ),
        ));
    }
    return result$;
  }
}
