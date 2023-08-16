// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_local_gateway_route_table_vpc_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart';

part 'delete_local_gateway_route_table_vpc_association_result.g.dart';

abstract class DeleteLocalGatewayRouteTableVpcAssociationResult
    with
        _i1.AWSEquatable<DeleteLocalGatewayRouteTableVpcAssociationResult>
    implements
        Built<DeleteLocalGatewayRouteTableVpcAssociationResult,
            DeleteLocalGatewayRouteTableVpcAssociationResultBuilder> {
  factory DeleteLocalGatewayRouteTableVpcAssociationResult(
      {LocalGatewayRouteTableVpcAssociation?
          localGatewayRouteTableVpcAssociation}) {
    return _$DeleteLocalGatewayRouteTableVpcAssociationResult._(
        localGatewayRouteTableVpcAssociation:
            localGatewayRouteTableVpcAssociation);
  }

  factory DeleteLocalGatewayRouteTableVpcAssociationResult.build(
      [void Function(DeleteLocalGatewayRouteTableVpcAssociationResultBuilder)
          updates]) = _$DeleteLocalGatewayRouteTableVpcAssociationResult;

  const DeleteLocalGatewayRouteTableVpcAssociationResult._();

  /// Constructs a [DeleteLocalGatewayRouteTableVpcAssociationResult] from a [payload] and [response].
  factory DeleteLocalGatewayRouteTableVpcAssociationResult.fromResponse(
    DeleteLocalGatewayRouteTableVpcAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2
          .SmithySerializer<DeleteLocalGatewayRouteTableVpcAssociationResult>>
      serializers = [
    DeleteLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
  ];

  /// Information about the association.
  LocalGatewayRouteTableVpcAssociation?
      get localGatewayRouteTableVpcAssociation;
  @override
  List<Object?> get props => [localGatewayRouteTableVpcAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteLocalGatewayRouteTableVpcAssociationResult')
      ..add(
        'localGatewayRouteTableVpcAssociation',
        localGatewayRouteTableVpcAssociation,
      );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeleteLocalGatewayRouteTableVpcAssociationResult> {
  const DeleteLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
      : super('DeleteLocalGatewayRouteTableVpcAssociationResult');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteTableVpcAssociationResult,
        _$DeleteLocalGatewayRouteTableVpcAssociationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteTableVpcAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLocalGatewayRouteTableVpcAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableVpcAssociation':
          result.localGatewayRouteTableVpcAssociation
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LocalGatewayRouteTableVpcAssociation),
          ) as LocalGatewayRouteTableVpcAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLocalGatewayRouteTableVpcAssociationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteLocalGatewayRouteTableVpcAssociationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLocalGatewayRouteTableVpcAssociationResult(
      :localGatewayRouteTableVpcAssociation
    ) = object;
    if (localGatewayRouteTableVpcAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('LocalGatewayRouteTableVpcAssociation'))
        ..add(serializers.serialize(
          localGatewayRouteTableVpcAssociation,
          specifiedType: const FullType(LocalGatewayRouteTableVpcAssociation),
        ));
    }
    return result$;
  }
}
