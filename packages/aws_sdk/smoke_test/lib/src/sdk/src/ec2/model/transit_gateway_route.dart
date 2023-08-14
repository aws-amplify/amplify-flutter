// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_type.dart';

part 'transit_gateway_route.g.dart';

/// Describes a route for a transit gateway route table.
abstract class TransitGatewayRoute
    with _i1.AWSEquatable<TransitGatewayRoute>
    implements Built<TransitGatewayRoute, TransitGatewayRouteBuilder> {
  /// Describes a route for a transit gateway route table.
  factory TransitGatewayRoute({
    String? destinationCidrBlock,
    String? prefixListId,
    String? transitGatewayRouteTableAnnouncementId,
    List<TransitGatewayRouteAttachment>? transitGatewayAttachments,
    TransitGatewayRouteType? type,
    TransitGatewayRouteState? state,
  }) {
    return _$TransitGatewayRoute._(
      destinationCidrBlock: destinationCidrBlock,
      prefixListId: prefixListId,
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
      transitGatewayAttachments: transitGatewayAttachments == null
          ? null
          : _i2.BuiltList(transitGatewayAttachments),
      type: type,
      state: state,
    );
  }

  /// Describes a route for a transit gateway route table.
  factory TransitGatewayRoute.build(
          [void Function(TransitGatewayRouteBuilder) updates]) =
      _$TransitGatewayRoute;

  const TransitGatewayRoute._();

  static const List<_i3.SmithySerializer<TransitGatewayRoute>> serializers = [
    TransitGatewayRouteEc2QuerySerializer()
  ];

  /// The CIDR block used for destination matches.
  String? get destinationCidrBlock;

  /// The ID of the prefix list used for destination matches.
  String? get prefixListId;

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;

  /// The attachments.
  _i2.BuiltList<TransitGatewayRouteAttachment>? get transitGatewayAttachments;

  /// The route type.
  TransitGatewayRouteType? get type;

  /// The state of the route.
  TransitGatewayRouteState? get state;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        prefixListId,
        transitGatewayRouteTableAnnouncementId,
        transitGatewayAttachments,
        type,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRoute')
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'prefixListId',
        prefixListId,
      )
      ..add(
        'transitGatewayRouteTableAnnouncementId',
        transitGatewayRouteTableAnnouncementId,
      )
      ..add(
        'transitGatewayAttachments',
        transitGatewayAttachments,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class TransitGatewayRouteEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayRoute> {
  const TransitGatewayRouteEc2QuerySerializer() : super('TransitGatewayRoute');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRoute,
        _$TransitGatewayRoute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'destinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayRouteTableAnnouncementId':
          result.transitGatewayRouteTableAnnouncementId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayAttachments':
          result.transitGatewayAttachments
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayRouteAttachment)],
            ),
          ) as _i2.BuiltList<TransitGatewayRouteAttachment>));
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRouteType),
          ) as TransitGatewayRouteType);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRouteState),
          ) as TransitGatewayRouteState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayRouteResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRoute(
      :destinationCidrBlock,
      :prefixListId,
      :transitGatewayRouteTableAnnouncementId,
      :transitGatewayAttachments,
      :type,
      :state
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListId != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayRouteTableAnnouncementId != null) {
      result$
        ..add(
            const _i3.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncementId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachments != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachments'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayAttachments,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayRouteAttachment)],
          ),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(TransitGatewayRouteType),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(TransitGatewayRouteState),
        ));
    }
    return result$;
  }
}
