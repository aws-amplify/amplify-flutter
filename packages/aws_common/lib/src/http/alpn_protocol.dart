// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
  http1,

  /// Supports HTTP/2 and HTTP/3 servers.
  ///
  /// **Note**: Currently this only supports HTTP/3 on the Web via `fetch`.
  /// HTTP/3 is not supoprted on VM.
  http2_3,

  /// Support HTTP/1.1, HTTP/2, and HTTP/3 servers.
  ///
  /// **Note**: Currently this only supports HTTP/3 on the Web via `fetch`.
  /// HTTP/3 is not supported on VM.
  http1_2_3;

  /// Whether `this` supports the HTTP [protocol].
  bool supports(AlpnProtocol protocol) {
    switch (protocol) {
      case AlpnProtocol.http1_1:
        return this == SupportedProtocols.http1_2_3 ||
            this == SupportedProtocols.http1;
      case AlpnProtocol.http2:
        return this == SupportedProtocols.http1_2_3 ||
            this == SupportedProtocols.http2_3;
      case AlpnProtocol.http3:
        return this == SupportedProtocols.http1_2_3 ||
            this == SupportedProtocols.http2_3;
    }
  }

  /// The list of ALPN values supported by `this`, used when negotiating
  /// connection with a server.
  List<String> get alpnValues => [
        if (supports(AlpnProtocol.http1_1)) AlpnProtocol.http1_1.value,
        if (supports(AlpnProtocol.http2)) AlpnProtocol.http2.value,
        if (supports(AlpnProtocol.http3)) AlpnProtocol.http3.value,
      ];
}
