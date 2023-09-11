// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_client_vpn_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_servers_options_modify_structure.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/self_service_portal.dart';

part 'modify_client_vpn_endpoint_request.g.dart';

abstract class ModifyClientVpnEndpointRequest
    with
        _i1.HttpInput<ModifyClientVpnEndpointRequest>,
        _i2.AWSEquatable<ModifyClientVpnEndpointRequest>
    implements
        Built<ModifyClientVpnEndpointRequest,
            ModifyClientVpnEndpointRequestBuilder> {
  factory ModifyClientVpnEndpointRequest({
    String? clientVpnEndpointId,
    String? serverCertificateArn,
    ConnectionLogOptions? connectionLogOptions,
    DnsServersOptionsModifyStructure? dnsServers,
    int? vpnPort,
    String? description,
    bool? splitTunnel,
    bool? dryRun,
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
    return _$ModifyClientVpnEndpointRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      serverCertificateArn: serverCertificateArn,
      connectionLogOptions: connectionLogOptions,
      dnsServers: dnsServers,
      vpnPort: vpnPort,
      description: description,
      splitTunnel: splitTunnel,
      dryRun: dryRun,
      securityGroupIds:
          securityGroupIds == null ? null : _i3.BuiltList(securityGroupIds),
      vpcId: vpcId,
      selfServicePortal: selfServicePortal,
      clientConnectOptions: clientConnectOptions,
      sessionTimeoutHours: sessionTimeoutHours,
      clientLoginBannerOptions: clientLoginBannerOptions,
    );
  }

  factory ModifyClientVpnEndpointRequest.build(
          [void Function(ModifyClientVpnEndpointRequestBuilder) updates]) =
      _$ModifyClientVpnEndpointRequest;

  const ModifyClientVpnEndpointRequest._();

  factory ModifyClientVpnEndpointRequest.fromRequest(
    ModifyClientVpnEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyClientVpnEndpointRequest>>
      serializers = [ModifyClientVpnEndpointRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyClientVpnEndpointRequestBuilder b) {
    b
      ..vpnPort = 0
      ..splitTunnel = false
      ..dryRun = false
      ..sessionTimeoutHours = 0;
  }

  /// The ID of the Client VPN endpoint to modify.
  String? get clientVpnEndpointId;

  /// The ARN of the server certificate to be used. The server certificate must be provisioned in Certificate Manager (ACM).
  String? get serverCertificateArn;

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

  /// Information about the DNS servers to be used by Client VPN connections. A Client VPN endpoint can have up to two DNS servers.
  DnsServersOptionsModifyStructure? get dnsServers;

  /// The port number to assign to the Client VPN endpoint for TCP and UDP traffic.
  ///
  /// Valid Values: `443` | `1194`
  ///
  /// Default Value: `443`
  int get vpnPort;

  /// A brief description of the Client VPN endpoint.
  String? get description;

  /// Indicates whether the VPN is split-tunnel.
  ///
  /// For information about split-tunnel VPN endpoints, see [Split-tunnel Client VPN endpoint](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html) in the _Client VPN Administrator Guide_.
  bool get splitTunnel;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of one or more security groups to apply to the target network.
  _i3.BuiltList<String>? get securityGroupIds;

  /// The ID of the VPC to associate with the Client VPN endpoint.
  String? get vpcId;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint.
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
  ModifyClientVpnEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        serverCertificateArn,
        connectionLogOptions,
        dnsServers,
        vpnPort,
        description,
        splitTunnel,
        dryRun,
        securityGroupIds,
        vpcId,
        selfServicePortal,
        clientConnectOptions,
        sessionTimeoutHours,
        clientLoginBannerOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyClientVpnEndpointRequest')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'serverCertificateArn',
        serverCertificateArn,
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

class ModifyClientVpnEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyClientVpnEndpointRequest> {
  const ModifyClientVpnEndpointRequestEc2QuerySerializer()
      : super('ModifyClientVpnEndpointRequest');

  @override
  Iterable<Type> get types => const [
        ModifyClientVpnEndpointRequest,
        _$ModifyClientVpnEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyClientVpnEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyClientVpnEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ServerCertificateArn':
          result.serverCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConnectionLogOptions':
          result.connectionLogOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectionLogOptions),
          ) as ConnectionLogOptions));
        case 'DnsServers':
          result.dnsServers.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DnsServersOptionsModifyStructure),
          ) as DnsServersOptionsModifyStructure));
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
    ModifyClientVpnEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyClientVpnEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyClientVpnEndpointRequest(
      :clientVpnEndpointId,
      :serverCertificateArn,
      :connectionLogOptions,
      :dnsServers,
      :vpnPort,
      :description,
      :splitTunnel,
      :dryRun,
      :securityGroupIds,
      :vpcId,
      :selfServicePortal,
      :clientConnectOptions,
      :sessionTimeoutHours,
      :clientLoginBannerOptions
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
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
        ..add(serializers.serialize(
          dnsServers,
          specifiedType: const FullType(DnsServersOptionsModifyStructure),
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
    if (securityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType(
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
          specifiedType: const FullType(SelfServicePortal),
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
