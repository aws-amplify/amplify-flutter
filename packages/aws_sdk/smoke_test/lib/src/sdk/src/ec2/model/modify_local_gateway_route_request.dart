// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_local_gateway_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_local_gateway_route_request.g.dart';

abstract class ModifyLocalGatewayRouteRequest
    with
        _i1.HttpInput<ModifyLocalGatewayRouteRequest>,
        _i2.AWSEquatable<ModifyLocalGatewayRouteRequest>
    implements
        Built<ModifyLocalGatewayRouteRequest,
            ModifyLocalGatewayRouteRequestBuilder> {
  factory ModifyLocalGatewayRouteRequest({
    String? destinationCidrBlock,
    String? localGatewayRouteTableId,
    String? localGatewayVirtualInterfaceGroupId,
    String? networkInterfaceId,
    bool? dryRun,
    String? destinationPrefixListId,
  }) {
    dryRun ??= false;
    return _$ModifyLocalGatewayRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      networkInterfaceId: networkInterfaceId,
      dryRun: dryRun,
      destinationPrefixListId: destinationPrefixListId,
    );
  }

  factory ModifyLocalGatewayRouteRequest.build(
          [void Function(ModifyLocalGatewayRouteRequestBuilder) updates]) =
      _$ModifyLocalGatewayRouteRequest;

  const ModifyLocalGatewayRouteRequest._();

  factory ModifyLocalGatewayRouteRequest.fromRequest(
    ModifyLocalGatewayRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyLocalGatewayRouteRequest>>
      serializers = [ModifyLocalGatewayRouteRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyLocalGatewayRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The CIDR block used for destination matches. The value that you provide must match the CIDR of an existing route in the table.
  String? get destinationCidrBlock;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The ID of the virtual interface group.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list. Use a prefix list in place of `DestinationCidrBlock`. You cannot use `DestinationPrefixListId` and `DestinationCidrBlock` in the same request.
  String? get destinationPrefixListId;
  @override
  ModifyLocalGatewayRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        localGatewayRouteTableId,
        localGatewayVirtualInterfaceGroupId,
        networkInterfaceId,
        dryRun,
        destinationPrefixListId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyLocalGatewayRouteRequest')
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
      )
      ..add(
        'localGatewayVirtualInterfaceGroupId',
        localGatewayVirtualInterfaceGroupId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'destinationPrefixListId',
        destinationPrefixListId,
      );
    return helper.toString();
  }
}

class ModifyLocalGatewayRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyLocalGatewayRouteRequest> {
  const ModifyLocalGatewayRouteRequestEc2QuerySerializer()
      : super('ModifyLocalGatewayRouteRequest');

  @override
  Iterable<Type> get types => const [
        ModifyLocalGatewayRouteRequest,
        _$ModifyLocalGatewayRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLocalGatewayRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLocalGatewayRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LocalGatewayVirtualInterfaceGroupId':
          result.localGatewayVirtualInterfaceGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetworkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DestinationPrefixListId':
          result.destinationPrefixListId = (serializers.deserialize(
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
    ModifyLocalGatewayRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyLocalGatewayRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyLocalGatewayRouteRequest(
      :destinationCidrBlock,
      :localGatewayRouteTableId,
      :localGatewayVirtualInterfaceGroupId,
      :networkInterfaceId,
      :dryRun,
      :destinationPrefixListId
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayVirtualInterfaceGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          localGatewayVirtualInterfaceGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (destinationPrefixListId != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          destinationPrefixListId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
