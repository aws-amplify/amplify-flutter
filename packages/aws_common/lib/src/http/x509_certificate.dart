// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Largely copied from Dart SDK to remove `dart:io` dependency.

import 'dart:typed_data';

/// Callback for VM clients when an SSL handshake fails due to an untrusted
/// certificate chain.
///
/// Returning `true` allows the connection proceed regardless.
typedef BadCertificateCallback = bool Function(
  X509Certificate,
  String host,
  int port,
);

/// {@template aws_http.x509_certificate}
/// X509Certificate represents an SSL certificate, with accessors to
/// get the fields of the certificate.
/// {@endtemplate}
class X509Certificate {
  /// {@macro aws_http.x509_certificate}
  const X509Certificate({
    required this.der,
    required this.pem,
    required this.sha1,
    required this.subject,
    required this.issuer,
    required this.startValidity,
    required this.endValidity,
  });

  /// The DER encoded bytes of the certificate.
  final Uint8List der;

  /// The PEM encoded String of the certificate.
  final String pem;

  /// The SHA1 hash of the certificate.
  final Uint8List sha1;

  /// The subject name of the certificate.
  final String subject;

  /// The issuer of the certificate.
  final String issuer;

  /// The start date for which the certificate is valid.
  final DateTime startValidity;

  /// The end date until which the certificate is valid.
  final DateTime endValidity;
}
