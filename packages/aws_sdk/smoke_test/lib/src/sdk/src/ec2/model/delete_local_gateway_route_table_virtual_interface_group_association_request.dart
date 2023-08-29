// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_local_gateway_route_table_virtual_interface_group_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_local_gateway_route_table_virtual_interface_group_association_request.g.dart';

abstract class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
    with
        _i1.HttpInput<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>,
        _i2.AWSEquatable<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>
    implements
        Built<
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
            DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder> {
  factory DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest({
    String? localGatewayRouteTableVirtualInterfaceGroupAssociationId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
        ._(
      localGatewayRouteTableVirtualInterfaceGroupAssociationId:
          localGatewayRouteTableVirtualInterfaceGroupAssociationId,
      dryRun: dryRun,
    );
  }

  factory DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest.build(
          [void Function(
                  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)
              updates]) =
      _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest;

  const DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._();

  factory DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest.fromRequest(
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>>
      serializers = [
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
          b) {
    b.dryRun = false;
  }

  /// The ID of the local gateway route table virtual interface group association.
  String? get localGatewayRouteTableVirtualInterfaceGroupAssociationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVirtualInterfaceGroupAssociationId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest')
      ..add(
        'localGatewayRouteTableVirtualInterfaceGroupAssociationId',
        localGatewayRouteTableVirtualInterfaceGroupAssociationId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest> {
  const DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer()
      : super(
            'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
        _$DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId':
          result.localGatewayRouteTableVirtualInterfaceGroupAssociationId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
        object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest(
      :localGatewayRouteTableVirtualInterfaceGroupAssociationId,
      :dryRun
    ) = object;
    if (localGatewayRouteTableVirtualInterfaceGroupAssociationId != null) {
      result$
        ..add(const _i1.XmlElementName(
            'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId'))
        ..add(serializers.serialize(
          localGatewayRouteTableVirtualInterfaceGroupAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
