// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_local_gateway_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_local_gateway_route_request.g.dart';

abstract class DeleteLocalGatewayRouteRequest
    with
        _i1.HttpInput<DeleteLocalGatewayRouteRequest>,
        _i2.AWSEquatable<DeleteLocalGatewayRouteRequest>
    implements
        Built<DeleteLocalGatewayRouteRequest,
            DeleteLocalGatewayRouteRequestBuilder> {
  factory DeleteLocalGatewayRouteRequest({
    String? destinationCidrBlock,
    String? localGatewayRouteTableId,
    bool? dryRun,
    String? destinationPrefixListId,
  }) {
    dryRun ??= false;
    return _$DeleteLocalGatewayRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      localGatewayRouteTableId: localGatewayRouteTableId,
      dryRun: dryRun,
      destinationPrefixListId: destinationPrefixListId,
    );
  }

  factory DeleteLocalGatewayRouteRequest.build(
          [void Function(DeleteLocalGatewayRouteRequestBuilder) updates]) =
      _$DeleteLocalGatewayRouteRequest;

  const DeleteLocalGatewayRouteRequest._();

  factory DeleteLocalGatewayRouteRequest.fromRequest(
    DeleteLocalGatewayRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteLocalGatewayRouteRequest>>
      serializers = [DeleteLocalGatewayRouteRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLocalGatewayRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The CIDR range for the route. This must match the CIDR for the route exactly.
  String? get destinationCidrBlock;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Use a prefix list in place of `DestinationCidrBlock`. You cannot use `DestinationPrefixListId` and `DestinationCidrBlock` in the same request.
  String? get destinationPrefixListId;
  @override
  DeleteLocalGatewayRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        localGatewayRouteTableId,
        dryRun,
        destinationPrefixListId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteLocalGatewayRouteRequest')
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
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

class DeleteLocalGatewayRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteLocalGatewayRouteRequest> {
  const DeleteLocalGatewayRouteRequestEc2QuerySerializer()
      : super('DeleteLocalGatewayRouteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteRequest,
        _$DeleteLocalGatewayRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLocalGatewayRouteRequestBuilder();
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
    DeleteLocalGatewayRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteLocalGatewayRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteLocalGatewayRouteRequest(
      :destinationCidrBlock,
      :localGatewayRouteTableId,
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
