// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_attachment_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart';

part 'transit_gateway_attachment_association.g.dart';

/// Describes an association.
abstract class TransitGatewayAttachmentAssociation
    with
        _i1.AWSEquatable<TransitGatewayAttachmentAssociation>
    implements
        Built<TransitGatewayAttachmentAssociation,
            TransitGatewayAttachmentAssociationBuilder> {
  /// Describes an association.
  factory TransitGatewayAttachmentAssociation({
    String? transitGatewayRouteTableId,
    TransitGatewayAssociationState? state,
  }) {
    return _$TransitGatewayAttachmentAssociation._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      state: state,
    );
  }

  /// Describes an association.
  factory TransitGatewayAttachmentAssociation.build(
          [void Function(TransitGatewayAttachmentAssociationBuilder) updates]) =
      _$TransitGatewayAttachmentAssociation;

  const TransitGatewayAttachmentAssociation._();

  static const List<_i2.SmithySerializer<TransitGatewayAttachmentAssociation>>
      serializers = [TransitGatewayAttachmentAssociationEc2QuerySerializer()];

  /// The ID of the route table for the transit gateway.
  String? get transitGatewayRouteTableId;

  /// The state of the association.
  TransitGatewayAssociationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayAttachmentAssociation')
          ..add(
            'transitGatewayRouteTableId',
            transitGatewayRouteTableId,
          )
          ..add(
            'state',
            state,
          );
    return helper.toString();
  }
}

class TransitGatewayAttachmentAssociationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayAttachmentAssociation> {
  const TransitGatewayAttachmentAssociationEc2QuerySerializer()
      : super('TransitGatewayAttachmentAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachmentAssociation,
        _$TransitGatewayAttachmentAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachmentAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAssociationState),
          ) as TransitGatewayAssociationState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayAttachmentAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayAttachmentAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayAttachmentAssociation(
      :transitGatewayRouteTableId,
      :state
    ) = object;
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayAssociationState),
        ));
    }
    return result$;
  }
}
