// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_nat_gateway_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_nat_gateway_address_request.g.dart';

abstract class AssociateNatGatewayAddressRequest
    with
        _i1.HttpInput<AssociateNatGatewayAddressRequest>,
        _i2.AWSEquatable<AssociateNatGatewayAddressRequest>
    implements
        Built<AssociateNatGatewayAddressRequest,
            AssociateNatGatewayAddressRequestBuilder> {
  factory AssociateNatGatewayAddressRequest({
    String? natGatewayId,
    List<String>? allocationIds,
    List<String>? privateIpAddresses,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AssociateNatGatewayAddressRequest._(
      natGatewayId: natGatewayId,
      allocationIds:
          allocationIds == null ? null : _i3.BuiltList(allocationIds),
      privateIpAddresses:
          privateIpAddresses == null ? null : _i3.BuiltList(privateIpAddresses),
      dryRun: dryRun,
    );
  }

  factory AssociateNatGatewayAddressRequest.build(
          [void Function(AssociateNatGatewayAddressRequestBuilder) updates]) =
      _$AssociateNatGatewayAddressRequest;

  const AssociateNatGatewayAddressRequest._();

  factory AssociateNatGatewayAddressRequest.fromRequest(
    AssociateNatGatewayAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssociateNatGatewayAddressRequest>>
      serializers = [AssociateNatGatewayAddressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateNatGatewayAddressRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the NAT gateway.
  String? get natGatewayId;

  /// The allocation IDs of EIPs that you want to associate with your NAT gateway.
  _i3.BuiltList<String>? get allocationIds;

  /// The private IPv4 addresses that you want to assign to the NAT gateway.
  _i3.BuiltList<String>? get privateIpAddresses;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssociateNatGatewayAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        natGatewayId,
        allocationIds,
        privateIpAddresses,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateNatGatewayAddressRequest')
          ..add(
            'natGatewayId',
            natGatewayId,
          )
          ..add(
            'allocationIds',
            allocationIds,
          )
          ..add(
            'privateIpAddresses',
            privateIpAddresses,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class AssociateNatGatewayAddressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateNatGatewayAddressRequest> {
  const AssociateNatGatewayAddressRequestEc2QuerySerializer()
      : super('AssociateNatGatewayAddressRequest');

  @override
  Iterable<Type> get types => const [
        AssociateNatGatewayAddressRequest,
        _$AssociateNatGatewayAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateNatGatewayAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateNatGatewayAddressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NatGatewayId':
          result.natGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AllocationId':
          result.allocationIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AllocationId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'PrivateIpAddress':
          result.privateIpAddresses.replace((const _i1.XmlBuiltListSerializer(
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
    AssociateNatGatewayAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateNatGatewayAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateNatGatewayAddressRequest(
      :natGatewayId,
      :allocationIds,
      :privateIpAddresses,
      :dryRun
    ) = object;
    if (natGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (allocationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AllocationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allocationIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (privateIpAddresses != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateIpAddresses,
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
