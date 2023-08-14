// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_ipam_resource_discovery_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_ipam_resource_discovery_request.g.dart';

abstract class DisassociateIpamResourceDiscoveryRequest
    with
        _i1.HttpInput<DisassociateIpamResourceDiscoveryRequest>,
        _i2.AWSEquatable<DisassociateIpamResourceDiscoveryRequest>
    implements
        Built<DisassociateIpamResourceDiscoveryRequest,
            DisassociateIpamResourceDiscoveryRequestBuilder> {
  factory DisassociateIpamResourceDiscoveryRequest({
    bool? dryRun,
    String? ipamResourceDiscoveryAssociationId,
  }) {
    dryRun ??= false;
    return _$DisassociateIpamResourceDiscoveryRequest._(
      dryRun: dryRun,
      ipamResourceDiscoveryAssociationId: ipamResourceDiscoveryAssociationId,
    );
  }

  factory DisassociateIpamResourceDiscoveryRequest.build(
      [void Function(DisassociateIpamResourceDiscoveryRequestBuilder)
          updates]) = _$DisassociateIpamResourceDiscoveryRequest;

  const DisassociateIpamResourceDiscoveryRequest._();

  factory DisassociateIpamResourceDiscoveryRequest.fromRequest(
    DisassociateIpamResourceDiscoveryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DisassociateIpamResourceDiscoveryRequest>>
      serializers = [
    DisassociateIpamResourceDiscoveryRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateIpamResourceDiscoveryRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A resource discovery association ID.
  String? get ipamResourceDiscoveryAssociationId;
  @override
  DisassociateIpamResourceDiscoveryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamResourceDiscoveryAssociationId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateIpamResourceDiscoveryRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamResourceDiscoveryAssociationId',
            ipamResourceDiscoveryAssociationId,
          );
    return helper.toString();
  }
}

class DisassociateIpamResourceDiscoveryRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisassociateIpamResourceDiscoveryRequest> {
  const DisassociateIpamResourceDiscoveryRequestEc2QuerySerializer()
      : super('DisassociateIpamResourceDiscoveryRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateIpamResourceDiscoveryRequest,
        _$DisassociateIpamResourceDiscoveryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateIpamResourceDiscoveryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateIpamResourceDiscoveryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'IpamResourceDiscoveryAssociationId':
          result.ipamResourceDiscoveryAssociationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateIpamResourceDiscoveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateIpamResourceDiscoveryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateIpamResourceDiscoveryRequest(
      :dryRun,
      :ipamResourceDiscoveryAssociationId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamResourceDiscoveryAssociationId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamResourceDiscoveryAssociationId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
