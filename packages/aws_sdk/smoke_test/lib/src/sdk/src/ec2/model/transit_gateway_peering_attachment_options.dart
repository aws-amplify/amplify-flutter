// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_peering_attachment_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/dynamic_routing_value.dart';

part 'transit_gateway_peering_attachment_options.g.dart';

/// Describes dynamic routing for the transit gateway peering attachment.
abstract class TransitGatewayPeeringAttachmentOptions
    with
        _i1.AWSEquatable<TransitGatewayPeeringAttachmentOptions>
    implements
        Built<TransitGatewayPeeringAttachmentOptions,
            TransitGatewayPeeringAttachmentOptionsBuilder> {
  /// Describes dynamic routing for the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachmentOptions(
      {DynamicRoutingValue? dynamicRouting}) {
    return _$TransitGatewayPeeringAttachmentOptions._(
        dynamicRouting: dynamicRouting);
  }

  /// Describes dynamic routing for the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachmentOptions.build(
      [void Function(TransitGatewayPeeringAttachmentOptionsBuilder)
          updates]) = _$TransitGatewayPeeringAttachmentOptions;

  const TransitGatewayPeeringAttachmentOptions._();

  static const List<
          _i2.SmithySerializer<TransitGatewayPeeringAttachmentOptions>>
      serializers = [
    TransitGatewayPeeringAttachmentOptionsEc2QuerySerializer()
  ];

  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering attachment.
  DynamicRoutingValue? get dynamicRouting;
  @override
  List<Object?> get props => [dynamicRouting];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPeeringAttachmentOptions')
          ..add(
            'dynamicRouting',
            dynamicRouting,
          );
    return helper.toString();
  }
}

class TransitGatewayPeeringAttachmentOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayPeeringAttachmentOptions> {
  const TransitGatewayPeeringAttachmentOptionsEc2QuerySerializer()
      : super('TransitGatewayPeeringAttachmentOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPeeringAttachmentOptions,
        _$TransitGatewayPeeringAttachmentOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPeeringAttachmentOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPeeringAttachmentOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dynamicRouting':
          result.dynamicRouting = (serializers.deserialize(
            value,
            specifiedType: const FullType(DynamicRoutingValue),
          ) as DynamicRoutingValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayPeeringAttachmentOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPeeringAttachmentOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPeeringAttachmentOptions(:dynamicRouting) = object;
    if (dynamicRouting != null) {
      result$
        ..add(const _i2.XmlElementName('DynamicRouting'))
        ..add(serializers.serialize(
          dynamicRouting,
          specifiedType: const FullType(DynamicRoutingValue),
        ));
    }
    return result$;
  }
}
