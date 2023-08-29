// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_peering_attachment_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/dynamic_routing_value.dart';

part 'create_transit_gateway_peering_attachment_request_options.g.dart';

/// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request.
abstract class CreateTransitGatewayPeeringAttachmentRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayPeeringAttachmentRequestOptions>
    implements
        Built<CreateTransitGatewayPeeringAttachmentRequestOptions,
            CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder> {
  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request.
  factory CreateTransitGatewayPeeringAttachmentRequestOptions(
      {DynamicRoutingValue? dynamicRouting}) {
    return _$CreateTransitGatewayPeeringAttachmentRequestOptions._(
        dynamicRouting: dynamicRouting);
  }

  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request.
  factory CreateTransitGatewayPeeringAttachmentRequestOptions.build(
      [void Function(CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayPeeringAttachmentRequestOptions;

  const CreateTransitGatewayPeeringAttachmentRequestOptions._();

  static const List<
      _i2.SmithySerializer<
          CreateTransitGatewayPeeringAttachmentRequestOptions>> serializers = [
    CreateTransitGatewayPeeringAttachmentRequestOptionsEc2QuerySerializer()
  ];

  /// Indicates whether dynamic routing is enabled or disabled.
  DynamicRoutingValue? get dynamicRouting;
  @override
  List<Object?> get props => [dynamicRouting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayPeeringAttachmentRequestOptions')
      ..add(
        'dynamicRouting',
        dynamicRouting,
      );
    return helper.toString();
  }
}

class CreateTransitGatewayPeeringAttachmentRequestOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        CreateTransitGatewayPeeringAttachmentRequestOptions> {
  const CreateTransitGatewayPeeringAttachmentRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayPeeringAttachmentRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPeeringAttachmentRequestOptions,
        _$CreateTransitGatewayPeeringAttachmentRequestOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPeeringAttachmentRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DynamicRouting':
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
    CreateTransitGatewayPeeringAttachmentRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayPeeringAttachmentRequestOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayPeeringAttachmentRequestOptions(:dynamicRouting) =
        object;
    if (dynamicRouting != null) {
      result$
        ..add(const _i2.XmlElementName('DynamicRouting'))
        ..add(serializers.serialize(
          dynamicRouting,
          specifiedType: const FullType.nullable(DynamicRoutingValue),
        ));
    }
    return result$;
  }
}
