// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_json_1_1_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsJson1_1Trait _$AwsJson1_1TraitFromJson(Map<String, dynamic> json) =>
    AwsJson1_1Trait(
      http: (json['http'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e,
                  unknownValue: AlpnProtocol.unknown))
              .toList() ??
          AWSProtocolTrait.defaultHttpProtocols,
      eventStreamHttp: (json['eventStreamHttp'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e,
              unknownValue: AlpnProtocol.unknown))
          .toList(),
    );

Map<String, dynamic> _$AwsJson1_1TraitToJson(AwsJson1_1Trait instance) =>
    <String, dynamic>{
      'http': instance.http.map((e) => _$AlpnProtocolEnumMap[e]!).toList(),
      'eventStreamHttp': instance.eventStreamHttp
          .map((e) => _$AlpnProtocolEnumMap[e]!)
          .toList(),
    };

const _$AlpnProtocolEnumMap = {
  AlpnProtocol.http0_9: 'http/0.9',
  AlpnProtocol.http1_0: 'http/1.0',
  AlpnProtocol.http1_1: 'http/1.1',
  AlpnProtocol.spdy1: 'spdy/1',
  AlpnProtocol.spdy2: 'spdy/2',
  AlpnProtocol.spdy3: 'spdy/3',
  AlpnProtocol.stunTurn: 'stun.turn',
  AlpnProtocol.stunNatDiscovery: 'stun.nat.discovery',
  AlpnProtocol.http2: 'h2',
  AlpnProtocol.http2Tcp: 'h2c',
  AlpnProtocol.webRtc: 'webrtc',
  AlpnProtocol.confidentialWebRtc: 'c-webrtc',
  AlpnProtocol.ftp: 'ftp',
  AlpnProtocol.imap: 'imap',
  AlpnProtocol.pop3: 'pop3',
  AlpnProtocol.manageSieve: 'managesieve',
  AlpnProtocol.coap: 'coap',
  AlpnProtocol.xmppClient: 'xmpp-client',
  AlpnProtocol.xmppServer: 'xmpp-server',
  AlpnProtocol.acmeTls: 'acme-tls/1',
  AlpnProtocol.mqtt: 'mqtt',
  AlpnProtocol.dnsOverTls: 'dot',
  AlpnProtocol.nstke: 'ntske/1',
  AlpnProtocol.sunRpc: 'sunrpc',
  AlpnProtocol.http3: 'h3',
  AlpnProtocol.smb: 'smb',
  AlpnProtocol.irc: 'irc',
  AlpnProtocol.nntpReading: 'nntp',
  AlpnProtocol.nntpTransit: 'nnsp',
  AlpnProtocol.unknown: 'unknown',
};
