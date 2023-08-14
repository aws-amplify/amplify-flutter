// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_transit_gateway_multicast_domain_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'accept_transit_gateway_multicast_domain_associations_request.g.dart';

abstract class AcceptTransitGatewayMulticastDomainAssociationsRequest
    with
        _i1.HttpInput<AcceptTransitGatewayMulticastDomainAssociationsRequest>,
        _i2.AWSEquatable<AcceptTransitGatewayMulticastDomainAssociationsRequest>
    implements
        Built<AcceptTransitGatewayMulticastDomainAssociationsRequest,
            AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder> {
  factory AcceptTransitGatewayMulticastDomainAssociationsRequest({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayAttachmentId,
    List<String>? subnetIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AcceptTransitGatewayMulticastDomainAssociationsRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      subnetIds: subnetIds == null ? null : _i3.BuiltList(subnetIds),
      dryRun: dryRun,
    );
  }

  factory AcceptTransitGatewayMulticastDomainAssociationsRequest.build(
      [void Function(
              AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder)
          updates]) = _$AcceptTransitGatewayMulticastDomainAssociationsRequest;

  const AcceptTransitGatewayMulticastDomainAssociationsRequest._();

  factory AcceptTransitGatewayMulticastDomainAssociationsRequest.fromRequest(
    AcceptTransitGatewayMulticastDomainAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              AcceptTransitGatewayMulticastDomainAssociationsRequest>>
      serializers = [
    AcceptTransitGatewayMulticastDomainAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The IDs of the subnets to associate with the transit gateway multicast domain.
  _i3.BuiltList<String>? get subnetIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AcceptTransitGatewayMulticastDomainAssociationsRequest getPayload() => this;
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
        'AcceptTransitGatewayMulticastDomainAssociationsRequest')
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

class AcceptTransitGatewayMulticastDomainAssociationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        AcceptTransitGatewayMulticastDomainAssociationsRequest> {
  const AcceptTransitGatewayMulticastDomainAssociationsRequestEc2QuerySerializer()
      : super('AcceptTransitGatewayMulticastDomainAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayMulticastDomainAssociationsRequest,
        _$AcceptTransitGatewayMulticastDomainAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayMulticastDomainAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        AcceptTransitGatewayMulticastDomainAssociationsRequestBuilder();
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
    AcceptTransitGatewayMulticastDomainAssociationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AcceptTransitGatewayMulticastDomainAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptTransitGatewayMulticastDomainAssociationsRequest(
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
