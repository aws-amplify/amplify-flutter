// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_transit_gateway_multicast_domain_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_transit_gateway_multicast_domain_request.g.dart';

abstract class DisassociateTransitGatewayMulticastDomainRequest
    with
        _i1.HttpInput<DisassociateTransitGatewayMulticastDomainRequest>,
        _i2.AWSEquatable<DisassociateTransitGatewayMulticastDomainRequest>
    implements
        Built<DisassociateTransitGatewayMulticastDomainRequest,
            DisassociateTransitGatewayMulticastDomainRequestBuilder> {
  factory DisassociateTransitGatewayMulticastDomainRequest({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayAttachmentId,
    List<String>? subnetIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateTransitGatewayMulticastDomainRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      subnetIds: subnetIds == null ? null : _i3.BuiltList(subnetIds),
      dryRun: dryRun,
    );
  }

  factory DisassociateTransitGatewayMulticastDomainRequest.build(
      [void Function(DisassociateTransitGatewayMulticastDomainRequestBuilder)
          updates]) = _$DisassociateTransitGatewayMulticastDomainRequest;

  const DisassociateTransitGatewayMulticastDomainRequest._();

  factory DisassociateTransitGatewayMulticastDomainRequest.fromRequest(
    DisassociateTransitGatewayMulticastDomainRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1
          .SmithySerializer<DisassociateTransitGatewayMulticastDomainRequest>>
      serializers = [
    DisassociateTransitGatewayMulticastDomainRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTransitGatewayMulticastDomainRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The IDs of the subnets;
  _i3.BuiltList<String>? get subnetIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateTransitGatewayMulticastDomainRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        transitGatewayAttachmentId,
        subnetIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateTransitGatewayMulticastDomainRequest')
      ..add(
        'transitGatewayMulticastDomainId',
        transitGatewayMulticastDomainId,
      )
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'subnetIds',
        subnetIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DisassociateTransitGatewayMulticastDomainRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DisassociateTransitGatewayMulticastDomainRequest> {
  const DisassociateTransitGatewayMulticastDomainRequestEc2QuerySerializer()
      : super('DisassociateTransitGatewayMulticastDomainRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateTransitGatewayMulticastDomainRequest,
        _$DisassociateTransitGatewayMulticastDomainRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTransitGatewayMulticastDomainRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTransitGatewayMulticastDomainRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayMulticastDomainId':
          result.transitGatewayMulticastDomainId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SubnetIds':
          result.subnetIds.replace((const _i1.XmlBuiltListSerializer(
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
    DisassociateTransitGatewayMulticastDomainRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateTransitGatewayMulticastDomainRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateTransitGatewayMulticastDomainRequest(
      :transitGatewayMulticastDomainId,
      :transitGatewayAttachmentId,
      :subnetIds,
      :dryRun
    ) = object;
    if (transitGatewayMulticastDomainId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
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
