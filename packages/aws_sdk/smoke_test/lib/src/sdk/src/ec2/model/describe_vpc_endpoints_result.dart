// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart';

part 'describe_vpc_endpoints_result.g.dart';

abstract class DescribeVpcEndpointsResult
    with _i1.AWSEquatable<DescribeVpcEndpointsResult>
    implements
        Built<DescribeVpcEndpointsResult, DescribeVpcEndpointsResultBuilder> {
  factory DescribeVpcEndpointsResult({
    List<VpcEndpoint>? vpcEndpoints,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointsResult._(
      vpcEndpoints: vpcEndpoints == null ? null : _i2.BuiltList(vpcEndpoints),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointsResult.build(
          [void Function(DescribeVpcEndpointsResultBuilder) updates]) =
      _$DescribeVpcEndpointsResult;

  const DescribeVpcEndpointsResult._();

  /// Constructs a [DescribeVpcEndpointsResult] from a [payload] and [response].
  factory DescribeVpcEndpointsResult.fromResponse(
    DescribeVpcEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVpcEndpointsResult>>
      serializers = [DescribeVpcEndpointsResultEc2QuerySerializer()];

  /// Information about the endpoints.
  _i2.BuiltList<VpcEndpoint>? get vpcEndpoints;

  /// The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpcEndpoints,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcEndpointsResult')
      ..add(
        'vpcEndpoints',
        vpcEndpoints,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVpcEndpointsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpcEndpointsResult> {
  const DescribeVpcEndpointsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointsResult,
        _$DescribeVpcEndpointsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpcEndpointSet':
          result.vpcEndpoints.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpcEndpoint)],
            ),
          ) as _i2.BuiltList<VpcEndpoint>));
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
    DescribeVpcEndpointsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcEndpointsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointsResult(:vpcEndpoints, :nextToken) = object;
    if (vpcEndpoints != null) {
      result$
        ..add(const _i3.XmlElementName('VpcEndpointSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcEndpoints,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VpcEndpoint)],
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
