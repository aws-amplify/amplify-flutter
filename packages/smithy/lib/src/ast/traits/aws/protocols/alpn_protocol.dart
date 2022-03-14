import 'package:json_annotation/json_annotation.dart';

/// TLS Application-Layer Protocol Negotiation Protocol IDs.
///
/// From: https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids
enum AlpnProtocol {
  @JsonValue('http/0.9')
  http0_9,

  @JsonValue('http/1.0')
  http1_0,

  @JsonValue('http/1.1')
  http1_1,

  @JsonValue('spdy/1')
  spdy1,

  @JsonValue('spdy/2')
  spdy2,

  @JsonValue('spdy/3')
  spdy3,

  @JsonValue('stun.turn')
  stunTurn,

  @JsonValue('stun.nat.discovery')
  stunNatDiscovery,

  @JsonValue('h2')
  http2,

  @JsonValue('h2c')
  http2Tcp,

  @JsonValue('webrtc')
  webRtc,

  @JsonValue('c-webrtc')
  confidentialWebRtc,

  @JsonValue('ftp')
  ftp,

  @JsonValue('imap')
  imap,

  @JsonValue('pop3')
  pop3,

  @JsonValue('managesieve')
  manageSieve,

  @JsonValue('coap')
  coap,

  @JsonValue('xmpp-client')
  xmppClient,

  @JsonValue('xmpp-server')
  xmppServer,

  @JsonValue('acme-tls/1')
  acmeTls,

  @JsonValue('mqtt')
  mqtt,

  @JsonValue('dot')
  dnsOverTls,

  @JsonValue('ntske/1')
  nstke,

  @JsonValue('sunrpc')
  sunRpc,

  @JsonValue('h3')
  http3,

  @JsonValue('smb')
  smb,

  @JsonValue('irc')
  irc,

  @JsonValue('nntp')
  nntpReading,

  @JsonValue('nnsp')
  nntpTransit,

  unknown,
}
