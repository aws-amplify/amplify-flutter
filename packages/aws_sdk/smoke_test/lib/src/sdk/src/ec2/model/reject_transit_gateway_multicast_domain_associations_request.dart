// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_transit_gateway_multicast_domain_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reject_transit_gateway_multicast_domain_associations_request.g.dart';

abstract class RejectTransitGatewayMulticastDomainAssociationsRequest
    with
        _i1.HttpInput<RejectTransitGatewayMulticastDomainAssociationsRequest>,
        _i2.AWSEquatable<RejectTransitGatewayMulticastDomainAssociationsRequest>
    implements
        Built<RejectTransitGatewayMulticastDomainAssociationsRequest,
            RejectTransitGatewayMulticastDomainAssociationsRequestBuilder> {
  factory RejectTransitGatewayMulticastDomainAssociationsRequest({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayAttachmentId,
    List<String>? subnetIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RejectTransitGatewayMulticastDomainAssociationsRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      subnetIds: subnetIds == null ? null : _i3.BuiltList(subnetIds),
      dryRun: dryRun,
    );
  }

  factory RejectTransitGatewayMulticastDomainAssociationsRequest.build(
      [void Function(
              RejectTransitGatewayMulticastDomainAssociationsRequestBuilder)
          updates]) = _$RejectTransitGatewayMulticastDomainAssociationsRequest;

  const RejectTransitGatewayMulticastDomainAssociationsRequest._();

  factory RejectTransitGatewayMulticastDomainAssociationsRequest.fromRequest(
    RejectTransitGatewayMulticastDomainAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              RejectTransitGatewayMulticastDomainAssociationsRequest>>
      serializers = [
    RejectTransitGatewayMulticastDomainAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RejectTransitGatewayMulticastDomainAssociationsRequestBuilder b) {
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
  RejectTransitGatewayMulticastDomainAssociationsRequest getPayload() => this;
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
        'RejectTransitGatewayMulticastDomainAssociationsRequest')
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

class RejectTransitGatewayMulticastDomainAssociationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        RejectTransitGatewayMulticastDomainAssociationsRequest> {
  const RejectTransitGatewayMulticastDomainAssociationsRequestEc2QuerySerializer()
      : super('RejectTransitGatewayMulticastDomainAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        RejectTransitGatewayMulticastDomainAssociationsRequest,
        _$RejectTransitGatewayMulticastDomainAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectTransitGatewayMulticastDomainAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        RejectTransitGatewayMulticastDomainAssociationsRequestBuilder();
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
    RejectTransitGatewayMulticastDomainAssociationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RejectTransitGatewayMulticastDomainAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectTransitGatewayMulticastDomainAssociationsRequest(
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
          specifiedType: const FullType(
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
