// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

/// {@template aws_common.http.alpn_protocol}
/// TLS Application-Layer Protocol Negotiation Protocol IDs.
///
/// From: https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids
/// {@endtemplate}
enum AlpnProtocol {
  /// HTTP/1.1
  @JsonValue('http/1.1')
  http1_1('http/1.1'),

  /// HTTP/2 over TLS
  @JsonValue('h2')
  http2('h2'),

  /// HTTP/3
  @JsonValue('h3')
  http3('h3');

  /// {@macro aws_common.http.alpn_protocol}
  const AlpnProtocol(this.value);

  /// The protocol identifier value.
  final String value;
}

/// Protocols supported by an [AWSHttpClient].
enum SupportedProtocols {
  /// Supports only HTTP/1.1 servers.
  ///
  /// This can be used as a fallback when the protocol switching logic is not
  /// behaving as expected.
  http1._([AlpnProtocol.http1_1]),

  /// Supports HTTP/2 and HTTP/3 servers.
  ///
  /// **Note**: Currently this only supports HTTP/3 on the Web via `fetch`.
  /// HTTP/3 is not supported on VM.
  http2_3._([AlpnProtocol.http2, AlpnProtocol.http3]),

  /// Support HTTP/1.1, HTTP/2, and HTTP/3 servers.
  ///
  /// **Note**: Currently this only supports HTTP/3 on the Web via `fetch`.
  /// HTTP/3 is not supported on VM.
  http1_2_3._([
    AlpnProtocol.http1_1,
    AlpnProtocol.http2,
    AlpnProtocol.http3,
  ]);

  const SupportedProtocols._(this.protocols);

  /// The list of ALPN protocols supported by `this`.
  final List<AlpnProtocol> protocols;

  /// The list of ALPN values supported by `this`, used when negotiating
  /// connection with a server.
  List<String> get alpnValues =>
      protocols.map((protocol) => protocol.value).toList();

  /// Whether `this` supports the HTTP [protocol].
  bool supports(AlpnProtocol protocol) {
    return protocols.contains(protocol);
  }
}
