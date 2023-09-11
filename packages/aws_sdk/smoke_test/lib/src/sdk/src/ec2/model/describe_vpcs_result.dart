// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpcs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart';

part 'describe_vpcs_result.g.dart';

abstract class DescribeVpcsResult
    with _i1.AWSEquatable<DescribeVpcsResult>
    implements Built<DescribeVpcsResult, DescribeVpcsResultBuilder> {
  factory DescribeVpcsResult({
    List<Vpc>? vpcs,
    String? nextToken,
  }) {
    return _$DescribeVpcsResult._(
      vpcs: vpcs == null ? null : _i2.BuiltList(vpcs),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcsResult.build(
          [void Function(DescribeVpcsResultBuilder) updates]) =
      _$DescribeVpcsResult;

  const DescribeVpcsResult._();

  /// Constructs a [DescribeVpcsResult] from a [payload] and [response].
  factory DescribeVpcsResult.fromResponse(
    DescribeVpcsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVpcsResult>> serializers = [
    DescribeVpcsResultEc2QuerySerializer()
  ];

  /// Information about one or more VPCs.
  _i2.BuiltList<Vpc>? get vpcs;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpcs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcsResult')
      ..add(
        'vpcs',
        vpcs,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVpcsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpcsResult> {
  const DescribeVpcsResultEc2QuerySerializer() : super('DescribeVpcsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcsResult,
        _$DescribeVpcsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcsResultBuilder();
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
              [FullType(Vpc)],
            ),
          ) as _i2.BuiltList<Vpc>));
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
    DescribeVpcsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcsResult(:vpcs, :nextToken) = object;
    if (vpcs != null) {
      result$
        ..add(const _i3.XmlElementName('VpcSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Vpc)],
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
