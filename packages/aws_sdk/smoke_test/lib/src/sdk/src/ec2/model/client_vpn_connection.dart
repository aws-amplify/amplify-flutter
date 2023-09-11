// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status.dart';

part 'client_vpn_connection.g.dart';

/// Describes a client connection.
abstract class ClientVpnConnection
    with _i1.AWSEquatable<ClientVpnConnection>
    implements Built<ClientVpnConnection, ClientVpnConnectionBuilder> {
  /// Describes a client connection.
  factory ClientVpnConnection({
    String? clientVpnEndpointId,
    String? timestamp,
    String? connectionId,
    String? username,
    String? connectionEstablishedTime,
    String? ingressBytes,
    String? egressBytes,
    String? ingressPackets,
    String? egressPackets,
    String? clientIp,
    String? commonName,
    ClientVpnConnectionStatus? status,
    String? connectionEndTime,
    List<String>? postureComplianceStatuses,
  }) {
    return _$ClientVpnConnection._(
      clientVpnEndpointId: clientVpnEndpointId,
      timestamp: timestamp,
      connectionId: connectionId,
      username: username,
      connectionEstablishedTime: connectionEstablishedTime,
      ingressBytes: ingressBytes,
      egressBytes: egressBytes,
      ingressPackets: ingressPackets,
      egressPackets: egressPackets,
      clientIp: clientIp,
      commonName: commonName,
      status: status,
      connectionEndTime: connectionEndTime,
      postureComplianceStatuses: postureComplianceStatuses == null
          ? null
          : _i2.BuiltList(postureComplianceStatuses),
    );
  }

  /// Describes a client connection.
  factory ClientVpnConnection.build(
          [void Function(ClientVpnConnectionBuilder) updates]) =
      _$ClientVpnConnection;

  const ClientVpnConnection._();

  static const List<_i3.SmithySerializer<ClientVpnConnection>> serializers = [
    ClientVpnConnectionEc2QuerySerializer()
  ];

  /// The ID of the Client VPN endpoint to which the client is connected.
  String? get clientVpnEndpointId;

  /// The current date and time.
  String? get timestamp;

  /// The ID of the client connection.
  String? get connectionId;

  /// The username of the client who established the client connection. This information is only provided if Active Directory client authentication is used.
  String? get username;

  /// The date and time the client connection was established.
  String? get connectionEstablishedTime;

  /// The number of bytes sent by the client.
  String? get ingressBytes;

  /// The number of bytes received by the client.
  String? get egressBytes;

  /// The number of packets sent by the client.
  String? get ingressPackets;

  /// The number of packets received by the client.
  String? get egressPackets;

  /// The IP address of the client.
  String? get clientIp;

  /// The common name associated with the client. This is either the name of the client certificate, or the Active Directory user name.
  String? get commonName;

  /// The current state of the client connection.
  ClientVpnConnectionStatus? get status;

  /// The date and time the client connection was terminated.
  String? get connectionEndTime;

  /// The statuses returned by the client connect handler for posture compliance, if applicable.
  _i2.BuiltList<String>? get postureComplianceStatuses;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        timestamp,
        connectionId,
        username,
        connectionEstablishedTime,
        ingressBytes,
        egressBytes,
        ingressPackets,
        egressPackets,
        clientIp,
        commonName,
        status,
        connectionEndTime,
        postureComplianceStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnConnection')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'timestamp',
        timestamp,
      )
      ..add(
        'connectionId',
        connectionId,
      )
      ..add(
        'username',
        username,
      )
      ..add(
        'connectionEstablishedTime',
        connectionEstablishedTime,
      )
      ..add(
        'ingressBytes',
        ingressBytes,
      )
      ..add(
        'egressBytes',
        egressBytes,
      )
      ..add(
        'ingressPackets',
        ingressPackets,
      )
      ..add(
        'egressPackets',
        egressPackets,
      )
      ..add(
        'clientIp',
        clientIp,
      )
      ..add(
        'commonName',
        commonName,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'connectionEndTime',
        connectionEndTime,
      )
      ..add(
        'postureComplianceStatuses',
        postureComplianceStatuses,
      );
    return helper.toString();
  }
}

class ClientVpnConnectionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientVpnConnection> {
  const ClientVpnConnectionEc2QuerySerializer() : super('ClientVpnConnection');

  @override
  Iterable<Type> get types => const [
        ClientVpnConnection,
        _$ClientVpnConnection,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'connectionId':
          result.connectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'username':
          result.username = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'connectionEstablishedTime':
          result.connectionEstablishedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ingressBytes':
          result.ingressBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'egressBytes':
          result.egressBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ingressPackets':
          result.ingressPackets = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'egressPackets':
          result.egressPackets = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientIp':
          result.clientIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'commonName':
          result.commonName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnConnectionStatus),
          ) as ClientVpnConnectionStatus));
        case 'connectionEndTime':
          result.connectionEndTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'postureComplianceStatusSet':
          result.postureComplianceStatuses
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientVpnConnection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ClientVpnConnectionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnConnection(
      :clientVpnEndpointId,
      :timestamp,
      :connectionId,
      :username,
      :connectionEstablishedTime,
      :ingressBytes,
      :egressBytes,
      :ingressPackets,
      :egressPackets,
      :clientIp,
      :commonName,
      :status,
      :connectionEndTime,
      :postureComplianceStatuses
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i3.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType(String),
        ));
    }
    if (connectionId != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionId'))
        ..add(serializers.serialize(
          connectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (username != null) {
      result$
        ..add(const _i3.XmlElementName('Username'))
        ..add(serializers.serialize(
          username,
          specifiedType: const FullType(String),
        ));
    }
    if (connectionEstablishedTime != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionEstablishedTime'))
        ..add(serializers.serialize(
          connectionEstablishedTime,
          specifiedType: const FullType(String),
        ));
    }
    if (ingressBytes != null) {
      result$
        ..add(const _i3.XmlElementName('IngressBytes'))
        ..add(serializers.serialize(
          ingressBytes,
          specifiedType: const FullType(String),
        ));
    }
    if (egressBytes != null) {
      result$
        ..add(const _i3.XmlElementName('EgressBytes'))
        ..add(serializers.serialize(
          egressBytes,
          specifiedType: const FullType(String),
        ));
    }
    if (ingressPackets != null) {
      result$
        ..add(const _i3.XmlElementName('IngressPackets'))
        ..add(serializers.serialize(
          ingressPackets,
          specifiedType: const FullType(String),
        ));
    }
    if (egressPackets != null) {
      result$
        ..add(const _i3.XmlElementName('EgressPackets'))
        ..add(serializers.serialize(
          egressPackets,
          specifiedType: const FullType(String),
        ));
    }
    if (clientIp != null) {
      result$
        ..add(const _i3.XmlElementName('ClientIp'))
        ..add(serializers.serialize(
          clientIp,
          specifiedType: const FullType(String),
        ));
    }
    if (commonName != null) {
      result$
        ..add(const _i3.XmlElementName('CommonName'))
        ..add(serializers.serialize(
          commonName,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientVpnConnectionStatus),
        ));
    }
    if (connectionEndTime != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectionEndTime'))
        ..add(serializers.serialize(
          connectionEndTime,
          specifiedType: const FullType(String),
        ));
    }
    if (postureComplianceStatuses != null) {
      result$
        ..add(const _i3.XmlElementName('PostureComplianceStatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          postureComplianceStatuses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
