// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@template aws_signature_v4.aws_sig_v4_signed_request}
/// A signed [AWSStreamedHttpRequest].
/// {@endtemplate}
class AWSSignedRequest extends AWSStreamedHttpRequest {
  /// @{macro aws_signature_v4.aws_sig_v4_signed_request}
  AWSSignedRequest({
    required this.canonicalRequest,
    required this.signature,
    required super.method,
    required super.host,
    super.port,
    required super.path,
    Map<String, String>? super.queryParameters,
    super.headers,
    required Stream<List<int>> super.body,
    super.contentLength,
  }) : super.raw();

  /// The canonical request for this request.
  final CanonicalRequest canonicalRequest;

  /// The signature for [canonicalRequest].
  final String signature;
}
