// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_attachment_propagation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart';

part 'transit_gateway_attachment_propagation.g.dart';

/// Describes a propagation route table.
abstract class TransitGatewayAttachmentPropagation
    with
        _i1.AWSEquatable<TransitGatewayAttachmentPropagation>
    implements
        Built<TransitGatewayAttachmentPropagation,
            TransitGatewayAttachmentPropagationBuilder> {
  /// Describes a propagation route table.
  factory TransitGatewayAttachmentPropagation({
    String? transitGatewayRouteTableId,
    TransitGatewayPropagationState? state,
  }) {
    return _$TransitGatewayAttachmentPropagation._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      state: state,
    );
  }

  /// Describes a propagation route table.
  factory TransitGatewayAttachmentPropagation.build(
          [void Function(TransitGatewayAttachmentPropagationBuilder) updates]) =
      _$TransitGatewayAttachmentPropagation;

  const TransitGatewayAttachmentPropagation._();

  static const List<_i2.SmithySerializer<TransitGatewayAttachmentPropagation>>
      serializers = [TransitGatewayAttachmentPropagationEc2QuerySerializer()];

  /// The ID of the propagation route table.
  String? get transitGatewayRouteTableId;

  /// The state of the propagation route table.
  TransitGatewayPropagationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayAttachmentPropagation')
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

class TransitGatewayAttachmentPropagationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayAttachmentPropagation> {
  const TransitGatewayAttachmentPropagationEc2QuerySerializer()
      : super('TransitGatewayAttachmentPropagation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachmentPropagation,
        _$TransitGatewayAttachmentPropagation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachmentPropagation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentPropagationBuilder();
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
            specifiedType: const FullType(TransitGatewayPropagationState),
          ) as TransitGatewayPropagationState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayAttachmentPropagation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayAttachmentPropagationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayAttachmentPropagation(
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
          specifiedType: const FullType(TransitGatewayPropagationState),
        ));
    }
    return result$;
  }
}
