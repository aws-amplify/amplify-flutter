// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_local_gateway_route_table_virtual_interface_group_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_virtual_interface_group_association.dart';

part 'delete_local_gateway_route_table_virtual_interface_group_association_result.g.dart';

abstract class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
    with
        _i1.AWSEquatable<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult>
    implements
        Built<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder> {
  factory DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult(
      {LocalGatewayRouteTableVirtualInterfaceGroupAssociation?
          localGatewayRouteTableVirtualInterfaceGroupAssociation}) {
    return _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
        ._(
            localGatewayRouteTableVirtualInterfaceGroupAssociation:
                localGatewayRouteTableVirtualInterfaceGroupAssociation);
  }

  factory DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult.build(
          [void Function(
                  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)
              updates]) =
      _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult;

  const DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult._();

  /// Constructs a [DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult] from a [payload] and [response].
  factory DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult.fromResponse(
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<
              DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult>>
      serializers = [
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultEc2QuerySerializer()
  ];

  /// Information about the association.
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation?
      get localGatewayRouteTableVirtualInterfaceGroupAssociation;
  @override
  List<Object?> get props =>
      [localGatewayRouteTableVirtualInterfaceGroupAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult')
      ..add(
        'localGatewayRouteTableVirtualInterfaceGroupAssociation',
        localGatewayRouteTableVirtualInterfaceGroupAssociation,
      );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult> {
  const DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultEc2QuerySerializer()
      : super(
            'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
        _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableVirtualInterfaceGroupAssociation':
          result.localGatewayRouteTableVirtualInterfaceGroupAssociation
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                LocalGatewayRouteTableVirtualInterfaceGroupAssociation),
          ) as LocalGatewayRouteTableVirtualInterfaceGroupAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult(
      :localGatewayRouteTableVirtualInterfaceGroupAssociation
    ) = object;
    if (localGatewayRouteTableVirtualInterfaceGroupAssociation != null) {
      result$
        ..add(const _i2.XmlElementName(
            'LocalGatewayRouteTableVirtualInterfaceGroupAssociation'))
        ..add(serializers.serialize(
          localGatewayRouteTableVirtualInterfaceGroupAssociation,
          specifiedType: const FullType(
              LocalGatewayRouteTableVirtualInterfaceGroupAssociation),
        ));
    }
    return result$;
  }
}
