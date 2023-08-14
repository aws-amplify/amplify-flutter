// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table_propagation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart';

part 'transit_gateway_route_table_propagation.g.dart';

/// Describes a route table propagation.
abstract class TransitGatewayRouteTablePropagation
    with
        _i1.AWSEquatable<TransitGatewayRouteTablePropagation>
    implements
        Built<TransitGatewayRouteTablePropagation,
            TransitGatewayRouteTablePropagationBuilder> {
  /// Describes a route table propagation.
  factory TransitGatewayRouteTablePropagation({
    String? transitGatewayAttachmentId,
    String? resourceId,
    TransitGatewayAttachmentResourceType? resourceType,
    TransitGatewayPropagationState? state,
    String? transitGatewayRouteTableAnnouncementId,
  }) {
    return _$TransitGatewayRouteTablePropagation._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      state: state,
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
    );
  }

  /// Describes a route table propagation.
  factory TransitGatewayRouteTablePropagation.build(
          [void Function(TransitGatewayRouteTablePropagationBuilder) updates]) =
      _$TransitGatewayRouteTablePropagation;

  const TransitGatewayRouteTablePropagation._();

  static const List<_i2.SmithySerializer<TransitGatewayRouteTablePropagation>>
      serializers = [TransitGatewayRouteTablePropagationEc2QuerySerializer()];

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource. Note that the `tgw-peering` resource type has been deprecated.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The state of the resource.
  TransitGatewayPropagationState? get state;

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        state,
        transitGatewayRouteTableAnnouncementId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayRouteTablePropagation')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'resourceId',
            resourceId,
          )
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'state',
            state,
          )
          ..add(
            'transitGatewayRouteTableAnnouncementId',
            transitGatewayRouteTableAnnouncementId,
          );
    return helper.toString();
  }
}

class TransitGatewayRouteTablePropagationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayRouteTablePropagation> {
  const TransitGatewayRouteTablePropagationEc2QuerySerializer()
      : super('TransitGatewayRouteTablePropagation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTablePropagation,
        _$TransitGatewayRouteTablePropagation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTablePropagation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTablePropagationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentResourceType),
          ) as TransitGatewayAttachmentResourceType);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPropagationState),
          ) as TransitGatewayPropagationState);
        case 'transitGatewayRouteTableAnnouncementId':
          result.transitGatewayRouteTableAnnouncementId =
              (serializers.deserialize(
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
    TransitGatewayRouteTablePropagation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayRouteTablePropagationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRouteTablePropagation(
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :state,
      :transitGatewayRouteTableAnnouncementId
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType:
              const FullType.nullable(TransitGatewayAttachmentResourceType),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(TransitGatewayPropagationState),
        ));
    }
    if (transitGatewayRouteTableAnnouncementId != null) {
      result$
        ..add(
            const _i2.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncementId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
