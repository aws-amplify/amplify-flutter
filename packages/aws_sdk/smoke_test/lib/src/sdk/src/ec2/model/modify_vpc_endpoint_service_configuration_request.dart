// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_service_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpc_endpoint_service_configuration_request.g.dart';

abstract class ModifyVpcEndpointServiceConfigurationRequest
    with
        _i1.HttpInput<ModifyVpcEndpointServiceConfigurationRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointServiceConfigurationRequest>
    implements
        Built<ModifyVpcEndpointServiceConfigurationRequest,
            ModifyVpcEndpointServiceConfigurationRequestBuilder> {
  factory ModifyVpcEndpointServiceConfigurationRequest({
    bool? dryRun,
    String? serviceId,
    String? privateDnsName,
    bool? removePrivateDnsName,
    bool? acceptanceRequired,
    List<String>? addNetworkLoadBalancerArns,
    List<String>? removeNetworkLoadBalancerArns,
    List<String>? addGatewayLoadBalancerArns,
    List<String>? removeGatewayLoadBalancerArns,
    List<String>? addSupportedIpAddressTypes,
    List<String>? removeSupportedIpAddressTypes,
  }) {
    dryRun ??= false;
    removePrivateDnsName ??= false;
    acceptanceRequired ??= false;
    return _$ModifyVpcEndpointServiceConfigurationRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      privateDnsName: privateDnsName,
      removePrivateDnsName: removePrivateDnsName,
      acceptanceRequired: acceptanceRequired,
      addNetworkLoadBalancerArns: addNetworkLoadBalancerArns == null
          ? null
          : _i3.BuiltList(addNetworkLoadBalancerArns),
      removeNetworkLoadBalancerArns: removeNetworkLoadBalancerArns == null
          ? null
          : _i3.BuiltList(removeNetworkLoadBalancerArns),
      addGatewayLoadBalancerArns: addGatewayLoadBalancerArns == null
          ? null
          : _i3.BuiltList(addGatewayLoadBalancerArns),
      removeGatewayLoadBalancerArns: removeGatewayLoadBalancerArns == null
          ? null
          : _i3.BuiltList(removeGatewayLoadBalancerArns),
      addSupportedIpAddressTypes: addSupportedIpAddressTypes == null
          ? null
          : _i3.BuiltList(addSupportedIpAddressTypes),
      removeSupportedIpAddressTypes: removeSupportedIpAddressTypes == null
          ? null
          : _i3.BuiltList(removeSupportedIpAddressTypes),
    );
  }

  factory ModifyVpcEndpointServiceConfigurationRequest.build(
      [void Function(ModifyVpcEndpointServiceConfigurationRequestBuilder)
          updates]) = _$ModifyVpcEndpointServiceConfigurationRequest;

  const ModifyVpcEndpointServiceConfigurationRequest._();

  factory ModifyVpcEndpointServiceConfigurationRequest.fromRequest(
    ModifyVpcEndpointServiceConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyVpcEndpointServiceConfigurationRequest>>
      serializers = [
    ModifyVpcEndpointServiceConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointServiceConfigurationRequestBuilder b) {
    b
      ..dryRun = false
      ..removePrivateDnsName = false
      ..acceptanceRequired = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the service.
  String? get serviceId;

  /// (Interface endpoint configuration) The private DNS name to assign to the endpoint service.
  String? get privateDnsName;

  /// (Interface endpoint configuration) Removes the private DNS name of the endpoint service.
  bool get removePrivateDnsName;

  /// Indicates whether requests to create an endpoint to your service must be accepted.
  bool get acceptanceRequired;

  /// The Amazon Resource Names (ARNs) of Network Load Balancers to add to your service configuration.
  _i3.BuiltList<String>? get addNetworkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of Network Load Balancers to remove from your service configuration.
  _i3.BuiltList<String>? get removeNetworkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of Gateway Load Balancers to add to your service configuration.
  _i3.BuiltList<String>? get addGatewayLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of Gateway Load Balancers to remove from your service configuration.
  _i3.BuiltList<String>? get removeGatewayLoadBalancerArns;

  /// The IP address types to add to your service configuration.
  _i3.BuiltList<String>? get addSupportedIpAddressTypes;

  /// The IP address types to remove from your service configuration.
  _i3.BuiltList<String>? get removeSupportedIpAddressTypes;
  @override
  ModifyVpcEndpointServiceConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        privateDnsName,
        removePrivateDnsName,
        acceptanceRequired,
        addNetworkLoadBalancerArns,
        removeNetworkLoadBalancerArns,
        addGatewayLoadBalancerArns,
        removeGatewayLoadBalancerArns,
        addSupportedIpAddressTypes,
        removeSupportedIpAddressTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointServiceConfigurationRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'privateDnsName',
        privateDnsName,
      )
      ..add(
        'removePrivateDnsName',
        removePrivateDnsName,
      )
      ..add(
        'acceptanceRequired',
        acceptanceRequired,
      )
      ..add(
        'addNetworkLoadBalancerArns',
        addNetworkLoadBalancerArns,
      )
      ..add(
        'removeNetworkLoadBalancerArns',
        removeNetworkLoadBalancerArns,
      )
      ..add(
        'addGatewayLoadBalancerArns',
        addGatewayLoadBalancerArns,
      )
      ..add(
        'removeGatewayLoadBalancerArns',
        removeGatewayLoadBalancerArns,
      )
      ..add(
        'addSupportedIpAddressTypes',
        addSupportedIpAddressTypes,
      )
      ..add(
        'removeSupportedIpAddressTypes',
        removeSupportedIpAddressTypes,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointServiceConfigurationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVpcEndpointServiceConfigurationRequest> {
  const ModifyVpcEndpointServiceConfigurationRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointServiceConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointServiceConfigurationRequest,
        _$ModifyVpcEndpointServiceConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointServiceConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointServiceConfigurationRequestBuilder();
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
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrivateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RemovePrivateDnsName':
          result.removePrivateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AcceptanceRequired':
          result.acceptanceRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AddNetworkLoadBalancerArn':
          result.addNetworkLoadBalancerArns
              .replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveNetworkLoadBalancerArn':
          result.removeNetworkLoadBalancerArns
              .replace((const _i1.XmlBuiltListSerializer(
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
        case 'AddGatewayLoadBalancerArn':
          result.addGatewayLoadBalancerArns
              .replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveGatewayLoadBalancerArn':
          result.removeGatewayLoadBalancerArns
              .replace((const _i1.XmlBuiltListSerializer(
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
        case 'AddSupportedIpAddressType':
          result.addSupportedIpAddressTypes
              .replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveSupportedIpAddressType':
          result.removeSupportedIpAddressTypes
              .replace((const _i1.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcEndpointServiceConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointServiceConfigurationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointServiceConfigurationRequest(
      :dryRun,
      :serviceId,
      :privateDnsName,
      :removePrivateDnsName,
      :acceptanceRequired,
      :addNetworkLoadBalancerArns,
      :removeNetworkLoadBalancerArns,
      :addGatewayLoadBalancerArns,
      :removeGatewayLoadBalancerArns,
      :addSupportedIpAddressTypes,
      :removeSupportedIpAddressTypes
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (serviceId != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDnsName != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RemovePrivateDnsName'))
      ..add(serializers.serialize(
        removePrivateDnsName,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('AcceptanceRequired'))
      ..add(serializers.serialize(
        acceptanceRequired,
        specifiedType: const FullType(bool),
      ));
    if (addNetworkLoadBalancerArns != null) {
      result$
        ..add(const _i1.XmlElementName('AddNetworkLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addNetworkLoadBalancerArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeNetworkLoadBalancerArns != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveNetworkLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeNetworkLoadBalancerArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (addGatewayLoadBalancerArns != null) {
      result$
        ..add(const _i1.XmlElementName('AddGatewayLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addGatewayLoadBalancerArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeGatewayLoadBalancerArns != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveGatewayLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeGatewayLoadBalancerArns,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (addSupportedIpAddressTypes != null) {
      result$
        ..add(const _i1.XmlElementName('AddSupportedIpAddressType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addSupportedIpAddressTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeSupportedIpAddressTypes != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveSupportedIpAddressType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeSupportedIpAddressTypes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
