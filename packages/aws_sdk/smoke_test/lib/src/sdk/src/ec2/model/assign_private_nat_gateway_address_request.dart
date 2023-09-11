// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.assign_private_nat_gateway_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'assign_private_nat_gateway_address_request.g.dart';

abstract class AssignPrivateNatGatewayAddressRequest
    with
        _i1.HttpInput<AssignPrivateNatGatewayAddressRequest>,
        _i2.AWSEquatable<AssignPrivateNatGatewayAddressRequest>
    implements
        Built<AssignPrivateNatGatewayAddressRequest,
            AssignPrivateNatGatewayAddressRequestBuilder> {
  factory AssignPrivateNatGatewayAddressRequest({
    String? natGatewayId,
    List<String>? privateIpAddresses,
    int? privateIpAddressCount,
    bool? dryRun,
  }) {
    privateIpAddressCount ??= 0;
    dryRun ??= false;
    return _$AssignPrivateNatGatewayAddressRequest._(
      natGatewayId: natGatewayId,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i3.BuiltList(privateIpAddresses),
      privateIpAddressCount: privateIpAddressCount,
      dryRun: dryRun,
    );
  }

  factory AssignPrivateNatGatewayAddressRequest.build(
      [void Function(AssignPrivateNatGatewayAddressRequestBuilder)
          updates]) = _$AssignPrivateNatGatewayAddressRequest;

  const AssignPrivateNatGatewayAddressRequest._();

  factory AssignPrivateNatGatewayAddressRequest.fromRequest(
    AssignPrivateNatGatewayAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssignPrivateNatGatewayAddressRequest>>
      serializers = [AssignPrivateNatGatewayAddressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssignPrivateNatGatewayAddressRequestBuilder b) {
    b
      ..privateIpAddressCount = 0
      ..dryRun = false;
  }

  /// The ID of the NAT gateway.
  String? get natGatewayId;

  /// The private IPv4 addresses you want to assign to the private NAT gateway.
  _i3.BuiltList<String>? get privateIpAddresses;

  /// The number of private IP addresses to assign to the NAT gateway. You can't specify this parameter when also specifying private IP addresses.
  int get privateIpAddressCount;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AssignPrivateNatGatewayAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        natGatewayId,
        privateIpAddresses,
        privateIpAddressCount,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssignPrivateNatGatewayAddressRequest')
          ..add(
            'natGatewayId',
            natGatewayId,
          )
          ..add(
            'privateIpAddresses',
            privateIpAddresses,
          )
          ..add(
            'privateIpAddressCount',
            privateIpAddressCount,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class AssignPrivateNatGatewayAddressRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AssignPrivateNatGatewayAddressRequest> {
  const AssignPrivateNatGatewayAddressRequestEc2QuerySerializer()
      : super('AssignPrivateNatGatewayAddressRequest');

  @override
  Iterable<Type> get types => const [
        AssignPrivateNatGatewayAddressRequest,
        _$AssignPrivateNatGatewayAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssignPrivateNatGatewayAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssignPrivateNatGatewayAddressRequestBuilder();
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
        case 'PrivateIpAddressCount':
          result.privateIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    AssignPrivateNatGatewayAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssignPrivateNatGatewayAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssignPrivateNatGatewayAddressRequest(
      :natGatewayId,
      :privateIpAddresses,
      :privateIpAddressCount,
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
      ..add(const _i1.XmlElementName('PrivateIpAddressCount'))
      ..add(serializers.serialize(
        privateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
