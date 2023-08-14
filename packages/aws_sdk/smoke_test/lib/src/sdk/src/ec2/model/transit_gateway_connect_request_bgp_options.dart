// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_connect_request_bgp_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'transit_gateway_connect_request_bgp_options.g.dart';

/// The BGP options for the Connect attachment.
abstract class TransitGatewayConnectRequestBgpOptions
    with
        _i1.AWSEquatable<TransitGatewayConnectRequestBgpOptions>
    implements
        Built<TransitGatewayConnectRequestBgpOptions,
            TransitGatewayConnectRequestBgpOptionsBuilder> {
  /// The BGP options for the Connect attachment.
  factory TransitGatewayConnectRequestBgpOptions({_i2.Int64? peerAsn}) {
    peerAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayConnectRequestBgpOptions._(peerAsn: peerAsn);
  }

  /// The BGP options for the Connect attachment.
  factory TransitGatewayConnectRequestBgpOptions.build(
      [void Function(TransitGatewayConnectRequestBgpOptionsBuilder)
          updates]) = _$TransitGatewayConnectRequestBgpOptions;

  const TransitGatewayConnectRequestBgpOptions._();

  static const List<
          _i3.SmithySerializer<TransitGatewayConnectRequestBgpOptions>>
      serializers = [
    TransitGatewayConnectRequestBgpOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayConnectRequestBgpOptionsBuilder b) {
    b.peerAsn = _i2.Int64.ZERO;
  }

  /// The peer Autonomous System Number (ASN).
  _i2.Int64 get peerAsn;
  @override
  List<Object?> get props => [peerAsn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayConnectRequestBgpOptions')
          ..add(
            'peerAsn',
            peerAsn,
          );
    return helper.toString();
  }
}

class TransitGatewayConnectRequestBgpOptionsEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayConnectRequestBgpOptions> {
  const TransitGatewayConnectRequestBgpOptionsEc2QuerySerializer()
      : super('TransitGatewayConnectRequestBgpOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnectRequestBgpOptions,
        _$TransitGatewayConnectRequestBgpOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnectRequestBgpOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectRequestBgpOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PeerAsn':
          result.peerAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayConnectRequestBgpOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayConnectRequestBgpOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayConnectRequestBgpOptions(:peerAsn) = object;
    result$
      ..add(const _i3.XmlElementName('PeerAsn'))
      ..add(serializers.serialize(
        peerAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result$;
  }
}
