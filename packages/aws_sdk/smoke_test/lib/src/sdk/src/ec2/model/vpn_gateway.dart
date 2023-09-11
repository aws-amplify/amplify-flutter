// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart';

part 'vpn_gateway.g.dart';

/// Describes a virtual private gateway.
abstract class VpnGateway
    with _i1.AWSEquatable<VpnGateway>
    implements Built<VpnGateway, VpnGatewayBuilder> {
  /// Describes a virtual private gateway.
  factory VpnGateway({
    String? availabilityZone,
    VpnState? state,
    GatewayType? type,
    List<VpcAttachment>? vpcAttachments,
    String? vpnGatewayId,
    _i2.Int64? amazonSideAsn,
    List<Tag>? tags,
  }) {
    amazonSideAsn ??= _i2.Int64.ZERO;
    return _$VpnGateway._(
      availabilityZone: availabilityZone,
      state: state,
      type: type,
      vpcAttachments:
          vpcAttachments == null ? null : _i3.BuiltList(vpcAttachments),
      vpnGatewayId: vpnGatewayId,
      amazonSideAsn: amazonSideAsn,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a virtual private gateway.
  factory VpnGateway.build([void Function(VpnGatewayBuilder) updates]) =
      _$VpnGateway;

  const VpnGateway._();

  static const List<_i4.SmithySerializer<VpnGateway>> serializers = [
    VpnGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnGatewayBuilder b) {
    b.amazonSideAsn = _i2.Int64.ZERO;
  }

  /// The Availability Zone where the virtual private gateway was created, if applicable. This field may be empty or not returned.
  String? get availabilityZone;

  /// The current state of the virtual private gateway.
  VpnState? get state;

  /// The type of VPN connection the virtual private gateway supports.
  GatewayType? get type;

  /// Any VPCs attached to the virtual private gateway.
  _i3.BuiltList<VpcAttachment>? get vpcAttachments;

  /// The ID of the virtual private gateway.
  String? get vpnGatewayId;

  /// The private Autonomous System Number (ASN) for the Amazon side of a BGP session.
  _i2.Int64 get amazonSideAsn;

  /// Any tags assigned to the virtual private gateway.
  _i3.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        availabilityZone,
        state,
        type,
        vpcAttachments,
        vpnGatewayId,
        amazonSideAsn,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnGateway')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'vpcAttachments',
        vpcAttachments,
      )
      ..add(
        'vpnGatewayId',
        vpnGatewayId,
      )
      ..add(
        'amazonSideAsn',
        amazonSideAsn,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class VpnGatewayEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<VpnGateway> {
  const VpnGatewayEc2QuerySerializer() : super('VpnGateway');

  @override
  Iterable<Type> get types => const [
        VpnGateway,
        _$VpnGateway,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpnState),
          ) as VpnState);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(GatewayType),
          ) as GatewayType);
        case 'attachments':
          result.vpcAttachments.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(VpcAttachment)],
            ),
          ) as _i3.BuiltList<VpcAttachment>));
        case 'vpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'amazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'tagSet':
          result.tags.replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i3.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'VpnGatewayResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnGateway(
      :availabilityZone,
      :state,
      :type,
      :vpcAttachments,
      :vpnGatewayId,
      :amazonSideAsn,
      :tags
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i4.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(VpnState),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i4.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(GatewayType),
        ));
    }
    if (vpcAttachments != null) {
      result$
        ..add(const _i4.XmlElementName('Attachments'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcAttachments,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(VpcAttachment)],
          ),
        ));
    }
    if (vpnGatewayId != null) {
      result$
        ..add(const _i4.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          vpnGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (tags != null) {
      result$
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
