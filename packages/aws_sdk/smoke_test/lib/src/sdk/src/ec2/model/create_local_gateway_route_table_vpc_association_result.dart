// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_local_gateway_route_table_vpc_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart';

part 'create_local_gateway_route_table_vpc_association_result.g.dart';

abstract class CreateLocalGatewayRouteTableVpcAssociationResult
    with
        _i1.AWSEquatable<CreateLocalGatewayRouteTableVpcAssociationResult>
    implements
        Built<CreateLocalGatewayRouteTableVpcAssociationResult,
            CreateLocalGatewayRouteTableVpcAssociationResultBuilder> {
  factory CreateLocalGatewayRouteTableVpcAssociationResult(
      {LocalGatewayRouteTableVpcAssociation?
          localGatewayRouteTableVpcAssociation}) {
    return _$CreateLocalGatewayRouteTableVpcAssociationResult._(
        localGatewayRouteTableVpcAssociation:
            localGatewayRouteTableVpcAssociation);
  }

  factory CreateLocalGatewayRouteTableVpcAssociationResult.build(
      [void Function(CreateLocalGatewayRouteTableVpcAssociationResultBuilder)
          updates]) = _$CreateLocalGatewayRouteTableVpcAssociationResult;

  const CreateLocalGatewayRouteTableVpcAssociationResult._();

  /// Constructs a [CreateLocalGatewayRouteTableVpcAssociationResult] from a [payload] and [response].
  factory CreateLocalGatewayRouteTableVpcAssociationResult.fromResponse(
    CreateLocalGatewayRouteTableVpcAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          CreateLocalGatewayRouteTableVpcAssociationResult>> serializers = [
    CreateLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
  ];

  /// Information about the association.
  LocalGatewayRouteTableVpcAssociation?
      get localGatewayRouteTableVpcAssociation;
  @override
  List<Object?> get props => [localGatewayRouteTableVpcAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateLocalGatewayRouteTableVpcAssociationResult')
      ..add(
        'localGatewayRouteTableVpcAssociation',
        localGatewayRouteTableVpcAssociation,
      );
    return helper.toString();
  }
}

class CreateLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        CreateLocalGatewayRouteTableVpcAssociationResult> {
  const CreateLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
      : super('CreateLocalGatewayRouteTableVpcAssociationResult');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableVpcAssociationResult,
        _$CreateLocalGatewayRouteTableVpcAssociationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableVpcAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLocalGatewayRouteTableVpcAssociationResultBuilder();
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
    CreateLocalGatewayRouteTableVpcAssociationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateLocalGatewayRouteTableVpcAssociationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateLocalGatewayRouteTableVpcAssociationResult(
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
