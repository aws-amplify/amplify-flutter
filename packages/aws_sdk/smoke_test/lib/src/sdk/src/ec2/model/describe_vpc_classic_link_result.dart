// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_classic_link_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_classic_link.dart';

part 'describe_vpc_classic_link_result.g.dart';

abstract class DescribeVpcClassicLinkResult
    with
        _i1.AWSEquatable<DescribeVpcClassicLinkResult>
    implements
        Built<DescribeVpcClassicLinkResult,
            DescribeVpcClassicLinkResultBuilder> {
  factory DescribeVpcClassicLinkResult({List<VpcClassicLink>? vpcs}) {
    return _$DescribeVpcClassicLinkResult._(
        vpcs: vpcs == null ? null : _i2.BuiltList(vpcs));
  }

  factory DescribeVpcClassicLinkResult.build(
          [void Function(DescribeVpcClassicLinkResultBuilder) updates]) =
      _$DescribeVpcClassicLinkResult;

  const DescribeVpcClassicLinkResult._();

  /// Constructs a [DescribeVpcClassicLinkResult] from a [payload] and [response].
  factory DescribeVpcClassicLinkResult.fromResponse(
    DescribeVpcClassicLinkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVpcClassicLinkResult>>
      serializers = [DescribeVpcClassicLinkResultEc2QuerySerializer()];

  /// The ClassicLink status of the VPCs.
  _i2.BuiltList<VpcClassicLink>? get vpcs;
  @override
  List<Object?> get props => [vpcs];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcClassicLinkResult')
      ..add(
        'vpcs',
        vpcs,
      );
    return helper.toString();
  }
}

class DescribeVpcClassicLinkResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpcClassicLinkResult> {
  const DescribeVpcClassicLinkResultEc2QuerySerializer()
      : super('DescribeVpcClassicLinkResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcClassicLinkResult,
        _$DescribeVpcClassicLinkResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcClassicLinkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcClassicLinkResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpcSet':
          result.vpcs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpcClassicLink)],
            ),
          ) as _i2.BuiltList<VpcClassicLink>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpcClassicLinkResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcClassicLinkResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcClassicLinkResult(:vpcs) = object;
    if (vpcs != null) {
      result$
        ..add(const _i3.XmlElementName('VpcSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VpcClassicLink)],
          ),
        ));
    }
    return result$;
  }
}
