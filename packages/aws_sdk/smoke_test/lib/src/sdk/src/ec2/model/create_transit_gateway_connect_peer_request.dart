// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_connect_peer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_request_bgp_options.dart';

part 'create_transit_gateway_connect_peer_request.g.dart';

abstract class CreateTransitGatewayConnectPeerRequest
    with
        _i1.HttpInput<CreateTransitGatewayConnectPeerRequest>,
        _i2.AWSEquatable<CreateTransitGatewayConnectPeerRequest>
    implements
        Built<CreateTransitGatewayConnectPeerRequest,
            CreateTransitGatewayConnectPeerRequestBuilder> {
  factory CreateTransitGatewayConnectPeerRequest({
    String? transitGatewayAttachmentId,
    String? transitGatewayAddress,
    String? peerAddress,
    TransitGatewayConnectRequestBgpOptions? bgpOptions,
    List<String>? insideCidrBlocks,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayConnectPeerRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayAddress: transitGatewayAddress,
      peerAddress: peerAddress,
      bgpOptions: bgpOptions,
      insideCidrBlocks:
          insideCidrBlocks == null ? null : _i3.BuiltList(insideCidrBlocks),
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayConnectPeerRequest.build(
      [void Function(CreateTransitGatewayConnectPeerRequestBuilder)
          updates]) = _$CreateTransitGatewayConnectPeerRequest;

  const CreateTransitGatewayConnectPeerRequest._();

  factory CreateTransitGatewayConnectPeerRequest.fromRequest(
    CreateTransitGatewayConnectPeerRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateTransitGatewayConnectPeerRequest>>
      serializers = [
    CreateTransitGatewayConnectPeerRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayConnectPeerRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Connect attachment.
  String? get transitGatewayAttachmentId;

  /// The peer IP address (GRE outer IP address) on the transit gateway side of the Connect peer, which must be specified from a transit gateway CIDR block. If not specified, Amazon automatically assigns the first available IP address from the transit gateway CIDR block.
  String? get transitGatewayAddress;

  /// The peer IP address (GRE outer IP address) on the appliance side of the Connect peer.
  String? get peerAddress;

  /// The BGP options for the Connect peer.
  TransitGatewayConnectRequestBgpOptions? get bgpOptions;

  /// The range of inside IP addresses that are used for BGP peering. You must specify a size /29 IPv4 CIDR block from the `169.254.0.0/16` range. The first address from the range must be configured on the appliance as the BGP IP address. You can also optionally specify a size /125 IPv6 CIDR block from the `fd00::/8` range.
  _i3.BuiltList<String>? get insideCidrBlocks;

  /// The tags to apply to the Connect peer.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayConnectPeerRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayAddress,
        peerAddress,
        bgpOptions,
        insideCidrBlocks,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectPeerRequest')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
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
            'bgpOptions',
            bgpOptions,
          )
          ..add(
            'insideCidrBlocks',
            insideCidrBlocks,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectPeerRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateTransitGatewayConnectPeerRequest> {
  const CreateTransitGatewayConnectPeerRequestEc2QuerySerializer()
      : super('CreateTransitGatewayConnectPeerRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectPeerRequest,
        _$CreateTransitGatewayConnectPeerRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectPeerRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectPeerRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransitGatewayAddress':
          result.transitGatewayAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PeerAddress':
          result.peerAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'BgpOptions':
          result.bgpOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayConnectRequestBgpOptions),
          ) as TransitGatewayConnectRequestBgpOptions));
        case 'InsideCidrBlocks':
          result.insideCidrBlocks.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
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
    CreateTransitGatewayConnectPeerRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayConnectPeerRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayConnectPeerRequest(
      :transitGatewayAttachmentId,
      :transitGatewayAddress,
      :peerAddress,
      :bgpOptions,
      :insideCidrBlocks,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAddress != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayAddress'))
        ..add(serializers.serialize(
          transitGatewayAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (peerAddress != null) {
      result$
        ..add(const _i1.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          peerAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (bgpOptions != null) {
      result$
        ..add(const _i1.XmlElementName('BgpOptions'))
        ..add(serializers.serialize(
          bgpOptions,
          specifiedType: const FullType(TransitGatewayConnectRequestBgpOptions),
        ));
    }
    if (insideCidrBlocks != null) {
      result$
        ..add(const _i1.XmlElementName('InsideCidrBlocks'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          insideCidrBlocks,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
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
