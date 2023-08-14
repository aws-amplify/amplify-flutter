// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_transit_gateway_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_transit_gateway_route_table_request.g.dart';

abstract class AssociateTransitGatewayRouteTableRequest
    with
        _i1.HttpInput<AssociateTransitGatewayRouteTableRequest>,
        _i2.AWSEquatable<AssociateTransitGatewayRouteTableRequest>
    implements
        Built<AssociateTransitGatewayRouteTableRequest,
            AssociateTransitGatewayRouteTableRequestBuilder> {
  factory AssociateTransitGatewayRouteTableRequest({
    String? transitGatewayRouteTableId,
    String? transitGatewayAttachmentId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AssociateTransitGatewayRouteTableRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
    );
  }

  factory AssociateTransitGatewayRouteTableRequest.build(
      [void Function(AssociateTransitGatewayRouteTableRequestBuilder)
          updates]) = _$AssociateTransitGatewayRouteTableRequest;

  const AssociateTransitGatewayRouteTableRequest._();

  factory AssociateTransitGatewayRouteTableRequest.fromRequest(
    AssociateTransitGatewayRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<AssociateTransitGatewayRouteTableRequest>>
      serializers = [
    AssociateTransitGatewayRouteTableRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateTransitGatewayRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssociateTransitGatewayRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        transitGatewayAttachmentId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateTransitGatewayRouteTableRequest')
          ..add(
            'transitGatewayRouteTableId',
            transitGatewayRouteTableId,
          )
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class AssociateTransitGatewayRouteTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AssociateTransitGatewayRouteTableRequest> {
  const AssociateTransitGatewayRouteTableRequestEc2QuerySerializer()
      : super('AssociateTransitGatewayRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayRouteTableRequest,
        _$AssociateTransitGatewayRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayRouteTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    AssociateTransitGatewayRouteTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateTransitGatewayRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateTransitGatewayRouteTableRequest(
      :transitGatewayRouteTableId,
      :transitGatewayAttachmentId,
      :dryRun
    ) = object;
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
