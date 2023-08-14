// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.service_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_connectivity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_type_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'service_configuration.g.dart';

/// Describes a service configuration for a VPC endpoint service.
abstract class ServiceConfiguration
    with _i1.AWSEquatable<ServiceConfiguration>
    implements Built<ServiceConfiguration, ServiceConfigurationBuilder> {
  /// Describes a service configuration for a VPC endpoint service.
  factory ServiceConfiguration({
    List<ServiceTypeDetail>? serviceType,
    String? serviceId,
    String? serviceName,
    ServiceState? serviceState,
    List<String>? availabilityZones,
    bool? acceptanceRequired,
    bool? managesVpcEndpoints,
    List<String>? networkLoadBalancerArns,
    List<String>? gatewayLoadBalancerArns,
    List<ServiceConnectivityType>? supportedIpAddressTypes,
    List<String>? baseEndpointDnsNames,
    String? privateDnsName,
    PrivateDnsNameConfiguration? privateDnsNameConfiguration,
    PayerResponsibility? payerResponsibility,
    List<Tag>? tags,
  }) {
    acceptanceRequired ??= false;
    managesVpcEndpoints ??= false;
    return _$ServiceConfiguration._(
      serviceType: serviceType == null ? null : _i2.BuiltList(serviceType),
      serviceId: serviceId,
      serviceName: serviceName,
      serviceState: serviceState,
      availabilityZones:
          availabilityZones == null ? null : _i2.BuiltList(availabilityZones),
      acceptanceRequired: acceptanceRequired,
      managesVpcEndpoints: managesVpcEndpoints,
      networkLoadBalancerArns: networkLoadBalancerArns == null
          ? null
          : _i2.BuiltList(networkLoadBalancerArns),
      gatewayLoadBalancerArns: gatewayLoadBalancerArns == null
          ? null
          : _i2.BuiltList(gatewayLoadBalancerArns),
      supportedIpAddressTypes: supportedIpAddressTypes == null
          ? null
          : _i2.BuiltList(supportedIpAddressTypes),
      baseEndpointDnsNames: baseEndpointDnsNames == null
          ? null
          : _i2.BuiltList(baseEndpointDnsNames),
      privateDnsName: privateDnsName,
      privateDnsNameConfiguration: privateDnsNameConfiguration,
      payerResponsibility: payerResponsibility,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a service configuration for a VPC endpoint service.
  factory ServiceConfiguration.build(
          [void Function(ServiceConfigurationBuilder) updates]) =
      _$ServiceConfiguration;

  const ServiceConfiguration._();

  static const List<_i3.SmithySerializer<ServiceConfiguration>> serializers = [
    ServiceConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceConfigurationBuilder b) {
    b
      ..acceptanceRequired = false
      ..managesVpcEndpoints = false;
  }

  /// The type of service.
  _i2.BuiltList<ServiceTypeDetail>? get serviceType;

  /// The ID of the service.
  String? get serviceId;

  /// The name of the service.
  String? get serviceName;

  /// The service state.
  ServiceState? get serviceState;

  /// The Availability Zones in which the service is available.
  _i2.BuiltList<String>? get availabilityZones;

  /// Indicates whether requests from other Amazon Web Services accounts to create an endpoint to the service must first be accepted.
  bool get acceptanceRequired;

  /// Indicates whether the service manages its VPC endpoints. Management of the service VPC endpoints using the VPC endpoint API is restricted.
  bool get managesVpcEndpoints;

  /// The Amazon Resource Names (ARNs) of the Network Load Balancers for the service.
  _i2.BuiltList<String>? get networkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the service.
  _i2.BuiltList<String>? get gatewayLoadBalancerArns;

  /// The supported IP address types.
  _i2.BuiltList<ServiceConnectivityType>? get supportedIpAddressTypes;

  /// The DNS names for the service.
  _i2.BuiltList<String>? get baseEndpointDnsNames;

  /// The private DNS name for the service.
  String? get privateDnsName;

  /// Information about the endpoint service private DNS name configuration.
  PrivateDnsNameConfiguration? get privateDnsNameConfiguration;

  /// The payer responsibility.
  PayerResponsibility? get payerResponsibility;

  /// The tags assigned to the service.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        serviceType,
        serviceId,
        serviceName,
        serviceState,
        availabilityZones,
        acceptanceRequired,
        managesVpcEndpoints,
        networkLoadBalancerArns,
        gatewayLoadBalancerArns,
        supportedIpAddressTypes,
        baseEndpointDnsNames,
        privateDnsName,
        privateDnsNameConfiguration,
        payerResponsibility,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceConfiguration')
      ..add(
        'serviceType',
        serviceType,
      )
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'serviceName',
        serviceName,
      )
      ..add(
        'serviceState',
        serviceState,
      )
      ..add(
        'availabilityZones',
        availabilityZones,
      )
      ..add(
        'acceptanceRequired',
        acceptanceRequired,
      )
      ..add(
        'managesVpcEndpoints',
        managesVpcEndpoints,
      )
      ..add(
        'networkLoadBalancerArns',
        networkLoadBalancerArns,
      )
      ..add(
        'gatewayLoadBalancerArns',
        gatewayLoadBalancerArns,
      )
      ..add(
        'supportedIpAddressTypes',
        supportedIpAddressTypes,
      )
      ..add(
        'baseEndpointDnsNames',
        baseEndpointDnsNames,
      )
      ..add(
        'privateDnsName',
        privateDnsName,
      )
      ..add(
        'privateDnsNameConfiguration',
        privateDnsNameConfiguration,
      )
      ..add(
        'payerResponsibility',
        payerResponsibility,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ServiceConfigurationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ServiceConfiguration> {
  const ServiceConfigurationEc2QuerySerializer()
      : super('ServiceConfiguration');

  @override
  Iterable<Type> get types => const [
        ServiceConfiguration,
        _$ServiceConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ServiceConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceType':
          result.serviceType.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServiceTypeDetail)],
            ),
          ) as _i2.BuiltList<ServiceTypeDetail>));
        case 'serviceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'serviceName':
          result.serviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'serviceState':
          result.serviceState = (serializers.deserialize(
            value,
            specifiedType: const FullType(ServiceState),
          ) as ServiceState);
        case 'availabilityZoneSet':
          result.availabilityZones.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'acceptanceRequired':
          result.acceptanceRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'managesVpcEndpoints':
          result.managesVpcEndpoints = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkLoadBalancerArnSet':
          result.networkLoadBalancerArns
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'gatewayLoadBalancerArnSet':
          result.gatewayLoadBalancerArns
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'supportedIpAddressTypeSet':
          result.supportedIpAddressTypes
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServiceConnectivityType)],
            ),
          ) as _i2.BuiltList<ServiceConnectivityType>));
        case 'baseEndpointDnsNameSet':
          result.baseEndpointDnsNames.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'privateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateDnsNameConfiguration':
          result.privateDnsNameConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PrivateDnsNameConfiguration),
          ) as PrivateDnsNameConfiguration));
        case 'payerResponsibility':
          result.payerResponsibility = (serializers.deserialize(
            value,
            specifiedType: const FullType(PayerResponsibility),
          ) as PayerResponsibility);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ServiceConfigurationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ServiceConfiguration(
      :serviceType,
      :serviceId,
      :serviceName,
      :serviceState,
      :availabilityZones,
      :acceptanceRequired,
      :managesVpcEndpoints,
      :networkLoadBalancerArns,
      :gatewayLoadBalancerArns,
      :supportedIpAddressTypes,
      :baseEndpointDnsNames,
      :privateDnsName,
      :privateDnsNameConfiguration,
      :payerResponsibility,
      :tags
    ) = object;
    if (serviceType != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          serviceType,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ServiceTypeDetail)],
          ),
        ));
    }
    if (serviceId != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (serviceName != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          serviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (serviceState != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceState'))
        ..add(serializers.serialize(
          serviceState,
          specifiedType: const FullType.nullable(ServiceState),
        ));
    }
    if (availabilityZones != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZoneSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          availabilityZones,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AcceptanceRequired'))
      ..add(serializers.serialize(
        acceptanceRequired,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('ManagesVpcEndpoints'))
      ..add(serializers.serialize(
        managesVpcEndpoints,
        specifiedType: const FullType(bool),
      ));
    if (networkLoadBalancerArns != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkLoadBalancerArnSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkLoadBalancerArns,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (gatewayLoadBalancerArns != null) {
      result$
        ..add(const _i3.XmlElementName('GatewayLoadBalancerArnSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          gatewayLoadBalancerArns,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (supportedIpAddressTypes != null) {
      result$
        ..add(const _i3.XmlElementName('SupportedIpAddressTypeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedIpAddressTypes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ServiceConnectivityType)],
          ),
        ));
    }
    if (baseEndpointDnsNames != null) {
      result$
        ..add(const _i3.XmlElementName('BaseEndpointDnsNameSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          baseEndpointDnsNames,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (privateDnsName != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDnsNameConfiguration != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameConfiguration'))
        ..add(serializers.serialize(
          privateDnsNameConfiguration,
          specifiedType: const FullType(PrivateDnsNameConfiguration),
        ));
    }
    if (payerResponsibility != null) {
      result$
        ..add(const _i3.XmlElementName('PayerResponsibility'))
        ..add(serializers.serialize(
          payerResponsibility,
          specifiedType: const FullType.nullable(PayerResponsibility),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
