// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateway_route_table_vpc_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart';

part 'describe_local_gateway_route_table_vpc_associations_result.g.dart';

abstract class DescribeLocalGatewayRouteTableVpcAssociationsResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayRouteTableVpcAssociationsResult>
    implements
        Built<DescribeLocalGatewayRouteTableVpcAssociationsResult,
            DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder> {
  factory DescribeLocalGatewayRouteTableVpcAssociationsResult({
    List<LocalGatewayRouteTableVpcAssociation>?
        localGatewayRouteTableVpcAssociations,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayRouteTableVpcAssociationsResult._(
      localGatewayRouteTableVpcAssociations:
          localGatewayRouteTableVpcAssociations == null
              ? null
              : _i2.BuiltList(localGatewayRouteTableVpcAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayRouteTableVpcAssociationsResult.build(
      [void Function(DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder)
          updates]) = _$DescribeLocalGatewayRouteTableVpcAssociationsResult;

  const DescribeLocalGatewayRouteTableVpcAssociationsResult._();

  /// Constructs a [DescribeLocalGatewayRouteTableVpcAssociationsResult] from a [payload] and [response].
  factory DescribeLocalGatewayRouteTableVpcAssociationsResult.fromResponse(
    DescribeLocalGatewayRouteTableVpcAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i3.SmithySerializer<
          DescribeLocalGatewayRouteTableVpcAssociationsResult>> serializers = [
    DescribeLocalGatewayRouteTableVpcAssociationsResultEc2QuerySerializer()
  ];

  /// Information about the associations.
  _i2.BuiltList<LocalGatewayRouteTableVpcAssociation>?
      get localGatewayRouteTableVpcAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVpcAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayRouteTableVpcAssociationsResult')
      ..add(
        'localGatewayRouteTableVpcAssociations',
        localGatewayRouteTableVpcAssociations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLocalGatewayRouteTableVpcAssociationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeLocalGatewayRouteTableVpcAssociationsResult> {
  const DescribeLocalGatewayRouteTableVpcAssociationsResultEc2QuerySerializer()
      : super('DescribeLocalGatewayRouteTableVpcAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTableVpcAssociationsResult,
        _$DescribeLocalGatewayRouteTableVpcAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTableVpcAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableVpcAssociationSet':
          result.localGatewayRouteTableVpcAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LocalGatewayRouteTableVpcAssociation)],
            ),
          ) as _i2.BuiltList<LocalGatewayRouteTableVpcAssociation>));
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
    DescribeLocalGatewayRouteTableVpcAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeLocalGatewayRouteTableVpcAssociationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewayRouteTableVpcAssociationsResult(
      :localGatewayRouteTableVpcAssociations,
      :nextToken
    ) = object;
    if (localGatewayRouteTableVpcAssociations != null) {
      result$
        ..add(
            const _i3.XmlElementName('LocalGatewayRouteTableVpcAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayRouteTableVpcAssociations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LocalGatewayRouteTableVpcAssociation)],
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
