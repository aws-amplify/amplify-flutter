// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_attachment_bgp_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/bgp_status.dart';

part 'transit_gateway_attachment_bgp_configuration.g.dart';

/// The BGP configuration information.
abstract class TransitGatewayAttachmentBgpConfiguration
    with
        _i1.AWSEquatable<TransitGatewayAttachmentBgpConfiguration>
    implements
        Built<TransitGatewayAttachmentBgpConfiguration,
            TransitGatewayAttachmentBgpConfigurationBuilder> {
  /// The BGP configuration information.
  factory TransitGatewayAttachmentBgpConfiguration({
    _i2.Int64? transitGatewayAsn,
    _i2.Int64? peerAsn,
    String? transitGatewayAddress,
    String? peerAddress,
    BgpStatus? bgpStatus,
  }) {
    transitGatewayAsn ??= _i2.Int64.ZERO;
    peerAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayAttachmentBgpConfiguration._(
      transitGatewayAsn: transitGatewayAsn,
      peerAsn: peerAsn,
      transitGatewayAddress: transitGatewayAddress,
      peerAddress: peerAddress,
      bgpStatus: bgpStatus,
    );
  }

  /// The BGP configuration information.
  factory TransitGatewayAttachmentBgpConfiguration.build(
      [void Function(TransitGatewayAttachmentBgpConfigurationBuilder)
          updates]) = _$TransitGatewayAttachmentBgpConfiguration;

  const TransitGatewayAttachmentBgpConfiguration._();

  static const List<
          _i3.SmithySerializer<TransitGatewayAttachmentBgpConfiguration>>
      serializers = [
    TransitGatewayAttachmentBgpConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayAttachmentBgpConfigurationBuilder b) {
    b
      ..transitGatewayAsn = _i2.Int64.ZERO
      ..peerAsn = _i2.Int64.ZERO;
  }

  /// The transit gateway Autonomous System Number (ASN).
  _i2.Int64 get transitGatewayAsn;

  /// The peer Autonomous System Number (ASN).
  _i2.Int64 get peerAsn;

  /// The interior BGP peer IP address for the transit gateway.
  String? get transitGatewayAddress;

  /// The interior BGP peer IP address for the appliance.
  String? get peerAddress;

  /// The BGP status.
  BgpStatus? get bgpStatus;
  @override
  List<Object?> get props => [
        transitGatewayAsn,
        peerAsn,
        transitGatewayAddress,
        peerAddress,
        bgpStatus,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayAttachmentBgpConfiguration')
          ..add(
            'transitGatewayAsn',
            transitGatewayAsn,
          )
          ..add(
            'peerAsn',
            peerAsn,
          )
          ..add(
            'transitGatewayAddress',
            transitGatewayAddress,
          )
          ..add(
            'peerAddress',
            peerAddress,
          )
          ..add(
            'bgpStatus',
            bgpStatus,
          );
    return helper.toString();
  }
}

class TransitGatewayAttachmentBgpConfigurationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayAttachmentBgpConfiguration> {
  const TransitGatewayAttachmentBgpConfigurationEc2QuerySerializer()
      : super('TransitGatewayAttachmentBgpConfiguration');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachmentBgpConfiguration,
        _$TransitGatewayAttachmentBgpConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachmentBgpConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentBgpConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAsn':
          result.transitGatewayAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'peerAsn':
          result.peerAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'transitGatewayAddress':
          result.transitGatewayAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peerAddress':
          result.peerAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'bgpStatus':
          result.bgpStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(BgpStatus),
          ) as BgpStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayAttachmentBgpConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayAttachmentBgpConfigurationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayAttachmentBgpConfiguration(
      :transitGatewayAsn,
      :peerAsn,
      :transitGatewayAddress,
      :peerAddress,
      :bgpStatus
    ) = object;
    result$
      ..add(const _i3.XmlElementName('TransitGatewayAsn'))
      ..add(serializers.serialize(
        transitGatewayAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    result$
      ..add(const _i3.XmlElementName('PeerAsn'))
      ..add(serializers.serialize(
        peerAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (transitGatewayAddress != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAddress'))
        ..add(serializers.serialize(
          transitGatewayAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (peerAddress != null) {
      result$
        ..add(const _i3.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          peerAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (bgpStatus != null) {
      result$
        ..add(const _i3.XmlElementName('BgpStatus'))
        ..add(serializers.serialize(
          bgpStatus,
          specifiedType: const FullType(BgpStatus),
        ));
    }
    return result$;
  }
}
