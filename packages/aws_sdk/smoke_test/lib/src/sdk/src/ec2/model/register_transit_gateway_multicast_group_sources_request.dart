// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.register_transit_gateway_multicast_group_sources_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'register_transit_gateway_multicast_group_sources_request.g.dart';

abstract class RegisterTransitGatewayMulticastGroupSourcesRequest
    with
        _i1.HttpInput<RegisterTransitGatewayMulticastGroupSourcesRequest>,
        _i2.AWSEquatable<RegisterTransitGatewayMulticastGroupSourcesRequest>
    implements
        Built<RegisterTransitGatewayMulticastGroupSourcesRequest,
            RegisterTransitGatewayMulticastGroupSourcesRequestBuilder> {
  factory RegisterTransitGatewayMulticastGroupSourcesRequest({
    String? transitGatewayMulticastDomainId,
    String? groupIpAddress,
    List<String>? networkInterfaceIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RegisterTransitGatewayMulticastGroupSourcesRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      groupIpAddress: groupIpAddress,
      networkInterfaceIds: networkInterfaceIds == null
          ? null
          : _i3.BuiltList(networkInterfaceIds),
      dryRun: dryRun,
    );
  }

  factory RegisterTransitGatewayMulticastGroupSourcesRequest.build(
      [void Function(RegisterTransitGatewayMulticastGroupSourcesRequestBuilder)
          updates]) = _$RegisterTransitGatewayMulticastGroupSourcesRequest;

  const RegisterTransitGatewayMulticastGroupSourcesRequest._();

  factory RegisterTransitGatewayMulticastGroupSourcesRequest.fromRequest(
    RegisterTransitGatewayMulticastGroupSourcesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          RegisterTransitGatewayMulticastGroupSourcesRequest>> serializers = [
    RegisterTransitGatewayMulticastGroupSourcesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterTransitGatewayMulticastGroupSourcesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;

  /// The group sources' network interface IDs to register with the transit gateway multicast group.
  _i3.BuiltList<String>? get networkInterfaceIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RegisterTransitGatewayMulticastGroupSourcesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        groupIpAddress,
        networkInterfaceIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterTransitGatewayMulticastGroupSourcesRequest')
      ..add(
        'transitGatewayMulticastDomainId',
        transitGatewayMulticastDomainId,
      )
      ..add(
        'groupIpAddress',
        groupIpAddress,
      )
      ..add(
        'networkInterfaceIds',
        networkInterfaceIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class RegisterTransitGatewayMulticastGroupSourcesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        RegisterTransitGatewayMulticastGroupSourcesRequest> {
  const RegisterTransitGatewayMulticastGroupSourcesRequestEc2QuerySerializer()
      : super('RegisterTransitGatewayMulticastGroupSourcesRequest');

  @override
  Iterable<Type> get types => const [
        RegisterTransitGatewayMulticastGroupSourcesRequest,
        _$RegisterTransitGatewayMulticastGroupSourcesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterTransitGatewayMulticastGroupSourcesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTransitGatewayMulticastGroupSourcesRequestBuilder();
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
        case 'GroupIpAddress':
          result.groupIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetworkInterfaceIds':
          result.networkInterfaceIds.replace((const _i1.XmlBuiltListSerializer(
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
    RegisterTransitGatewayMulticastGroupSourcesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RegisterTransitGatewayMulticastGroupSourcesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RegisterTransitGatewayMulticastGroupSourcesRequest(
      :transitGatewayMulticastDomainId,
      :groupIpAddress,
      :networkInterfaceIds,
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
    if (groupIpAddress != null) {
      result$
        ..add(const _i1.XmlElementName('GroupIpAddress'))
        ..add(serializers.serialize(
          groupIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceIds != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaceIds,
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
