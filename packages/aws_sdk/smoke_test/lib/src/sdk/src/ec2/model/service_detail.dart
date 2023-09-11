// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.service_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_name_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_connectivity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_type_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'service_detail.g.dart';

/// Describes a VPC endpoint service.
abstract class ServiceDetail
    with _i1.AWSEquatable<ServiceDetail>
    implements Built<ServiceDetail, ServiceDetailBuilder> {
  /// Describes a VPC endpoint service.
  factory ServiceDetail({
    String? serviceName,
    String? serviceId,
    List<ServiceTypeDetail>? serviceType,
    List<String>? availabilityZones,
    String? owner,
    List<String>? baseEndpointDnsNames,
    String? privateDnsName,
    List<PrivateDnsDetails>? privateDnsNames,
    bool? vpcEndpointPolicySupported,
    bool? acceptanceRequired,
    bool? managesVpcEndpoints,
    PayerResponsibility? payerResponsibility,
    List<Tag>? tags,
    DnsNameState? privateDnsNameVerificationState,
    List<ServiceConnectivityType>? supportedIpAddressTypes,
  }) {
    vpcEndpointPolicySupported ??= false;
    acceptanceRequired ??= false;
    managesVpcEndpoints ??= false;
    return _$ServiceDetail._(
      serviceName: serviceName,
      serviceId: serviceId,
      serviceType: serviceType == null ? null : _i2.BuiltList(serviceType),
      availabilityZones:
          availabilityZones == null ? null : _i2.BuiltList(availabilityZones),
      owner: owner,
      baseEndpointDnsNames: baseEndpointDnsNames == null
          ? null
          : _i2.BuiltList(baseEndpointDnsNames),
      privateDnsName: privateDnsName,
      privateDnsNames:
          privateDnsNames == null ? null : _i2.BuiltList(privateDnsNames),
      vpcEndpointPolicySupported: vpcEndpointPolicySupported,
      acceptanceRequired: acceptanceRequired,
      managesVpcEndpoints: managesVpcEndpoints,
      payerResponsibility: payerResponsibility,
      tags: tags == null ? null : _i2.BuiltList(tags),
      privateDnsNameVerificationState: privateDnsNameVerificationState,
      supportedIpAddressTypes: supportedIpAddressTypes == null
          ? null
          : _i2.BuiltList(supportedIpAddressTypes),
    );
  }

  /// Describes a VPC endpoint service.
  factory ServiceDetail.build([void Function(ServiceDetailBuilder) updates]) =
      _$ServiceDetail;

  const ServiceDetail._();

  static const List<_i3.SmithySerializer<ServiceDetail>> serializers = [
    ServiceDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceDetailBuilder b) {
    b
      ..vpcEndpointPolicySupported = false
      ..acceptanceRequired = false
      ..managesVpcEndpoints = false;
  }

  /// The name of the service.
  String? get serviceName;

  /// The ID of the endpoint service.
  String? get serviceId;

  /// The type of service.
  _i2.BuiltList<ServiceTypeDetail>? get serviceType;

  /// The Availability Zones in which the service is available.
  _i2.BuiltList<String>? get availabilityZones;

  /// The Amazon Web Services account ID of the service owner.
  String? get owner;

  /// The DNS names for the service.
  _i2.BuiltList<String>? get baseEndpointDnsNames;

  /// The private DNS name for the service.
  String? get privateDnsName;

  /// The private DNS names assigned to the VPC endpoint service.
  _i2.BuiltList<PrivateDnsDetails>? get privateDnsNames;

  /// Indicates whether the service supports endpoint policies.
  bool get vpcEndpointPolicySupported;

  /// Indicates whether VPC endpoint connection requests to the service must be accepted by the service owner.
  bool get acceptanceRequired;

  /// Indicates whether the service manages its VPC endpoints. Management of the service VPC endpoints using the VPC endpoint API is restricted.
  bool get managesVpcEndpoints;

  /// The payer responsibility.
  PayerResponsibility? get payerResponsibility;

  /// The tags assigned to the service.
  _i2.BuiltList<Tag>? get tags;

  /// The verification state of the VPC endpoint service.
  ///
  /// Consumers of the endpoint service cannot use the private name when the state is not `verified`.
  DnsNameState? get privateDnsNameVerificationState;

  /// The supported IP address types.
  _i2.BuiltList<ServiceConnectivityType>? get supportedIpAddressTypes;
  @override
  List<Object?> get props => [
        serviceName,
        serviceId,
        serviceType,
        availabilityZones,
        owner,
        baseEndpointDnsNames,
        privateDnsName,
        privateDnsNames,
        vpcEndpointPolicySupported,
        acceptanceRequired,
        managesVpcEndpoints,
        payerResponsibility,
        tags,
        privateDnsNameVerificationState,
        supportedIpAddressTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceDetail')
      ..add(
        'serviceName',
        serviceName,
      )
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'serviceType',
        serviceType,
      )
      ..add(
        'availabilityZones',
        availabilityZones,
      )
      ..add(
        'owner',
        owner,
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
        'privateDnsNames',
        privateDnsNames,
      )
      ..add(
        'vpcEndpointPolicySupported',
        vpcEndpointPolicySupported,
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
        'payerResponsibility',
        payerResponsibility,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'privateDnsNameVerificationState',
        privateDnsNameVerificationState,
      )
      ..add(
        'supportedIpAddressTypes',
        supportedIpAddressTypes,
      );
    return helper.toString();
  }
}

class ServiceDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ServiceDetail> {
  const ServiceDetailEc2QuerySerializer() : super('ServiceDetail');

  @override
  Iterable<Type> get types => const [
        ServiceDetail,
        _$ServiceDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ServiceDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceName':
          result.serviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'serviceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'owner':
          result.owner = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'privateDnsNameSet':
          result.privateDnsNames.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PrivateDnsDetails)],
            ),
          ) as _i2.BuiltList<PrivateDnsDetails>));
        case 'vpcEndpointPolicySupported':
          result.vpcEndpointPolicySupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'privateDnsNameVerificationState':
          result.privateDnsNameVerificationState = (serializers.deserialize(
            value,
            specifiedType: const FullType(DnsNameState),
          ) as DnsNameState);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ServiceDetailResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ServiceDetail(
      :serviceName,
      :serviceId,
      :serviceType,
      :availabilityZones,
      :owner,
      :baseEndpointDnsNames,
      :privateDnsName,
      :privateDnsNames,
      :vpcEndpointPolicySupported,
      :acceptanceRequired,
      :managesVpcEndpoints,
      :payerResponsibility,
      :tags,
      :privateDnsNameVerificationState,
      :supportedIpAddressTypes
    ) = object;
    if (serviceName != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          serviceName,
          specifiedType: const FullType(String),
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
    if (serviceType != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceType'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          serviceType,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ServiceTypeDetail)],
          ),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i3.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType(
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
    if (privateDnsNames != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          privateDnsNames,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PrivateDnsDetails)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('VpcEndpointPolicySupported'))
      ..add(serializers.serialize(
        vpcEndpointPolicySupported,
        specifiedType: const FullType(bool),
      ));
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
    if (payerResponsibility != null) {
      result$
        ..add(const _i3.XmlElementName('PayerResponsibility'))
        ..add(serializers.serialize(
          payerResponsibility,
          specifiedType: const FullType(PayerResponsibility),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (privateDnsNameVerificationState != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDnsNameVerificationState'))
        ..add(serializers.serialize(
          privateDnsNameVerificationState,
          specifiedType: const FullType(DnsNameState),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ServiceConnectivityType)],
          ),
        ));
    }
    return result$;
  }
}
