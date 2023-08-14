// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_endpoint_service_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_vpc_endpoint_service_configuration_request.g.dart';

abstract class CreateVpcEndpointServiceConfigurationRequest
    with
        _i1.HttpInput<CreateVpcEndpointServiceConfigurationRequest>,
        _i2.AWSEquatable<CreateVpcEndpointServiceConfigurationRequest>
    implements
        Built<CreateVpcEndpointServiceConfigurationRequest,
            CreateVpcEndpointServiceConfigurationRequestBuilder> {
  factory CreateVpcEndpointServiceConfigurationRequest({
    bool? dryRun,
    bool? acceptanceRequired,
    String? privateDnsName,
    List<String>? networkLoadBalancerArns,
    List<String>? gatewayLoadBalancerArns,
    List<String>? supportedIpAddressTypes,
    String? clientToken,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    acceptanceRequired ??= false;
    return _$CreateVpcEndpointServiceConfigurationRequest._(
      dryRun: dryRun,
      acceptanceRequired: acceptanceRequired,
      privateDnsName: privateDnsName,
      networkLoadBalancerArns: networkLoadBalancerArns == null
          ? null
          : _i3.BuiltList(networkLoadBalancerArns),
      gatewayLoadBalancerArns: gatewayLoadBalancerArns == null
          ? null
          : _i3.BuiltList(gatewayLoadBalancerArns),
      supportedIpAddressTypes: supportedIpAddressTypes == null
          ? null
          : _i3.BuiltList(supportedIpAddressTypes),
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateVpcEndpointServiceConfigurationRequest.build(
      [void Function(CreateVpcEndpointServiceConfigurationRequestBuilder)
          updates]) = _$CreateVpcEndpointServiceConfigurationRequest;

  const CreateVpcEndpointServiceConfigurationRequest._();

  factory CreateVpcEndpointServiceConfigurationRequest.fromRequest(
    CreateVpcEndpointServiceConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateVpcEndpointServiceConfigurationRequest>>
      serializers = [
    CreateVpcEndpointServiceConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcEndpointServiceConfigurationRequestBuilder b) {
    b
      ..dryRun = false
      ..acceptanceRequired = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether requests from service consumers to create an endpoint to your service must be accepted manually.
  bool get acceptanceRequired;

  /// (Interface endpoint configuration) The private DNS name to assign to the VPC endpoint service.
  String? get privateDnsName;

  /// The Amazon Resource Names (ARNs) of the Network Load Balancers.
  _i3.BuiltList<String>? get networkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of the Gateway Load Balancers.
  _i3.BuiltList<String>? get gatewayLoadBalancerArns;

  /// The supported IP address types. The possible values are `ipv4` and `ipv6`.
  _i3.BuiltList<String>? get supportedIpAddressTypes;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The tags to associate with the service.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateVpcEndpointServiceConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        acceptanceRequired,
        privateDnsName,
        networkLoadBalancerArns,
        gatewayLoadBalancerArns,
        supportedIpAddressTypes,
        clientToken,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVpcEndpointServiceConfigurationRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'acceptanceRequired',
        acceptanceRequired,
      )
      ..add(
        'privateDnsName',
        privateDnsName,
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
        'clientToken',
        clientToken,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class CreateVpcEndpointServiceConfigurationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateVpcEndpointServiceConfigurationRequest> {
  const CreateVpcEndpointServiceConfigurationRequestEc2QuerySerializer()
      : super('CreateVpcEndpointServiceConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointServiceConfigurationRequest,
        _$CreateVpcEndpointServiceConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointServiceConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointServiceConfigurationRequestBuilder();
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
        case 'AcceptanceRequired':
          result.acceptanceRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PrivateDnsName':
          result.privateDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NetworkLoadBalancerArn':
          result.networkLoadBalancerArns
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
        case 'GatewayLoadBalancerArn':
          result.gatewayLoadBalancerArns
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
        case 'SupportedIpAddressType':
          result.supportedIpAddressTypes
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpcEndpointServiceConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpcEndpointServiceConfigurationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcEndpointServiceConfigurationRequest(
      :dryRun,
      :acceptanceRequired,
      :privateDnsName,
      :networkLoadBalancerArns,
      :gatewayLoadBalancerArns,
      :supportedIpAddressTypes,
      :clientToken,
      :tagSpecifications
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('AcceptanceRequired'))
      ..add(serializers.serialize(
        acceptanceRequired,
        specifiedType: const FullType(bool),
      ));
    if (privateDnsName != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          privateDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (networkLoadBalancerArns != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkLoadBalancerArns,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (gatewayLoadBalancerArns != null) {
      result$
        ..add(const _i1.XmlElementName('GatewayLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          gatewayLoadBalancerArns,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (supportedIpAddressTypes != null) {
      result$
        ..add(const _i1.XmlElementName('SupportedIpAddressType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          supportedIpAddressTypes,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
