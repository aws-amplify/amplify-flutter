// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_client_vpn_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/self_service_portal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transport_protocol.dart';

part 'create_client_vpn_endpoint_request.g.dart';

abstract class CreateClientVpnEndpointRequest
    with
        _i1.HttpInput<CreateClientVpnEndpointRequest>,
        _i2.AWSEquatable<CreateClientVpnEndpointRequest>
    implements
        Built<CreateClientVpnEndpointRequest,
            CreateClientVpnEndpointRequestBuilder> {
  factory CreateClientVpnEndpointRequest({
    String? clientCidrBlock,
    String? serverCertificateArn,
    List<ClientVpnAuthenticationRequest>? authenticationOptions,
    ConnectionLogOptions? connectionLogOptions,
    List<String>? dnsServers,
    TransportProtocol? transportProtocol,
    int? vpnPort,
    String? description,
    bool? splitTunnel,
    bool? dryRun,
    String? clientToken,
    List<TagSpecification>? tagSpecifications,
    List<String>? securityGroupIds,
    String? vpcId,
    SelfServicePortal? selfServicePortal,
    ClientConnectOptions? clientConnectOptions,
    int? sessionTimeoutHours,
    ClientLoginBannerOptions? clientLoginBannerOptions,
  }) {
    vpnPort ??= 0;
    splitTunnel ??= false;
    dryRun ??= false;
    sessionTimeoutHours ??= 0;
    return _$CreateClientVpnEndpointRequest._(
      clientCidrBlock: clientCidrBlock,
      serverCertificateArn: serverCertificateArn,
      authenticationOptions: authenticationOptions == null
          ? null
          : _i3.BuiltList(authenticationOptions),
      connectionLogOptions: connectionLogOptions,
      dnsServers: dnsServers == null ? null : _i3.BuiltList(dnsServers),
      transportProtocol: transportProtocol,
      vpnPort: vpnPort,
      description: description,
      splitTunnel: splitTunnel,
      dryRun: dryRun,
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      securityGroupIds:
          securityGroupIds == null ? null : _i3.BuiltList(securityGroupIds),
      vpcId: vpcId,
      selfServicePortal: selfServicePortal,
      clientConnectOptions: clientConnectOptions,
      sessionTimeoutHours: sessionTimeoutHours,
      clientLoginBannerOptions: clientLoginBannerOptions,
    );
  }

  factory CreateClientVpnEndpointRequest.build(
          [void Function(CreateClientVpnEndpointRequestBuilder) updates]) =
      _$CreateClientVpnEndpointRequest;

  const CreateClientVpnEndpointRequest._();

  factory CreateClientVpnEndpointRequest.fromRequest(
    CreateClientVpnEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateClientVpnEndpointRequest>>
      serializers = [CreateClientVpnEndpointRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateClientVpnEndpointRequestBuilder b) {
    b
      ..vpnPort = 0
      ..splitTunnel = false
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..sessionTimeoutHours = 0;
  }

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. Client CIDR range must have a size of at least /22 and must not be greater than /12.
  String? get clientCidrBlock;

  /// The ARN of the server certificate. For more information, see the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).
  String? get serverCertificateArn;

  /// Information about the authentication method to be used to authenticate clients.
  _i3.BuiltList<ClientVpnAuthenticationRequest>? get authenticationOptions;

  /// Information about the client connection logging options.
  ///
  /// If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:
  ///
  /// *   Client connection requests
  ///
  /// *   Client connection results (successful and unsuccessful)
  ///
  /// *   Reasons for unsuccessful client connection requests
  ///
  /// *   Client connection termination time
  ConnectionLogOptions? get connectionLogOptions;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address configured on the device is used for the DNS server.
  _i3.BuiltList<String>? get dnsServers;

  /// The transport protocol to be used by the VPN session.
  ///
  /// Default value: `udp`
  TransportProtocol? get transportProtocol;

  /// The port number to assign to the Client VPN endpoint for TCP and UDP traffic.
  ///
  /// Valid Values: `443` | `1194`
  ///
  /// Default Value: `443`
  int get vpnPort;

  /// A brief description of the Client VPN endpoint.
  String? get description;

  /// Indicates whether split-tunnel is enabled on the Client VPN endpoint.
  ///
  /// By default, split-tunnel on a VPN endpoint is disabled.
  ///
  /// For information about split-tunnel VPN endpoints, see [Split-tunnel Client VPN endpoint](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html) in the _Client VPN Administrator Guide_.
  bool get splitTunnel;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The tags to apply to the Client VPN endpoint during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  _i3.BuiltList<String>? get securityGroupIds;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  String? get vpcId;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint.
  ///
  /// Default Value: `enabled`
  SelfServicePortal? get selfServicePortal;

  /// The options for managing connection authorization for new client connections.
  ClientConnectOptions? get clientConnectOptions;

  /// The maximum VPN session duration time in hours.
  ///
  /// Valid values: `8 | 10 | 12 | 24`
  ///
  /// Default value: `24`
  int get sessionTimeoutHours;

  /// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  ClientLoginBannerOptions? get clientLoginBannerOptions;
  @override
  CreateClientVpnEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientCidrBlock,
        serverCertificateArn,
        authenticationOptions,
        connectionLogOptions,
        dnsServers,
        transportProtocol,
        vpnPort,
        description,
        splitTunnel,
        dryRun,
        clientToken,
        tagSpecifications,
        securityGroupIds,
        vpcId,
        selfServicePortal,
        clientConnectOptions,
        sessionTimeoutHours,
        clientLoginBannerOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateClientVpnEndpointRequest')
      ..add(
        'clientCidrBlock',
        clientCidrBlock,
      )
      ..add(
        'serverCertificateArn',
        serverCertificateArn,
      )
      ..add(
        'authenticationOptions',
        authenticationOptions,
      )
      ..add(
        'connectionLogOptions',
        connectionLogOptions,
      )
      ..add(
        'dnsServers',
        dnsServers,
      )
      ..add(
        'transportProtocol',
        transportProtocol,
      )
      ..add(
        'vpnPort',
        vpnPort,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'splitTunnel',
        splitTunnel,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'securityGroupIds',
        securityGroupIds,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'selfServicePortal',
        selfServicePortal,
      )
      ..add(
        'clientConnectOptions',
        clientConnectOptions,
      )
      ..add(
        'sessionTimeoutHours',
        sessionTimeoutHours,
      )
      ..add(
        'clientLoginBannerOptions',
        clientLoginBannerOptions,
      );
    return helper.toString();
  }
}

class CreateClientVpnEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateClientVpnEndpointRequest> {
  const CreateClientVpnEndpointRequestEc2QuerySerializer()
      : super('CreateClientVpnEndpointRequest');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnEndpointRequest,
        _$CreateClientVpnEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientCidrBlock':
          result.clientCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ServerCertificateArn':
          result.serverCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Authentication':
          result.authenticationOptions.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.ec2QueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ClientVpnAuthenticationRequest)],
            ),
          ) as _i3.BuiltList<ClientVpnAuthenticationRequest>));
        case 'ConnectionLogOptions':
          result.connectionLogOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectionLogOptions),
          ) as ConnectionLogOptions));
        case 'DnsServers':
          result.dnsServers.replace((const _i1.XmlBuiltListSerializer(
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
        case 'TransportProtocol':
          result.transportProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransportProtocol),
          ) as TransportProtocol);
        case 'VpnPort':
          result.vpnPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SplitTunnel':
          result.splitTunnel = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SelfServicePortal':
          result.selfServicePortal = (serializers.deserialize(
            value,
            specifiedType: const FullType(SelfServicePortal),
          ) as SelfServicePortal);
        case 'ClientConnectOptions':
          result.clientConnectOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientConnectOptions),
          ) as ClientConnectOptions));
        case 'SessionTimeoutHours':
          result.sessionTimeoutHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ClientLoginBannerOptions':
          result.clientLoginBannerOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientLoginBannerOptions),
          ) as ClientLoginBannerOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateClientVpnEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateClientVpnEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateClientVpnEndpointRequest(
      :clientCidrBlock,
      :serverCertificateArn,
      :authenticationOptions,
      :connectionLogOptions,
      :dnsServers,
      :transportProtocol,
      :vpnPort,
      :description,
      :splitTunnel,
      :dryRun,
      :clientToken,
      :tagSpecifications,
      :securityGroupIds,
      :vpcId,
      :selfServicePortal,
      :clientConnectOptions,
      :sessionTimeoutHours,
      :clientLoginBannerOptions
    ) = object;
    if (clientCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('ClientCidrBlock'))
        ..add(serializers.serialize(
          clientCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (serverCertificateArn != null) {
      result$
        ..add(const _i1.XmlElementName('ServerCertificateArn'))
        ..add(serializers.serialize(
          serverCertificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (authenticationOptions != null) {
      result$
        ..add(const _i1.XmlElementName('Authentication'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          authenticationOptions,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(ClientVpnAuthenticationRequest)],
          ),
        ));
    }
    if (connectionLogOptions != null) {
      result$
        ..add(const _i1.XmlElementName('ConnectionLogOptions'))
        ..add(serializers.serialize(
          connectionLogOptions,
          specifiedType: const FullType(ConnectionLogOptions),
        ));
    }
    if (dnsServers != null) {
      result$
        ..add(const _i1.XmlElementName('DnsServers'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dnsServers,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (transportProtocol != null) {
      result$
        ..add(const _i1.XmlElementName('TransportProtocol'))
        ..add(serializers.serialize(
          transportProtocol,
          specifiedType: const FullType.nullable(TransportProtocol),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('VpnPort'))
      ..add(serializers.serialize(
        vpnPort,
        specifiedType: const FullType(int),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('SplitTunnel'))
      ..add(serializers.serialize(
        splitTunnel,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    if (securityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (selfServicePortal != null) {
      result$
        ..add(const _i1.XmlElementName('SelfServicePortal'))
        ..add(serializers.serialize(
          selfServicePortal,
          specifiedType: const FullType.nullable(SelfServicePortal),
        ));
    }
    if (clientConnectOptions != null) {
      result$
        ..add(const _i1.XmlElementName('ClientConnectOptions'))
        ..add(serializers.serialize(
          clientConnectOptions,
          specifiedType: const FullType(ClientConnectOptions),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('SessionTimeoutHours'))
      ..add(serializers.serialize(
        sessionTimeoutHours,
        specifiedType: const FullType(int),
      ));
    if (clientLoginBannerOptions != null) {
      result$
        ..add(const _i1.XmlElementName('ClientLoginBannerOptions'))
        ..add(serializers.serialize(
          clientLoginBannerOptions,
          specifiedType: const FullType(ClientLoginBannerOptions),
        ));
    }
    return result$;
  }
}
