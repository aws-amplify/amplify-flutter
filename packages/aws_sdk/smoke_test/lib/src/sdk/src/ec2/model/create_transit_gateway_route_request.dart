// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_transit_gateway_route_request.g.dart';

abstract class CreateTransitGatewayRouteRequest
    with
        _i1.HttpInput<CreateTransitGatewayRouteRequest>,
        _i2.AWSEquatable<CreateTransitGatewayRouteRequest>
    implements
        Built<CreateTransitGatewayRouteRequest,
            CreateTransitGatewayRouteRequestBuilder> {
  factory CreateTransitGatewayRouteRequest({
    String? destinationCidrBlock,
    String? transitGatewayRouteTableId,
    String? transitGatewayAttachmentId,
    bool? blackhole,
    bool? dryRun,
  }) {
    blackhole ??= false;
    dryRun ??= false;
    return _$CreateTransitGatewayRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      blackhole: blackhole,
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayRouteRequest.build(
          [void Function(CreateTransitGatewayRouteRequestBuilder) updates]) =
      _$CreateTransitGatewayRouteRequest;

  const CreateTransitGatewayRouteRequest._();

  factory CreateTransitGatewayRouteRequest.fromRequest(
    CreateTransitGatewayRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateTransitGatewayRouteRequest>>
      serializers = [CreateTransitGatewayRouteRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayRouteRequestBuilder b) {
    b
      ..blackhole = false
      ..dryRun = false;
  }

  /// The CIDR range used for destination matches. Routing decisions are based on the most specific match.
  String? get destinationCidrBlock;

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// Indicates whether to drop traffic that matches this route.
  bool get blackhole;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        transitGatewayRouteTableId,
        transitGatewayAttachmentId,
        blackhole,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayRouteRequest')
          ..add(
            'destinationCidrBlock',
            destinationCidrBlock,
          )
          ..add(
            'transitGatewayRouteTableId',
            transitGatewayRouteTableId,
          )
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'blackhole',
            blackhole,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTransitGatewayRouteRequest> {
  const CreateTransitGatewayRouteRequestEc2QuerySerializer()
      : super('CreateTransitGatewayRouteRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteRequest,
        _$CreateTransitGatewayRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteRequestBuilder();
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
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Blackhole':
          result.blackhole = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    CreateTransitGatewayRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayRouteRequest(
      :destinationCidrBlock,
      :transitGatewayRouteTableId,
      :transitGatewayAttachmentId,
      :blackhole,
      :dryRun
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Blackhole'))
      ..add(serializers.serialize(
        blackhole,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
